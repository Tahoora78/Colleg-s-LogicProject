`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:43 12/16/2019 
// Design Name: 
// Module Name:    AbsoluteCalculator 
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
module AbsoluteCalculator(
    a,
    acomp
    );
	 input [7:0] a;
	 output [7:0] acomp;
	 wire [7:0] temp;
	 wire extra;
	//subtractor_8bit s(8'b10000000, a, temp);
	full_adder_8bit adderAbsolute(~a, 8'b00000001, extra,temp);
	assign acomp = a[7] ? temp : a;
endmodule
