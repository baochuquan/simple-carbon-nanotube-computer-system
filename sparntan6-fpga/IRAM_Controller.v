`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:46:40 09/02/2016 
// Design Name: 
// Module Name:    IRAM_Controller 
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
module IRAM_Controller(
		input [7:0] I_addr,
		output [15:0] IRAM,
		
		output wea,
		output [7:0] iaddr,
		input [15:0] idatain
    );
	
	reg wea_val = 0;
	assign wea = wea_val;
	assign iaddr = I_addr;
	assign IRAM = idatain;
endmodule
