`timescale 1 ns /1 ns 
`define timeslice 100
/*
PC:     <-  (CarbonCore)
INST:   ->  (CarbonCore)
DI:     ->  (CarbonCore)
DO:     <-  (CarbonCore)
END:    <-  (Controller)
CMDEND: ->  (Controller)
I_addr: ->  (I2C)
IRAM:   <-  (I2C)
D_addr: ->  (I2C)
DRAM_W: ->  (I2C)
DRAM_R: <-  (I2C)
W:      ->  (I2C)
R:      ->  (I2C)
clkC:   <-  (Clk_gen)
clkD:   <-  (Clk_gen)
*/
module Decoder(
	input [7:0] PC, 
	output [15:0] INST,
	output [7:0] DI,
	input [7:0] DO,
	output CMDEND,
	input END,
	input [15:0] IRAM,
	output [7:0] DRAM_W,
	input [7:0] DRAM_R,
	output [7:0] I_addr,
	output [7:0] D_addr_R,
	output [7:0] D_addr_W,
	input clkC,
	input clkD,
	input clkE,
	output W,
	output R
);    
 
  /*internal reg*/
  reg [15:0] pre_inst;
  reg [7:0] pre_dram;
  reg [7:0] DATA_SEG;
  reg [7:0] INST_SEG;

  /*1. fetch instruction*/
  //assign I_addr[10:0] = {INST_SEG[2:0], PC[7:0]};
  assign I_addr = PC;
  assign INST = IRAM; 
  
  /*2. get data(set DI)*/
  /*
      8'b00_0000_00:  |   MOV acc, C;     |   DI = C      |     DO:--
      8'b00_0000_01:  |   MOV acc, [C];   |   DI = DRAM   |     DO:--
      8'b00_0001_01:  |   MOVn acc, [C];  |   DI = --     |     DO: D_addr = C, DRAM = DO, W
      
      8'b00_0010_00:  |   ADD acc, C;     |   DI = C      |     DO:--
      8'b00_0010_01:  |   ADD acc, [C];   |   DI = DRAM   |     DO:--
      8'b00_0011_01:  |   ADDn acc, [C];  |   DI = DRAM   |     DO: D_addr = C, DRAM = DO, W
      
      8'b00_0100_00:  |   SUB acc, C;     |   DI = C      |     DO:--
      8'b00_0100_01:  |   SUB acc, [C];   |   DI = DRAM   |     DO:--
      8'b00_0101_01:  |   SUBn acc, [C];  |   DI = DRAM   |     DO: D_addr = C, DRAM = DO, W
      
      8'b00_0110_00:  |   RSB acc, C;     |   DI = C      |     DO:--
      8'b00_0110_01:  |   RSB acc, [C];   |   DI = DRAM   |     DO:--
      8'b00_0111_01:  |   RSBn acc, [C];  |   DI = DRAM   |     DO: D_addr = C, DRAM = DO, W
      
      8'b00_1010_00:  |   DATASEG C;      |   DI = --     |     DO:--       |     DATA_SEG = C
      8'b00_1010_01:  |   INSTSEG C;      |   DI = --     |     DO:--       |     INST_SEG = C
      
      8'b00_1011_00:  |   JR C;           |   DI = --     |     DO:--
      8'b00_1100_00:  |   B C;            |   DI = --(C)  |     DO:--
      8'b00_1100_01:  |   BZ C;           |   DI = --(C)  |     DO:--
      8'b00_1100_10:  |   BNZ C;          |   DI = --(C)  |     DO:--
      
      8'b00_1111_11:  |   END
  */
  //assign D_addr_R = { DATA_SEG[2:0], INST[7:0] };
  //assign D_addr_W = { DATA_SEG[2:0], pre_inst[7:0] };  
  assign D_addr_R = INST[7:0];
  assign D_addr_W = pre_inst[7:0];
  assign DI = ( INST[15:8] == 8'b00_0000_00 ||
                INST[15:8] == 8'b00_0010_00 ||
                INST[15:8] == 8'b00_0100_00 ||
                INST[15:8] == 8'b00_0110_00 ) ? INST[7:0] : DRAM_R;

  /*3. deal_DO*/
  assign DRAM_W = pre_dram;
  assign DRAM_R = 8'bzzzz_zzzz;
  assign W = (  pre_inst[15:8] == 8'b00_0001_01 ||
                pre_inst[15:8] == 8'b00_0011_01 || 
                pre_inst[15:8] == 8'b00_0101_01 || 
                pre_inst[15:8] == 8'b00_0111_01 ) ? clkC: 0;
  assign R = ~clkC;
  assign CMDEND = (clkC && INST[15:8] == 8'b00_1111_11) ? 1 : 0;
  
  // just deal DATA_SEG & INST_SEG
  always @(posedge clkC)
    begin
      if(END)
        begin
          casex(INST[15:8])
            8'b00_1010_00:  //  DATASEG C
                  begin
                    DATA_SEG <= INST[7:0];
                  end
            8'b00_1010_01:  //  INSTSEG C
                  begin
                    INST_SEG <= INST[7:0];
                  end
          endcase
        end
      else
        begin
          DATA_SEG <= 8'b00000000;
          INST_SEG <= 8'b00000000;
        end
    end
                    
  /*4. set pre_inst on posedge clkD*/
  always @(posedge clkD)
    begin
      if(END) begin
          pre_inst <= INST;
			 pre_dram <= DO;
      end
		else begin
			pre_inst <= 16'b0000_0000_0000_0000;
			pre_dram <= 8'b0000_0000;
		end
    end
      
endmodule
