`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:31:56 12/16/2019 
// Design Name: 
// Module Name:    full_adder_3bit 
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
module full_adder_3bit(
    input [2:0] a,
    input [2:0] b,
    input cin,
    output cout,
    output [2:0] s
    );
	wire [1:0]w;
	full_adder f1(a[0],b[0],cin,w[0],s[0]);
	full_adder f2(a[1],b[1],w[0],w[1],s[1]);
	full_adder f3(a[2],b[2],w[1],cout,s[2]);
		


endmodule
