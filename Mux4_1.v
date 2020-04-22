`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:59 12/15/2019 
// Design Name: 
// Module Name:    Mux4_1 
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

module Mux4_1(
    input [3:0] w,
    input [1:0] s,
    output y
    );
	 wire a, b, c, d, e, f;
	 not n1(a, s[0]);
	 not n2(b, s[1]);
	 and g1(c, a, b, w[0]);
	 and g2(d, a, s[1], w[1]);
	 and g3(e, b, s[0], w[2]);
	 and g4(f, s[0], s[1], w[3]);
	 or g5(y, c, d, e, f);


endmodule
