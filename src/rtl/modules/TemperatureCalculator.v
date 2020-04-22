`timescale 1ns / 1ps
`default_nettype none

/*
**********************************************************
** Logic Design Final Project Fall, 2019 Semester
** Amirkabir University of Technology (Tehran Polytechnic)
** Department of Computer Engineering (CEIT-AUT)
** Logic Circuit Design Laboratory
** https://ceit.aut.ac.ir
**********************************************************
** Student ID: XXXXXXX
** Student ID: XXXXXXX
**********************************************************
** Module Name: TemperatureCalculator
**********************************************************
** Additional Comments:
*/

module TemperatureCalculator(
        factoryBaseTemp,
        factoryTempCoef,
        tempSensorValue,
        temperature);
input [7:0] factoryBaseTemp;
input [3:0] factoryTempCoef;
input [3:0] tempSensorValue;
output [7:0] temperature;

   wire [7:0]multiResult;
	wire carry;

	Multiplier Multiplier_1(tempSensorValue,factoryTempCoef,multiResult);
	
	full_adder_8bit full_adder_8bit_1(factoryBaseTemp,{1'b0,1'b0,1'b0,multiResult[7],multiResult[6],multiResult[5],multiResult[4],multiResult[3]},carry,temperature);
	
	

endmodule
