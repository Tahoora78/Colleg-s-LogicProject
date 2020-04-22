`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:28:03 12/16/2019 
// Design Name: 
// Module Name:    full_adder_2bit 
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
module full_adder_2bit(
    input [1:0] a,
    input [1:0] b,
	 input cin,
    output cout,
    output [1:0] s
    );
	wire w;
	full_adder f1(a[0],b[0],cin,w,s[0]);
	full_adder f2(a[1],b[1],w,cout,s[1]);

endmodule
