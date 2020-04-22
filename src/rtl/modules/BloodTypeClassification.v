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
** Module Name: BloodTypeClassification
**********************************************************
** Additional Comments:
*/


module BloodTypeClassification(
        bloodType,
        bloodClass);
input [2:0] bloodType;
output bloodClass;
   Mux4_1 m({1'b1, 1'b0, bloodType[0], 1'b0}, {bloodType[2],bloodType[1]},bloodClass);
endmodule
