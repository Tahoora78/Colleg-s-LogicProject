`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:35:08 12/16/2019 
// Design Name: 
// Module Name:    full_adder_4bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module full_adder_4bit(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output cout,
    output [3:0] s
    );
	 wire [2:0]w;
	 full_adder full_adder_1(a[0],b[0],cin,w[0],s[0]);
	 full_adder full_adder_2(a[1],b[1],w[0],w[1],s[1]);
	 full_adder full_adder_3(a[2],b[2],w[1],w[2],s[2]);
	 full_adder full_adder_4(a[3],b[3],w[2],cout,s[3]);
	 
endmodule
