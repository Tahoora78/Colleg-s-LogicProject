`timescale 1ns / 1ps
`default_nettype none

/*
**********************************************************
** Logic Design Final Project Fall, 2019 Semester
** Amirkabir University of Technology (Tehran Polytechnic)
** Department of Computer Engineering (CEIT-AUT)
** Logic Circuit Design Laboratory
** https://ceit.aut.ac.ir
**********************************************************
** Student ID: XXXXXXX
** Student ID: XXXXXXX
**********************************************************
** Module Name: InformationController
**********************************************************
** Additional Comments:
*/

module InformationController(
        clock,
        request,key,
	 	confirm,
	 	password,
	 	user,
	 	writeRegP,
	 	writeRegQ);

input user;
input clock;
input request;
input confirm;
input [7:0] password;
input [7:0] key;

output writeRegP;
output writeRegQ;
	
	
	parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100, S5 = 3'b101, S6 = 3'b110;
	parameter pass = 4'b1111;
	reg [2:0]  nextstate;
	reg writeRegP;
	reg writeRegQ;
	
		
	always @(posedge clock)
		case (nextstate)
			S0: if (request) nextstate = S1;
				else nextstate = S0;
			S1: begin 
			if (user == password && confirm) nextstate = S3; 
				else if({confirm, request} == 2'b11 ) nextstate = S2;
				else if({confirm, request} == 2'b01 ) nextstate = S1;
				else nextstate = S0;
				end
			S3: begin
			if ({confirm, request} == 2'b11 ) nextstate = S4;
			else if({confirm, request} == 2'b01 ) nextstate = S3;
			else nextstate = S0;
			end
			S4 : begin if ({key[7], request} == 2'b01 ) nextstate = S5;
				else if({key[7], request} == 2'b11 )nextstate = S6;
				else nextstate = S0;
				end
			S5 : if(request == 0)nextstate = S0;
			else nextstate = S5;
			S6 : if(request == 0)nextstate = S0;
			else nextstate = S6;
			default: nextstate = S0; 
			endcase
			
			
always @(posedge clock)
		case(nextstate)
			S0: {writeRegP, writeRegQ} = 2'b00; 
			S5: {writeRegP, writeRegQ} = 2'b10;  
			S6: {writeRegP, writeRegQ} = 2'b01;
			default: {writeRegP, writeRegQ} = 2'b00; 
			endcase
	// write your code here, please.
	
endmodule