`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:30 09/02/2016 
// Design Name: 
// Module Name:    DRAM_Controller 
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
module DRAM_Controller(
		input gclk,
		input W,
		input [7:0] D_addr_W,
		input [7:0] DRAM_W,
		input R,
		input [7:0] D_addr_R,
		output [7:0] DRAM_R,
		
		output reg wea,
		output [7:0] daddr,
		output [7:0] ddataout,
		input [7:0] ddatain
    );

	reg [1:0]count;
	
	assign daddr = (W == 1) ? D_addr_W : D_addr_R;
	assign ddataout = DRAM_W;
	assign DRAM_R = ddatain;
	always@(posedge gclk) begin
		if( W == 1 && count == 1) begin
			wea <= (1 & W);
		end 
		else 
			wea <= 0;
			
		if( W == 1 ) begin
			count <= count + 1;
		end
		else begin
			count <= 0;
		end	
	end
endmodule
