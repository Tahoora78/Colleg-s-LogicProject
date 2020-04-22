`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:59:52 12/16/2019 
// Design Name: 
// Module Name:    Multiplier_2bit 
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
module Multiplier_2bit(
    input [1:0] A,
    input [1:0] B,
    output [3:0] y
    );
	wire [5:0]W;
	wire [3:0]N;
	
	and a1(y[3], A[1], A[0], B[1], B[0]);
	
	not n1(N[3], B[0]);
	not n2(N[2], A[0]);
	and a2(W[5], A[1], B[1], N[3]);
	and a3(W[4], A[1], B[1], N[2]);
	or o1(y[2], W[5], W[4]);
	
	not n3(N[1], A[1]);
	not n4(N[0], B[1]);
	and a4(W[3], N[1], A[0], B[1]);
	and a5(W[2], N[3], A[0], B[1]);
	and a6(W[1], N[0], A[1], B[0]);
	and a7(W[0], N[2], A[1], B[0]);
	or o2(y[1], W[3], W[2],W[1],W[0]);
	
	and a9(y[0], A[0], B[0]);
	
endmodule

