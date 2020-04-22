`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:17 12/16/2019 
// Design Name: 
// Module Name:    subtractor_8bit 
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
module subtractor_8bit(
    input [7:0] a,
    input [7:0] b,
    output [7:0] s
    );
		wire  [7:0]bComp;
		wire carry_1, carry_2;
	
	
	full_adder_8bit f1(b,8'b00000001,carry_1,bComp);
	full_adder_8bit f2(a, bComp, carry_2, s);
endmodule
