`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:28:58 12/08/2021
// Design Name:   jicunqi
// Module Name:   D:/szdl/jicunqi/test.v
// Project Name:  jicunqi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: jicunqi
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [3:0] d;
	reg clk;
	reg oe;
	reg clr;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	jicunqi uut (
		.d(d), 
		.clk(clk), 
		.oe(oe), 
		.clr(clr), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;
		oe = 0;
		clr = 1;

		// Wait 100 ns for global reset to finish
		#100;
		d = 4'b1011;
		oe = 0;
		clr = 0;

		// Wait 100 ns for global reset to finish
		#100;
		d = 4'b1011;
		oe = 0;
		clr = 1;

		// Wait 100 ns for global reset to finish
		#100;
		d = 4'b1001;
		oe = 1;
		clr = 0;

		// Wait 100 ns for global reset to finish
		#100;
		d = 4'b1001;
		oe = 0;
		clr = 0;

		// Wait 100 ns for global reset to finish
		#100;
		d = 4'b1101;
		oe = 0;
		clr = 0;

		// Wait 100 ns for global reset to finish
		#100;
		d = 4'b1111;
		oe = 0;
		clr = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
   always #20 clk = ~clk; 
endmodule

