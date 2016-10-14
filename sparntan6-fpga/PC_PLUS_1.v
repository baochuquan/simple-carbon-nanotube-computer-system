`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:02:37 08/31/2016 
// Design Name: 
// Module Name:    PC_PLUS_1 
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
module PC_PLUS_1 (clk, pc, pc_plus_1, rst);
	input clk;
	input [7:0] pc;
	output [7:0] pc_plus_1;
	input rst;
	
	reg [7:0] res;
	assign pc_plus_1 = res;
	
	// always @(*)
	// begin
		// if (rst == 1)
			// res <= 0;
	// end
	
	always @(*)
	begin
		if (clk) begin
			if (rst == 1)
				res = 0;
			else
				res = pc + 1;
		end
	end
endmodule
