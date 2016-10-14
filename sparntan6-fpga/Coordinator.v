`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:59:23 09/21/2016 
// Design Name: 
// Module Name:    Coordinator 
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
module Coordinator(
		input RESET,
		input EN,
		input ISCL,
		input DSCL,
		inout DSDA,
		inout ISDA,
		output CACK,

		output ENC,
		output clkA, 
		output clkB,
		input [7:0] PC,
		output [15:0] INST,
		output [7:0] DI,
		input [7:0] DO,
		input GCLK,
		input IICING
    );

	wire clkC, clkD;
	wire END, CMDEND;
	
	wire [15:0] IRAM;
	wire [7:0] DRAM_W;
   wire [7:0] DRAM_R;
	wire [7:0] I_addr;
   wire [7:0] D_addr_W;
   wire [7:0] D_addr_R;
	wire W, R;
	
	wire iwea;
	wire [7:0] iaddr;
	wire [15:0] idataout;
	
	wire dwea;
	wire [7:0] daddr;
	wire [7:0] ddatain;
	wire [7:0] ddataout;

	Clk_gen m_clk_gen(
		.clk_in( GCLK ), 
		.reset( RESET ), 
		.clkA( clkA ), 
		.clkB( clkB ), 
		.clkC( clkC ), 
		.clkD( clkD )
	);
	
   Controller m_controller(
		.ENC( ENC ), 
		.END( END ),
		.CACK( CACK ), 
		.EN( EN ), 
		.CMDEND( CMDEND )
	);
	
   Decoder m_decoder(
		.PC( PC ), 
		.INST( INST ), 
		.DI( DI ), 
		.DO( DO ), 
		.CMDEND( CMDEND ), 
		.END( END ), 
		.IRAM( IRAM ), 
		.DRAM_W( DRAM_W ), 
		.DRAM_R( DRAM_R ), 
		.I_addr( I_addr), 
		.D_addr_R( D_addr_R), 
		.D_addr_W( D_addr_W), 
		.clkC( clkC ), 
		.clkD( clkD ), 
		.W( W ), 
		.R( R )
	);
	
	DRAM_Controller m_dram_controller(
		.gclk( GCLK ),
		.W( W ), 
		.D_addr_W( D_addr_W), 
		.DRAM_W( DRAM_W ), 
		.R( R ), 
		.D_addr_R( D_addr_R ), 
		.DRAM_R( DRAM_R ), 
		.wea( dwea ), 
		.daddr( daddr ),
		.ddataout( ddatain ),
		.ddatain( ddataout )
	);
			
	IRAM_Controller m_iram_controller(
		.I_addr( I_addr ),
		.IRAM( IRAM ),
		.wea( iwea ),
		.iaddr( iaddr ),
		.idatain( idataout )
	);
	
	DRAM m_dram(
		.gclk( GCLK ),
		.sck( DSCL ),
		.sda( DSDA ),
		
		.iicing( IICING ),
		.wea( dwea ),
		.daddr( daddr ),
		.ddatain( ddatain ),
		.ddataout( ddataout )
	);

	IRAM m_iram(
		.gclk( GCLK ),
		.sck( ISCL ),
		.sda( ISDA ),
		
		.iicing( IICING ),
		.wea( iwea ),
		.iaddr( iaddr ),
		.idataout( idataout )
	);

endmodule
