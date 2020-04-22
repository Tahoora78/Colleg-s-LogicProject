`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:40:27 01/23/2020
// Design Name:   NervousShockDetector
// Module Name:   D:/final logic project/NervousCheckTest.v
// Project Name:  logicdesignproject-healthcaresystem
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NervousShockDetector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module NervousCheckTest;

	// Inputs
	reg clock;
	reg inputdata;

	// Outputs
	wire [1:0] nervousAbnormality;

	// Instantiate the Unit Under Test (UUT)
	NervousShockDetector uut (
		.clock(clock), 
		.inputdata(inputdata), 
		.nervousAbnormality(nervousAbnormality)
	);

	initial begin
		// Initialize Inputs
			
      clock = 1'b0;
		inputdata = 1;
		#10;
		inputdata = 0;
		#10;
		inputdata = 1;
		#10;
		inputdata = 0;
		#10;
		inputdata = 1;
		#10;
		inputdata = 0;
		#10;
		inputdata = 1;
		#10;
		inputdata = 0;
		#10;
		inputdata = 1;
		#10;
		inputdata = 0;
		// Wait 100 ns for global reset to finish
		always
				#10 clk = ~clk;
		// Add stimulus here

	end
      
endmodule

