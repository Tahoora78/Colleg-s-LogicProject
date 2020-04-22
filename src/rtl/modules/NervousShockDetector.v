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
** Module Name: NervousShockDetector
**********************************************************
** Additional Comments:
*/

module NervousShockDetector(
        clock,
        inputdata,
	 	nervousAbnormality);

input clock;
input inputdata;
output [1:0] nervousAbnormality;
	
	reg [1:0] nervousAbnormality;
	reg [4:0] Prstate , Nxtstate;
	parameter S0 = 5'b00000, S1 = 5'b00001, S2 = 5'b00010, S3 = 5'b00011 , S4 = 5'b00100, S5 = 5'b00101, S6 = 5'b00110, S7 = 5'b00111
	,S8 = 5'b01000, S9 = 5'b01001, S10 = 5'b01010, S11 = 5'b01011 , S12 = 5'b01100, S13 = 5'b01101, S14 = 5'b01110, S15 = 5'b01111
	,S16 = 5'b10000, S17 = 5'b10001;
	always @ (posedge clock)
		Prstate = Nxtstate;
	always @ (Prstate or inputdata)     //Determine next state
         case (Prstate)
            S0: if (inputdata) Nxtstate = S1;
					else Nxtstate = S0;
            S1: if (inputdata) Nxtstate = S1;				
                  else Nxtstate = S2;
            S2: if (inputdata)Nxtstate = S3;
					else Nxtstate = S12;
            S3: if (inputdata) Nxtstate = S1;  
                  else Nxtstate = S4;
				S4: if (inputdata) Nxtstate = S5;  
                  else Nxtstate = S12;
				S5: if (inputdata) Nxtstate = S1;  
                  else Nxtstate = S6;
				S6: if (inputdata) Nxtstate = S7;  
                  else Nxtstate = S12;
				S7: if (inputdata) Nxtstate = S10;  
                  else Nxtstate = S8;
				S8: if (inputdata) Nxtstate = S9;  
                  else Nxtstate = S12;
				S9: if (inputdata) Nxtstate = S10;  
                  else Nxtstate = S8;
				S10: if (inputdata) Nxtstate = S10;  
                  else Nxtstate = S2;
				S11: if (inputdata) Nxtstate = S1;  
                  else Nxtstate = S2;	
				S12: if (inputdata) Nxtstate = S13;  
                  else Nxtstate = S0;
				S13: if (inputdata) Nxtstate = S1;  
                  else Nxtstate = S14;
				S14: if (inputdata) Nxtstate = S1;  
                  else Nxtstate = S15;
				S15: if (inputdata) Nxtstate = S16;  
                  else Nxtstate = S0;
				S16: if (inputdata) Nxtstate = S1;  
                  else Nxtstate = S17;
				S17: if (inputdata) Nxtstate = S1;  
                  else Nxtstate = S0;
				default Nxtstate = S0;			
         endcase
		always @ (Prstate or inputdata)     //Evaluate output
         case (Prstate)
            S0: nervousAbnormality = 2'b00;
            S1: nervousAbnormality = 2'b00;
				S2: nervousAbnormality = 2'b00;
				S3: nervousAbnormality = 2'b00;
				S4: nervousAbnormality = 2'b00;
				S5: nervousAbnormality = 2'b00;
				S6: nervousAbnormality = 2'b00;
				S7: nervousAbnormality = 2'b00;
				S8: nervousAbnormality = 2'b00;
				S9: if (inputdata) nervousAbnormality = 2'b00; else nervousAbnormality = 2'b11;
				S10: nervousAbnormality = 2'b00;
				S11: if (inputdata) nervousAbnormality = 2'b00; else nervousAbnormality = 2'b10;
				S12: nervousAbnormality = 2'b00;
				S13: nervousAbnormality = 2'b00;
				S14: nervousAbnormality = 2'b00;
				S15: nervousAbnormality = 2'b00;
				S16: nervousAbnormality = 2'b00;
				S17: if (inputdata) nervousAbnormality = 2'b00; else nervousAbnormality = 2'b01;
				default nervousAbnormality = 2'b00;
			endcase
	

endmodule
