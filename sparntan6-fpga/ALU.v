`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:59:09 08/31/2016 
// Design Name: 
// Module Name:    ALU 
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
	/*
	parameter sel_A_D    = 2'b00;
	parameter sel_A_acc	= 2'b01;
	parameter sel_A_pc	= 2'b10;
	parameter sel_A_x		= 2'b11;
	parameter sel_B_DI	= 3'b000;
	parameter sel_B_nDI	= 3'b001;
	parameter sel_B_nacc	= 3'b010;
	parameter sel_B_C		= 3'b011;
	parameter sel_B_zero	= 3'b100;
	parameter sel_B_x		= 3'b101;

	*/
//////////////////////////////////////////////////////////////////////////////////
`include "signal.vh"

module ALU(DI, acc, pc, C, CI, X, sel_A, sel_B);
	input [7:0] DI;
	input [7:0] acc;
	input [7:0] pc;
	input [7:0] C;
	input CI;
	
	input [1:0] sel_A;
	input [2:0] sel_B;
	
	output [7:0] X;

	reg [7:0] A;
	reg [7:0] B;
	reg [7:0] res;
	
	assign X = res;
	
	always @(*)
	begin
		casex (sel_A)
			`sel_A_DI:	A = DI;
			`sel_A_acc:	A = acc;
			`sel_A_pc:	A = pc;
			`sel_A_x:	A = 8'bx;
		endcase
	end
	
	always @(*)
	begin
		casex (sel_B)
			`sel_B_DI:		B = DI;
			`sel_B_nDI:		B = ~DI;
			`sel_B_nacc:	B = ~acc;
			`sel_B_C:		B = C;
			`sel_B_zero: 	B = 8'b0;
			`sel_B_x:		B = 8'bx;
			default:		B = 8'bx;
		endcase
	end
	
	always @(*)
	begin
		res = A + B + CI;
	end
endmodule
