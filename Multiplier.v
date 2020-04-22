`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:46:56 12/16/2019 
// Design Name: 
// Module Name:    Multiplier 
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
module Multiplier(
    input [3:0]a,
	 input [3:0]b,
	 output [7:0]y
	 
	 );

	wire sum_1[2:0];
	wire sum_2[2:0];
	wire carry_1;
	wire carry_2;
	

	assign y[0] = a[0]&b[0];
	

	full_adder_4bit full_adder_4bit_1({1'b0,a[0]&b[3],a[0]&b[2],a[0]&b[1]},{a[1]&b[3],a[1]&b[2],a[1]&b[1],a[1]&b[0]},1'b0,carry_1,{sum_1[2],sum_1[1],sum_1[0], y[1]});
	 
	
	full_adder_4bit full_adder_4bit_2({carry_1,sum_1[2],sum_1[1],sum_1[0]},{a[2]&b[3],a[2]&b[2],a[2]&b[1],a[2]&b[0]},1'b0,carry_2,{sum_2[2],sum_2[1],sum_2[0], y[2]});
	
	full_adder_4bit full_adder_4bit_3({carry_2,sum_2[2],sum_2[1],sum_2[0]},{a[3]&b[3],a[3]&b[2],a[3]&b[1],a[3]&b[0]},1'b0,y[7],y[6:3]);
	

endmodule

