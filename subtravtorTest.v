`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:05:55 12/23/2019
// Design Name:   subtractor_8bit
// Module Name:   C:/Users/shaghayegh/Desktop/logic/LogicFirstPhase/LogicCircuitDesignProjectFirstPhase/subtravtorTest.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: subtractor_8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module subtravtorTest;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [7:0] s;

	// Instantiate the Unit Under Test (UUT)
	subtractor_8bit uut (
		.a(a), 
		.b(b), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 8'b00000010;
		b = 8'b00000001;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

