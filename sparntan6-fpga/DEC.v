`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:00:47 08/31/2016 
// Design Name: 
// Module Name:    DEC 
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
`include "signal.vh"

module DEC(OP, sel_A, sel_B, CI, acc_update, br_taken, acc_zero);
	input [5:0] OP;
	
	output [1:0] sel_A;
	output [2:0] sel_B;
	output CI;
	output acc_update;
	output br_taken;
	
	input acc_zero;
	
	/*
	sel_A							sel_B
	00			DI					000				DI
	01			acc					001				~DI
	10			pc					010				~acc
	11			x					011				C
									100				0
									101				x
	*/
	
	reg [1:0] reg_sel_A;
	reg [2:0] reg_sel_B;
	reg reg_CI;
	reg reg_acc_update;
	reg reg_br_taken;
	
	assign sel_A = reg_sel_A;
	assign sel_B = reg_sel_B;
	assign CI = reg_CI;
	assign acc_update = reg_acc_update;
	assign br_taken = reg_br_taken;
	
	always @(*)
	begin
		casex (OP)
			6'b0000xx: {reg_sel_A,reg_sel_B,reg_CI,reg_acc_update,reg_br_taken}={`sel_A_DI,   `sel_B_zero, 1'b0, 1'b1, 1'b0};	
			6'b0001xx: {reg_sel_A,reg_sel_B,reg_CI,reg_acc_update,reg_br_taken}={`sel_A_DI,   `sel_B_zero, 1'b0, 1'b0, 1'b0};	
			6'b0010xx: {reg_sel_A,reg_sel_B,reg_CI,reg_acc_update,reg_br_taken}={`sel_A_acc,  `sel_B_DI,   1'b0, 1'b1, 1'b0};	
			6'b0011xx: {reg_sel_A,reg_sel_B,reg_CI,reg_acc_update,reg_br_taken}={`sel_A_acc,  `sel_B_DI,   1'b0, 1'b0, 1'b0};	
			6'b0100xx: {reg_sel_A,reg_sel_B,reg_CI,reg_acc_update,reg_br_taken}={`sel_A_acc,  `sel_B_nDI,  1'b1, 1'b1, 1'b0};	
			6'b0101xx: {reg_sel_A,reg_sel_B,reg_CI,reg_acc_update,reg_br_taken}={`sel_A_acc,  `sel_B_nDI,  1'b1, 1'b0, 1'b0};		
			6'b0110xx: {reg_sel_A,reg_sel_B,reg_CI,reg_acc_update,reg_br_taken}={`sel_A_DI,   `sel_B_nacc, 1'b1, 1'b1, 1'b0};	
			6'b0111xx: {reg_sel_A,reg_sel_B,reg_CI,reg_acc_update,reg_br_taken}={`sel_A_DI,   `sel_B_nacc, 1'b1, 1'b0, 1'b0};	
			6'b101000: {reg_sel_A,reg_sel_B,reg_CI,reg_acc_update,reg_br_taken}={`sel_A_x,    `sel_B_x,    1'b0, 1'b0, 1'b0};	
			6'b101001: {reg_sel_A,reg_sel_B,reg_CI,reg_acc_update,reg_br_taken}={`sel_A_x,    `sel_B_x,    1'b0, 1'b0, 1'b0};	
			6'b101100: {reg_sel_A,reg_sel_B,reg_CI,reg_acc_update,reg_br_taken}={`sel_A_acc,  `sel_B_zero, 1'b0, 1'b0, 1'b1};	
			6'b110000: {reg_sel_A,reg_sel_B,reg_CI,reg_acc_update,reg_br_taken}={`sel_A_pc,   `sel_B_C,    1'b0, 1'b0, 1'b1};	
			6'b110010: {reg_sel_A,reg_sel_B,reg_CI,reg_acc_update,reg_br_taken}={`sel_A_pc,   `sel_B_C,    1'b0, 1'b0, acc_zero};	
			6'b110001: {reg_sel_A,reg_sel_B,reg_CI,reg_acc_update,reg_br_taken}={`sel_A_pc,   `sel_B_C,    1'b0, 1'b0, ~acc_zero};
			6'b111111: {reg_sel_A,reg_sel_B,reg_CI,reg_acc_update,reg_br_taken}={`sel_A_x,    `sel_B_x,    1'b0, 1'b0, 1'b0};
			default:   {reg_sel_A,reg_sel_B,reg_CI,reg_acc_update,reg_br_taken}={`sel_A_x,    `sel_B_x,    1'b0, 1'b0, 1'b0};	
		endcase
	end
endmodule