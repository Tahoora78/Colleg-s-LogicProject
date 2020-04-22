`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:13:14 12/15/2019 
// Design Name: 
// Module Name:    comparato8_bt 
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
module comparator8_bit(
    input [7:0] a,
    input [7:0] b,
    output lt,
    output eq,
    output gt
    );
	 wire w[5:0];
	 comparator3bit g1(a[1:0], a[2], b[1:0], b[2], 1'b0, 1'b1, 1b'0, w[2], w[1], w[0]);
	 comparator3bit g2(a[4:3], a[5], b[4:3], b[5], w[2], w[1], w[0], w[5], w[4], w[3]);
	 comparator3bit g3(a[7:6], 1'b0, b[7:6], 1'b0, w[2], w[1], w[0], lt, eq, gt);

endmodule

