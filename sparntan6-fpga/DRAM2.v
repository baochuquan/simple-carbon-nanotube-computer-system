`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:08:04 10/13/2016 
// Design Name: 
// Module Name:    DRAM2 
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
module DRAM2(
				input gclk,
				input PiDataWea,
				input PiWR,
				input PiAD,
				inout [7:0] PiData,
				
				input ComFlag,
				input wea,
				input [7:0] daddr,
				input [7:0] ddatain,
				output reg [7:0] ddataout
    );
		
		reg WriteEna = 1'b0;
		reg [7:0] RAMAddress;
		reg [7:0] RAMValueIn;
		reg [7:0] RAMValueout;

		assign PiData = (PiWR) ? 8'bzzzzzzzz : RAMValueOut;
		
		always @ (posedge gclk) begin
			if( ComFlag ) begin
				if(PiWR == 1 && PiAD == 1) begin //W = 1, Addr = 1
					RAMAddress <= PiData;
				end
				if(PiWR == 1 && PiAD == 0) begin
					RAMValueIn <= PiData;
				end
			end
			else begin
				RAMAddress <= daddr;
				RAMValueIn <= ddatain;
				ddataout   <= RAMValueOut;
			end
		end

		always @ (posedge gclk)begin
			if( ComFlag )begin
				WriteEna <= PiDataWea;
			end
			else begin
				WriteEna <= wea;
			end
		end

		DramRegisterFile DramMap(
		  .clka(gclk),
		  .wea(WriteEna),
		  .addra(RAMAddress),
		  .dina(RAMValueIn),
		  .douta(ReadValueOut)
		);
		
endmodule

