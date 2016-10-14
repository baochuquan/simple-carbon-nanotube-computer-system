`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:57:10 08/31/2016 
// Design Name: 
// Module Name:    ACC 
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
module ACC(clk, acc_update, X, acc, rst);
	input clk;
	input acc_update;
	input [7:0] X;
	input rst;
	
	output [7:0] acc;
	
	reg [7:0] reg_acc;
	assign acc = reg_acc;
	
	// always @(*)
	// begin
		// if (rst == 1)
			// reg_acc <= 0;
	// end
	
	always @(*)
	begin
		if (clk) begin	
			if (rst == 1)
				reg_acc = 0;
			else begin
				if (acc_update)
					reg_acc = X;
				else
					reg_acc = acc;
			end
		end
	end
				
endmodule