`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:59:42 12/23/2019
// Design Name:   full_adder_8bit
// Module Name:   D:/logic circuit project/logic/LogicFirstPhase/LogicCircuitDesignProjectFirstPhase/adder8_bitTest.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder_8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder8_bitTest;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire cout;
	wire [7:0] s;

	// Instantiate the Unit Under Test (UUT)
	full_adder_8bit uut (
		.a(a), 
		.b(b), 
		.cout(cout), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 8'b00011110;
		b = 8'b00000001;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 8'b00100011;
		b = 8'b00000100;

		// Wait 100 ns for global reset to finish
		#100;
        
	end
      
endmodule

