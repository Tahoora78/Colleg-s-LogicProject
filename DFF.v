`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:55:29 01/24/2020 
// Design Name: 
// Module Name:    DFF 
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
module DFF(
    output reg q,
    input d,
    input clk,
    input reset
    );
	 
	
	 always @(posedge clk or negedge reset)
		if(reset == 0)
			q = 1'b0;
		else q = d;
	

endmodule