`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:47:56 12/23/2019
// Design Name:   GlycemicIndexCalculator
// Module Name:   C:/Users/shaghayegh/Desktop/logic/LogicFirstPhase/LogicCircuitDesignProjectFirstPhase/glyIndexTest.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GlycemicIndexCalculator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module glyIndexTest;

	// Inputs
	reg [7:0] bloodSensor;

	// Outputs
	wire [3:0] glycemicIndex;

	// Instantiate the Unit Under Test (UUT)
	GlycemicIndexCalculator uut (
		.bloodSensor(bloodSensor), 
		.glycemicIndex(glycemicIndex)
	);

	initial begin
		// Initialize Inputs
		bloodSensor = 8'b00000001;

		// Wait 100 ns for global reset to finish
		#100;
      bloodSensor = 8'b11111111;  
		// Add stimulus here

	end
      
endmodule

