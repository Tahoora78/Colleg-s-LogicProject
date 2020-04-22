`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:48 12/16/2019 
// Design Name: 
// Module Name:    CountingOnes 
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
module CountingOnes(
    a,
    y
    );
	input [7:0] a;
	output [3:0]y;
	wire [14:0]s;
	wire [5:0]c;
	
	full_adder f1(a[1], a[2], a[0], c[0], s[0]);
	full_adder_2bit f2({c[0],s[0]}, {0, a[3]}, 0, c[1], {s[2], s[1]});
	full_adder_3bit f3({c[1], s[2], s[1]}, {0, 0, a[4]}, 0, c[2], {s[5],s[4],s[3]});
	full_adder_3bit f4({s[5],s[4],s[3]}, {0, 0, a[5]}, 0, c[3], {s[8], s[7], s[6]});
	full_adder_3bit f5({s[8], s[7], s[6]}, {0, 0, a[6]}, 0, c[4], {s[11],s[10],s[9]});
	full_adder_3bit f6({s[11],s[10],s[9]}, {0,0,a[7]},0, c[5],{s[14],s[13],s[12]});
	assign y[0] = s[12];
	assign y[1] = s[13];
	assign y[2] = s[14];
	assign y[3] = c[5];
	
	 
	
	
	

endmodule
