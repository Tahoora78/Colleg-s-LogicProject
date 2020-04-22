`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:41:44 12/16/2019 
// Design Name: 
// Module Name:    full_adder_8bit 
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
module full_adder_8bit(
    input [7:0] a,
    input [7:0] b,
    output cout,
    output [7:0] s
    );
	wire w;
	full_adder_4bit f1({a[3], a[2],a[1],a[0]},{b[3],b[2], b[1], b[0]},1'b0,w,{s[3], s[2], s[1], s[0]});
	full_adder_4bit f2({a[7], a[6],a[5],a[4]},{b[7],b[6], b[5], b[4]},w,cout,{s[7], s[6], s[5], s[4]});
		

endmodule
