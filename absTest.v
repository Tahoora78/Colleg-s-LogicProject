`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:58:52 12/23/2019
// Design Name:   AbsoluteCalculator
// Module Name:   C:/Users/shaghayegh/Desktop/logic/LogicFirstPhase/LogicCircuitDesignProjectFirstPhase/absTest.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AbsoluteCalculator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module absTest;

	// Inputs
	reg [7:0] a;

	// Outputs
	wire [7:0] acomp;

	// Instantiate the Unit Under Test (UUT)
	AbsoluteCalculator uut (
		.a(a), 
		.acomp(acomp)
	);

	initial begin
		// Initialize Inputs
		a = 8'b00000001;

		// Wait 100 ns for global reset to finish
		#100;
      a = 8'b11111111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

