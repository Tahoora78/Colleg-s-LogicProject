`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:13:15 12/23/2019 
// Design Name: 
// Module Name:    glycemicIndexCalculator 
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
module GlycemicIndexCalculator(
bloodSensor,
glycemicIndex);
input [7:0] bloodSensor;
output [3:0] glycemicIndex;
wire [7:0]abs;
	AbsoluteCalculator absolute_1(bloodSensor, abs);
	CountingOnes counter(abs,glycemicIndex);	

	
endmodule