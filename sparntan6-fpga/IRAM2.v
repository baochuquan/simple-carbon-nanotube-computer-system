`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:54:27 10/13/2016 
// Design Name: 
// Module Name:    IRAM2 
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
module IRAM2(
				input gclk,
				input PiInstWea,
				input PiWR,
				input PiAI,
				inout [7:0] PiInst,
				
				input ComFlag,
				input wea,
				input [7:0] iaddr,
				output reg [15:0] idataout
);
		reg [1:0] state;
		
		reg WriteEna = 1'b0;
		reg [7:0] RAMAddress;
		reg [15:0] RAMValueIn;
		reg [15:0] RAMValueout;
		reg [7:0] LowByte;
		reg [7:0] HighByte;

		assign PiInst = (PiWR) ? 8'bzzzzzzzz : RAMValueOut;
		
		always @(posedge gclk) begin
			if( ComFlag ) begin
				if(PiWR == 1 && PiAI == 1) begin
					RAMAddress <= PiInst
				end
				if(PiWR == 1 && PiAI == 0 &&¡¡state == 0) begin
					LowByte <= PiInst;
					state <= 1;
				end
				else if(PiWR == 1 && PiAI == 0 && state == 1) begin
					HighByte <= PiInst;
					state <= 2;
				end if(PiWR == 1 && PiAI == 0 && state == 3) begin
					RAMValueIn <= {HighByte, LowByte};
				end
			else begin
				
			end
		end
		
		always @ (posedge gclk)begin
			if( ComFlag )begin
				WriteEna <= PiInstWea;
			end
			else begin
				WriteEna <= wea;
			end
		end
		
		IramRegisterFile IramMap(
		  .clka(gclk),
		  .wea(WriteEna),
		  .addra(RAMAddress),
		  .dina(RAMValueIn),
		  .douta(RAMValueOut)
		);	

endmodule
