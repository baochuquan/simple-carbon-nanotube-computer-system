`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:31 06/26/2016 
// Design Name: 
// Module Name:    i2c_slaver 
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
module DRAM(
				input gclk,
				input sck,
				inout sda,
				
				input iicing,
				input wea,
				input [7:0] daddr,
				input [7:0] ddatain,
				output reg [7:0] ddataout
);
		
parameter S_idle  = 3'd0;
parameter S_start = 3'd1;
parameter S_Index = 3'd2;
parameter S_Data  = 3'd3;
parameter S_stop  = 3'd4;
parameter HardWriteAddress = 8'ha2;// 1010_001
parameter HardReadAddress  = 8'ha3;// 1010_001		
		
				
		I2C_signal I2C_signal(
				.gclk		(gclk		),
				.sck		(sck		),
				.sda		(sda		),
				.sck_fall	(sck_fall	), 
				.sck_rise	(sck_rise	), 
				.sck_high	(sck_high	), 
				.sck_low	(sck_low	),  
				.sda_fall	(sda_fall	), 
				.sda_rise	(sda_rise	), 
				.sda_high	(sda_high	), 
				.sda_low 	(sda_low	)); 
				

		reg[7:0] sda_data;		// cache 8 bit
		reg[3:0] cnt = 4'd0;
	
		reg oe = 1'b0;
		wire sda_din;
		reg sda_dout;
		reg[2:0] state = 3'd0;
		
		reg[7:0] OpreatRegisterAddress;
		reg[7:0] WriteRegisterValue;
		wire[7:0] ReadRegisterValue;
		
		reg ReadOperation = 1'b0;
		reg WriteOperation = 1'b0;
		reg WROperation = 1'b0; //0写 1读
		
		reg MemWea = 1'b0;
		
		/* to cooperate with decoder */
		reg WriteEna = 1'b0;
		reg [7:0] RAMAddress;
		reg [7:0] RAMValueIn;
		always @ (posedge gclk)begin
			if(iicing)begin
				WriteEna <= MemWea;
				RAMAddress <= OpreatRegisterAddress;
				RAMValueIn <= WriteRegisterValue;
			end
			else begin
				WriteEna <= wea;
				RAMAddress <= daddr;
				RAMValueIn <= ddatain;
				ddataout <= ReadRegisterValue;
			end
		end
	
		always @ (posedge gclk)begin
			case(state)
			
				S_idle:begin
				
					if(sck_high & sda_fall)begin //开始标识
						state <= S_start;
						cnt <= 4'd0;
						WROperation <= 1'b0;
						ReadOperation  <= 1'b0;
						WriteOperation <= 1'b0;
					end
					
				end
				
				S_start:begin
				
					if(sck_rise &(cnt < 8))begin
						sda_data <= {sda_data[6:0],sda_din};
						cnt <= cnt + 1'b1;
					end
					else if(sck_fall & (cnt == 8))begin
					
						if((sda_data == HardWriteAddress) || (sda_data == HardReadAddress))begin
							oe <= 1'b1;			// sda out
							sda_dout <= 1'b0;	// ack = 0
							cnt <= cnt + 1'b1;
							if(WROperation)begin		// if read op
								ReadOperation  <= 1'b1;
								WriteOperation <= 1'b0;
							end
						end
						else begin
							state <= S_idle;
						end
					end
					else if(sck_fall & (cnt == 9))begin						
						
						if(sda_data == HardWriteAddress)begin
							state <= S_Index;
							oe <= 1'b0;
							cnt <= 4'd0;
							ReadOperation  <= 1'b0;	// my
							WriteOperation <= 1'b1; // my
						end
						else if(sda_data == HardReadAddress)begin
							state <= S_Data;
							oe <= 1'b1;	// my
							ReadOperation  <= 1'b1;	// ? was 0
							WriteOperation <= 1'b0;	// ? 
							sda_dout <= ReadRegisterValue[7];  
							cnt <= 4'd1;		// was 4'd1			
						end
					end
					
				end
				
				S_Index:begin
					
					if(sck_high & sda_rise)begin //停止标识	
						state <= S_idle;	
						WROperation <= 1'b0; // my
					end
					else if(sck_rise &(cnt < 8))begin
						sda_data <= {sda_data[6:0],sda_din};
						cnt <= cnt + 1'b1;	
					end
					else if(sck_fall & (cnt == 8))begin
						oe <= 1'b1;			// sda out
						sda_dout <= 1'b0;	// ack = 0
						cnt <= cnt + 1'b1;
						OpreatRegisterAddress <= sda_data;	// get address
					end
					else if(sck_fall & (cnt == 9))begin						
						oe <= 1'b0;
						cnt <= 4'd0;
						state <= S_Data;
					end
					
				end
				
				S_Data:begin
					/*
					if(sck_high & sda_rise)begin //停止标识		
						state <= S_idle; 
						WROperation <= 1'b0;				 // was 1'b0 my delete		
					end
					else */
					if(sck_high & sda_fall)begin // my 开始标识
						state <= S_start;
						cnt <= 1'b0;
						WROperation <= 1'b1;	
					end
					else if((WriteOperation) & sck_rise & (cnt < 8))begin //如果是写操作 was !WROperation
						sda_data <= {sda_data[6:0],sda_din};
						cnt <= cnt + 1'b1;
					end
					else if(ReadOperation & sck_fall &(cnt < 8))begin //如果是读操作 was sck_fall , WROperation
						case (cnt)
							//4'd0: sda_dout <= ReadRegisterValue[7];		//was //
							4'd1: sda_dout <= ReadRegisterValue[6];
							4'd2: sda_dout <= ReadRegisterValue[5];
							4'd3: sda_dout <= ReadRegisterValue[4];
							4'd4: sda_dout <= ReadRegisterValue[3];
							4'd5: sda_dout <= ReadRegisterValue[2];
							4'd6: sda_dout <= ReadRegisterValue[1];
							4'd7: sda_dout <= ReadRegisterValue[0];
							default: sda_dout <= 1'b0;
						endcase						
						cnt <= cnt + 1'b1;
					end
					else if( ReadOperation & sck_fall &(cnt == 8))begin		//was WROperation
						oe <= 1'b0;		// my
						cnt <= cnt + 1'b1;
						//sda_dout <= 1'b1; // ?? my delete
						WROperation <= 1'b0;
					end
					else if((WriteOperation) & sck_fall & (cnt == 8))begin	//was !WROperation
						oe <= 1'b0;			// sda out			
						cnt <= cnt + 1'b1;					
						//state <= S_stop;  // my
						sda_dout <= 1'b0; // ack = 0
						//ReadOperation  <= 1'b0;
						//WriteOperation <= 1'b0;	//was 1'b1
						WriteRegisterValue <= sda_data;						
					end
					else if(sck_fall & (cnt == 9))begin
						oe <= 1'b0;
						cnt <= 4'd0;
						MemWea <= WriteOperation;
						state <= S_stop;
					end
					
				end
				
				S_stop:begin
				
					if(sck_high & sda_rise)begin //停止标识
						state <= S_idle;
						MemWea <= 1'b0;
						ReadOperation  <= 1'b0;
						WriteOperation <= 1'b0;
						WROperation <= 1'b0; // my
					end
				
				end
				
				default:begin
					oe <= 1'b0;
					state <= S_idle;
				end
				
			endcase
		end
	
		IO_Convert Dram_IO_Convert(
				.dout(sda_dout),
				.oe(oe),
				.din(sda_din),
				.din_dout(sda)
		);

		DramRegisterFile DramMap(
		  .clka(gclk),
		  .wea(WriteEna),
		  .addra(RAMAddress),
		  .dina(RAMValueIn),
		  .douta(ReadRegisterValue)
		);
endmodule

