`timescale 1ns / 1ps
`define timeslice 200
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:52:31 10/09/2016
// Design Name:   CarbonCore
// Module Name:   C:/Users/baochuquan/Desktop/SPARTAN-6/FGPA2/inst_data_ram/testbench05.v
// Project Name:  inst_data_ram
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CarbonCore
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench01;

	// Inputs
	reg gclk;
	reg rst;
	reg reset;
	reg iicing;
	reg EN;
	
	wire CACK;
	
	wire isck, dsck;
	wire isda, dsda;

	reg [7:0] inst_rAddr;
	reg [15:0] inst_rData;
	reg [1:0] inst_isStart;
	wire [15:0] inst_RdData;       //EEPROM 读出数据寄存器
	wire inst_Done_Sig;           //IIC通信完成信号
	
	reg [7:0] data_rAddr;
	reg [7:0] data_rData;
	reg [1:0] data_isStart;
	wire [7:0] data_RdData;
	wire data_Done_Sig;

	// DRAM & IRAM
	reg [7:0] data_data[0:15];
	reg [7:0] data_addr[0:15];
	reg [15:0] inst_data[0:15];
	reg [7:0]  inst_addr[0:15];
	
	integer i;
	integer LOGFILE;
	parameter test_number = 8;
	
	//-------gclk-------
	always #(`timeslice/2)
			gclk = ~gclk;
	
	// input & output
	initial begin
		LOGFILE = $fopen("./log.dat");
		$readmemh("./data_addr.dat", data_addr);
		$readmemh("./data_data.dat", data_data);
		$readmemh("./inst_addr.dat", inst_addr);
		$readmemh("./inst_data.dat", inst_data);
	end
	
	initial begin
		// Initialize Inputs
		rst = 0;  // reset com
		EN = 0;
		reset = 1;  // reset 
		gclk = 0;
		
		inst_rAddr   = 8'd0;
		inst_rData   = 16'd0;
		inst_isStart = 2'b00;
		data_rAddr   = 8'd0;
		data_rData   = 8'd0;
		data_isStart = 2'b00;
		
		iicing = 0;
		
		// Wait 1000 ns for global reset to finish
		#1000; 
		rst = 1;
		reset = 0;
		iicing = 1;
		
		
		// Add stimulus here
		$display("----Inst Write Begin----");
		// write
		for(i = 0; i < test_number; i = i + 1) begin
			$display("++ i:%d ++", i);
			$display("++ inst_addr:%0h ++", inst_addr[i]);
			$display("++ inst_data:%0h ++", inst_data[i]);
			inst_isStart = 2'b01;
			inst_rAddr = inst_addr[i];
			inst_rData = inst_data[i];
			@(posedge inst_Done_Sig);
			#`timeslice;
			#`timeslice;
			inst_isStart = 2'b00;
			$display("**done**");
		end
		
		$display("----Inst Read  Begin----");
		// read
		for(i = 0; i < test_number; i = i + 1) begin
			inst_isStart = 2'b10;
			inst_rAddr = inst_addr[i];
			@(posedge inst_Done_Sig);
			#`timeslice;
			#`timeslice;
			inst_isStart = 2'b00;
			$display("++ i:%d ++", i);
			$display("++ inst_addr[i]:%0h ++", inst_addr[i]);
			$display("++ inst_RdData:%0h ++", inst_RdData);
			$fdisplay(LOGFILE, "@%0h  %0h", inst_rAddr, inst_RdData);
		end
	

		$fdisplay(LOGFILE, "--------------------");
		$display("--------------------");

	
		// Data RAM
		$display("----Data Write Begin----");
		// write
		for(i = 0; i < test_number; i = i + 1) begin
			$display("++ i:%d ++", i);
			$display("++ data_addr[i]:%0h ++", data_addr[i]);
			$display("++ data_data:%0h ++", data_data[i]);
			data_isStart = 2'b01;
			data_rAddr = data_addr[i];
			data_rData = data_data[i];
			@(posedge data_Done_Sig);
			#`timeslice;
			#`timeslice;
			data_isStart = 2'b00;
			$display("**done**");
		end
		
		$display("----Data Read  Begin----");
		// read
		for(i = 0; i < test_number; i = i + 1) begin
			data_isStart = 2'b10;
			data_rAddr = data_addr[i];
			@(posedge data_Done_Sig);
			#`timeslice;
			#`timeslice;
			data_isStart = 2'b00;
			$display("++ i:%d ++", i);
			$display("++ data_addr[i]:%0h ++", data_addr[i]);
			$display("++ data_RdData:%0h ++", data_RdData);
			$fdisplay(LOGFILE, "@%0h  %0h", data_rAddr, data_RdData);
		end

		// CarbonCore begin to run
		#1000;
		iicing = 0;
		EN = 1;
		@(posedge CACK);
		
		
		// To chek the result
		#5000;
		iicing = 1;
		$display("----Data Read  Begin----");
		// read
		for(i = 0; i < test_number; i = i + 1) begin
			data_isStart = 2'b10;
			data_rAddr = data_addr[i];
			@(posedge data_Done_Sig);
			#`timeslice;
			#`timeslice;
			data_isStart = 2'b00;
			$display("++ i:%d ++", i);
			$display("++ data_addr[i]:%0h ++", data_addr[i]);
			$display("++ data_RdData:%0h ++", data_RdData);
			$fdisplay(LOGFILE, "@%0h  %0h", data_rAddr, data_RdData);
		end

		$display("---- End ----");
		$fclose(LOGFILE);
	end
	
	// Instantiate the Unit Under Test (UUT)
	I2C_data_com i2c_data_com(
		.CLK( gclk ),
		.RSTn( rst ),

		.Start_Sig( data_isStart ),             //read or write command
		.Addr_Sig( data_rAddr ),              //eeprom words address
		.WrData( data_rData ),                //eeprom write data
		.RdData( data_RdData ),               //eeprom read data
		.Done_Sig( data_Done_Sig ),                   //eeprom read/write finish

		.SCL( dsck ),
		.SDA( dsda ) 
	);
	I2C_inst_com i2c_inst_com(
		.CLK( gclk ),
		.RSTn( rst ),

		.Start_Sig( inst_isStart ),             //read or write command
		.Addr_Sig( inst_rAddr ),              //eeprom words address
		.WrData( inst_rData ),                //eeprom write data
		.RdData( inst_RdData ),               //eeprom read data
		.Done_Sig( inst_Done_Sig ),                   //eeprom read/write finish

		.SCL( isck ),
		.SDA( isda )
	);
	Top top(
		.GCLK( gclk ),
		.RESET( reset ),
		.EN( EN ),
		.CACK( CACK ),
		.IICING( iicing ),
		.ISCL( isck ),
		.ISDA( isda ),
		.DSCL( dsck ),
		.DSDA( dsda )
	);
endmodule

