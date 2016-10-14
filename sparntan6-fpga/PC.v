`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:02:07 08/31/2016 
// Design Name: 
// Module Name:    PC 
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
module PC(clk, br_taken, X, pc_plus_1, pc, rst);
	input clk;
	input br_taken;
	input rst;
	
	input [7:0] X;
	input [7:0] pc_plus_1;
	
	output [7:0] pc;
	
	reg [7:0] reg_pc;
	assign pc = reg_pc;
	
	// always @(*)
	// begin
		// if (rst == 1)
			// reg_pc <= 0;
	// end
	
	always @(*)
	begin
		if (clk) begin
			if (rst == 1)
				reg_pc = 0;
			else begin
				if (br_taken)
					reg_pc = X;
				else
					reg_pc = pc_plus_1;
			end
		end
	end
endmodule