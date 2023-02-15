`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:07:06 09/19/2022
// Design Name:   four_to_one
// Module Name:   C:/Users/DELL/Documents/newbie/four_to_one/four_to_one_tb.v
// Project Name:  four_to_one
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_to_one
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module four_to_one_tb;

	// Inputs
	reg i0;
	reg i1;
	reg i2;
	reg i3;
	reg s0;
	reg s1;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	four_to_one uut (
		.y(y), 
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.s0(s0), 
		.s1(s1)
	);

	initial begin
		// Initialize Inputs
		i0= 1'b1;
		i1= 1'b0;
		i2= 1'b1;
		i3= 1'b0;
		s0= 1'b0;
		s1= 1'b0;
		#100;
		s0= 1'b1;
		s1= 1'b0;
		#100;
		s0= 1'b0;
		s1= 1'b1;
		#100;
		s0= 1'b1;
		s1= 1'b1;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	initial begin
	$monitor("input i0 = %b, i1 = %b, i2 = %b, i3 = %b, s0 = %b, s1 = %b , output y = %b" , i0 , i1 , i2 , i3 , s0 , s1 , y);
	#400;
	$finish;
	end
      
endmodule

