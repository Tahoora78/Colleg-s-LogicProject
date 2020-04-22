
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
** Module Name: Comparator8Bit
**********************************************************
** Additional Comments:
*/

module Comparator8Bit(
        inputP,
        inputQ,
        pLessThanQ,
        pEqualToQ,
        pGraterGreaterThanQ
        );
input [7:0] inputP;
input [7:0] inputQ;
output pLessThanQ;
output pEqualToQ;
output pGraterGreaterThanQ;

   wire w[5:0];
	 comparator3bit g1(inputP[1:0], inputP[2], inputQ[1:0], inputQ[2], 1'b0, 1'b1, 1'b0, w[2], w[1], w[0]);
	 comparator3bit g2(inputP[4:3], inputP[5], inputQ[4:3], inputQ[5], w[2], w[1], w[0], w[5], w[4], w[3]);
	 comparator3bit g3(inputP[7:6], 1'b0, inputQ[7:6], 1'b0, w[2], w[1], w[0], pLessThanQ, pEqualToQ, pGraterGreaterThanQ);


endmodule
