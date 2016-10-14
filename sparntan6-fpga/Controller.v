`timescale 1 ns /1 ns 
`define timeslice 100
/*
EN:     <-  EN
ENC:    ->  (CarbonCore)
END:    ->  (Decoder)
CMDEND: <-  (Decoder)
CACK:   ->  CACK
*/
module Controller(
	output ENC, 
	output END, 
	output CACK, 
	input EN, 
	input CMDEND
);  
  assign ENC = (EN)? 0: 1;
  assign END = (EN)? 1: 0;
  assign CACK = (CMDEND)? 1: 0;
  
endmodule
