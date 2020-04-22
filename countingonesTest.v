`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:56:40 12/23/2019
// Design Name:   CountingOnes
// Module Name:   C:/Users/shaghayegh/Desktop/logic/LogicFirstPhase/LogicCircuitDesignProjectFirstPhase/countingonesTest.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CountingOnes
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module countingonesTest;

	// Inputs
	reg [7:0] a;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	CountingOnes uut (
		.a(a), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 8'b11111111;

		// Wait 100 ns for global reset to finish
		#100;
      a = 8'b10000011;

		// Wait 100 ns for global reset to finish
		#100;  
		// Add stimulus here

	end
      
endmodule

