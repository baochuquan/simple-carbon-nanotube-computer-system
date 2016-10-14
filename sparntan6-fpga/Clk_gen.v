//`timescale 1ns/1ns
//`define timeslice 100
/*
clk_in: <-  SCL
reset:  <-  RESET
clkA:   ->  (CarbonCore)  
clkB:   ->  (CarbonCore)
clkC:   ->  (Decoder)
clkD:   ->  (Decoder)
*/
module Clk_gen(
	input clk_in, 
	input reset, 
	output reg clkA,
	output reg clkB, 
	output reg clkC, 
	output reg clkD
);
  reg [5:0] count;

  always@(posedge clk_in)
    begin 
      if(reset)
        begin
          count <= 0;
          clkA <= 0;
          clkB <= 0;
          clkC <= 0;
          clkD <= 0;
        end
      else
        begin
          case(count)
            6'd0:
              begin
                clkB <= 1;
                count <= count+1;
              end
            6'd4:
              begin 
                clkB <= 0;
                count <= count+1;
              end
            6'd8:
              begin
                clkC <= 1;
                count <= count+1;
              end
            6'd12:
              begin
                clkC <= 0;
                count <= count+1;
              end
            6'd16:
              begin 
                clkD <= 1;
                count <= count+1;
              end
            6'd20:
              begin 
                clkD <= 0;
                count <= count+1;
              end
				6'd24:
				  begin
				    clkA <= 1;
					 count <= count+1;
				  end
				6'd28:
				  begin
					 clkA <= 0;
					 count <= count+1;
				  end
				  default: count <= count+1;
        endcase
      end
    end  
endmodule
            
        
	
