`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:51:43 10/09/2016 
// Design Name: 
// Module Name:    Top 
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
module Top(
		input GCLK,
		input RESET,
		input EN,
		output CACK,
		input IICING,
		input ISCL,
		inout ISDA,
		input DSCL,
		inout DSDA
    );

	wire clkA, clkB;
	wire [7:0] PC;
	wire [15:0] INST;
	wire [7:0] DI;
	wire [7:0] DO;
	wire ENC;

CarbonCore carboncore(
	.clkA( clkA ), 
	.clkB( clkB ), 
	.PC_O( PC ), 
	.INST( {INST[13:0]} ), 
	.DI( DI ), 
	.DO( DO ), 
	.rst( ENC )
);


Coordinator coordinator(
	.RESET( RESET ),
	.EN( EN ),
	.ISCL( ISCL ),
	.DSCL( DSCL ),
	.DSDA( DSDA ),
	.ISDA( ISDA ),
	.CACK( CACK ),
	
	.ENC( ENC ),
	.clkA( clkA ), 
	.clkB( clkB ),
	.PC( PC ),
	.INST( INST ),
	.DI( DI ),
	.DO( DO ),
	.GCLK( GCLK ),
	.IICING( IICING )
);

endmodule
