`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:01:29 08/31/2016 
// Design Name: 
// Module Name:    LATCH 
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
module LATCH (clk, in, out, rst);
	parameter width = 1;
	
	input clk;
	input [width-1:0] in;
	output [width-1:0] out;
	
	input rst;
	
	reg [width-1:0] res;
	assign out = res;
	
	always @(*)
	begin
		if (clk) begin
			if (rst == 1)
				res = 0;
			else
				res = in;
		end
	end
endmodule
