`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:41:14 09/02/2016 
// Design Name: 
// Module Name:    I2C_signal 
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
module I2C_signal(
				input gclk,
				input sck,
				inout sda,
				output reg sck_fall, 
				output reg sck_rise, 
				output reg sck_high, 
				output reg sck_low,  
				output reg sda_fall, 
				output reg sda_rise, 
				output reg sda_high, 
				output reg sda_low ); 
	
	reg[7:0] sck_window = 8'hFF;
	reg[7:0] sda_window = 8'hFF;
	
	always @ (posedge gclk)begin
		sck_window <= {sck_window[6:0], sck};
		sda_window <= {sda_window[6:0], sda};
	end
	
	always @ (posedge gclk)begin
		case(sck_window)
			8'hFF:begin
				sck_fall = 1'b0;
				sck_rise = 1'b0;
				sck_high = 1'b1;
				sck_low  = 1'b0;
			end
			8'h00:begin
				sck_fall = 1'b0;
				sck_rise = 1'b0;
				sck_high = 1'b0;
				sck_low  = 1'b1;
			end
			8'hF0:begin
				sck_fall = 1'b1;
				sck_rise = 1'b0;
				sck_high = 1'b0;
				sck_low  = 1'b0;
			end
			8'h0F:begin
				sck_fall = 1'b0;
				sck_rise = 1'b1;
				sck_high = 1'b0;
				sck_low  = 1'b0;
			end
			default:begin
				sck_fall = 1'b0;
				sck_rise = 1'b0;
				sck_high = 1'b0;
				sck_low  = 1'b0;
			end
		endcase
	end
	always @ (posedge gclk)begin
		case(sda_window)
			8'hFF:begin
				sda_fall = 1'b0;
				sda_rise = 1'b0;
				sda_high = 1'b1;
				sda_low  = 1'b0;
			end
			8'h00:begin
				sda_fall = 1'b0;
				sda_rise = 1'b0;
				sda_high = 1'b0;
				sda_low  = 1'b1;
			end
			8'hF0:begin
				sda_fall = 1'b1;
				sda_rise = 1'b0;
				sda_high = 1'b0;
				sda_low  = 1'b0;
			end
			8'h0F:begin
				sda_fall = 1'b0;
				sda_rise = 1'b1;
				sda_high = 1'b0;
				sda_low  = 1'b0;
			end
			default:begin
				sda_fall = 1'b0;
				sda_rise = 1'b0;
				sda_high = 1'b0;
				sda_low  = 1'b0;
			end
		endcase
	end

endmodule
