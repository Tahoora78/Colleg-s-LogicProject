`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:11:08 12/15/2019 
// Design Name: 
// Module Name:    comparator3bit 
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
module comparator3bit(
    input [1:0] a,
	 input a2,
    input [1:0] b,
	 input b2,
    input l,
    input e,
    input g,
    output lt,
    output eq,
    output gt
    );
	wire c[2:0], d[2:0], f[2:0] , h, eq0, gt0, lt0, w1, w2;
	
	xnor x1(c[2],a2,b2);
	xnor x2(c[1],a[1],b[1]);
	xnor x3(c[0],a[0],b[0]);
	
	and a1(eq0, c[0],c[1],c[2]);
	
	not n1(d[0],b[0]);
	not n2(d[1],b[1]);
	not n3(d[2],b2);
	
	and a9(f[2],a2,d[2]);
	and a3(f[1],a[1],d[1],c[2]);
	and a4(f[0],a[0],d[0],c[2],c[1]);
	
	or o1(gt0,f[0],f[1],f[2]);
	
	or a5(h,eq0,gt0);
	xor xo(lt0,h,1);
	
	and a6(eq, eq0, e);
	
	and a7(w1, eq0, g);
	or o2(gt, gt0, w1);
	
	and a8(w2, eq0, l);
	or o3(lt, lt0, w2);
	
endmodule

