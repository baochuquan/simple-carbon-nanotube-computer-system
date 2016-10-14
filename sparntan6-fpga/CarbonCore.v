module CarbonCore(
		input clkA, 
		input clkB, 
		output [7:0] PC_O, 
		input [13:0] INST, 
		input [7:0] DI, 
		output [7:0] DO, 
		input rst
);

	wire [7:0] C;
	wire [5:0] OP;
	assign OP = INST[13:8];
	assign C = INST[7:0];
	
	wire [1:0] sel_A;
	wire [2:0] sel_B;
	wire acc_update;
	wire acc_update_r;
	wire br_taken;
	wire br_taken_r;
	wire CI;
	wire [7:0] X_in;
	wire [7:0] X_out;
	wire [7:0] pc_out;
	wire [7:0] acc_out;
	wire [7:0] pc_plus_1_out;
	
	assign PC_O = pc_out;
	assign acc_zero = (acc_out == 8'b0);
	assign DO = X_out;
	
	LATCH #(.width(1)) acc_update_reg(.clk(clkA), 
								.in(acc_update), 
								.out(acc_update_r), 
								.rst(rst));
	LATCH #(.width(1)) br_taken_reg(.clk(clkA), 
							  .in(br_taken), 
							  .out(br_taken_r), 
							  .rst(rst));
	LATCH #(.width(8)) X(.clk(clkA), 
					   .in(X_in), 
					   .out(X_out), 
					   .rst(rst));
	
	PC_PLUS_1 pc_plus_1(.clk(clkA), 
						.pc(pc_out), 
						.pc_plus_1(pc_plus_1_out), 
						.rst(rst));
	
	DEC decoder(.OP(OP), 
				.sel_A(sel_A), 
				.sel_B(sel_B), 
				.CI(CI), 
				.acc_update(acc_update), 
				.br_taken(br_taken), 
				.acc_zero(acc_zero));
				
	PC pc(.clk(clkB), 
		  .br_taken(br_taken_r), 
		  .X(X_out),
		  .pc_plus_1(pc_plus_1_out),
		  .pc(pc_out),
		  .rst(rst));
		  
	ACC acc(.clk(clkB), 
			.acc_update(acc_update_r), 
			.X(X_out), 
			.acc(acc_out),
			.rst(rst));
			
	ALU alu(.DI(DI), 
			.acc(acc_out), 
			.pc(pc_out), 
			.C(C), 
			.CI(CI), 
			.X(X_in), 
			.sel_A(sel_A), 
			.sel_B(sel_B));
			
endmodule	