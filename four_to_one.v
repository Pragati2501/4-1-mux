`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:00:52 09/19/2022 
// Design Name: 
// Module Name:    four_to_one 
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
module four_to_one(y, i0, i1, i2, i3, s0,s1 );
input i0, i1, i2, i3;
input s0, s1;
output y;

assign y = (~s1 & ~s0 & i0)|(~s1 & s0 & i1)|(s1 & ~s0 & i2)|(s1 & s0 & i3);

endmodule
