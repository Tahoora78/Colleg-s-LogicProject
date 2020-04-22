`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:51:36 12/23/2019
// Design Name:   TemperatureAnalyzer
// Module Name:   D:/logic circuit project/logic/LogicFirstPhase/LogicCircuitDesignProjectFirstPhase/tempAnalizerTest.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TemperatureAnalyzer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tempAnalizerTest;

	// Inputs
	reg [7:0] temperature;

	// Outputs
	wire temperatureAbnormality;

	// Instantiate the Unit Under Test (UUT)
	TemperatureAnalyzer uut (
		.temperature(temperature), 
		.temperatureAbnormality(temperatureAbnormality)
	);

	initial begin
		// Initialize Inputs
		temperature = 8'b00011111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		 temperature = 8'b00100100;
		 #100;
		 
	end
      
endmodule

