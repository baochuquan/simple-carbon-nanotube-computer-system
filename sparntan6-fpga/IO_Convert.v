`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:42:33 09/02/2016 
// Design Name: 
// Module Name:    IO_Convert 
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
module IO_Convert(
				input dout,
				input oe,
				output din,
				inout din_dout);
				
	assign din = din_dout;
	assign din_dout = (oe)? dout : 1'bz;

endmodule
