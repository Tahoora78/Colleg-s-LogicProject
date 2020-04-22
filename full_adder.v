`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:31:12 12/16/2019 
// Design Name: 
// Module Name:    full_adder 
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
 module full_adder(
    input a,
    input b,
    input cin,
    output cout,
    output s
    );
	assign cout = ((a|b)&cin)|(a&b);
	xor x1(s,cin,a,b);
	
endmodule
