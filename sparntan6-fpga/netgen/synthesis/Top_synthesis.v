////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.49d
//  \   \         Application: netgen
//  /   /         Filename: Top_synthesis.v
// /___/   /\     Timestamp: Fri Oct 14 22:04:17 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Top.ngc Top_synthesis.v 
// Device	: xc6slx9-2-ftg256
// Input file	: Top.ngc
// Output file	: C:\Users\baochuquan\Desktop\SPARTAN-6\FPGA4\whole\netgen\synthesis\Top_synthesis.v
// # of Modules	: 1
// Design Name	: Top
// Xilinx        : C:\Xilinx\14.4\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Top (
  GCLK, RESET, EN, IICING, ISCL, DSCL, CACK, ISDA, DSDA
)/* synthesis syn_black_box syn_noprune=1 */;
  input GCLK;
  input RESET;
  input EN;
  input IICING;
  input ISCL;
  input DSCL;
  output CACK;
  inout ISDA;
  inout DSDA;
  
  // synthesis translate_off
  
  wire GCLK_BUFGP_0;
  wire RESET_IBUF_1;
  wire EN_IBUF_2;
  wire IICING_IBUF_3;
  wire ISCL_IBUF_4;
  wire DSCL_IBUF_5;
  wire N0;
  wire \coordinator/CMDEND ;
  wire \coordinator/m_clk_gen/clkA_32 ;
  wire \coordinator/m_clk_gen/clkB_33 ;
  wire \carboncore/pc/reg_pc_7_34 ;
  wire \carboncore/pc/reg_pc_6_35 ;
  wire \carboncore/pc/reg_pc_5_36 ;
  wire \carboncore/pc/reg_pc_4_37 ;
  wire \carboncore/pc/reg_pc_3_38 ;
  wire \carboncore/pc/reg_pc_2_39 ;
  wire \carboncore/pc/reg_pc_1_40 ;
  wire \carboncore/pc/reg_pc_0_41 ;
  wire \carboncore/X/res_7_42 ;
  wire \carboncore/X/res_6_43 ;
  wire \carboncore/X/res_5_44 ;
  wire \carboncore/X/res_4_45 ;
  wire \carboncore/X/res_3_46 ;
  wire \carboncore/X/res_2_47 ;
  wire \carboncore/X/res_1_48 ;
  wire \carboncore/X/res_0_49 ;
  wire \coordinator/m_dram_controller/wea_52 ;
  wire \coordinator/m_clk_gen/clkD_BUFG_61 ;
  wire \coordinator/m_clk_gen/clkC_62 ;
  wire \coordinator/W ;
  wire \coordinator/m_decoder/pre_inst[0] ;
  wire \coordinator/m_decoder/pre_inst[1] ;
  wire \coordinator/m_decoder/pre_inst[2] ;
  wire \coordinator/m_decoder/pre_inst[3] ;
  wire \coordinator/m_decoder/pre_inst[4] ;
  wire \coordinator/m_decoder/pre_inst[5] ;
  wire \coordinator/m_decoder/pre_inst[6] ;
  wire \coordinator/m_decoder/pre_inst[7] ;
  wire \coordinator/W_inv ;
  wire \coordinator/m_iram/Mmux__n0304_4_85 ;
  wire \coordinator/m_iram/Mmux__n0304_5_86 ;
  wire \coordinator/m_iram/Mmux__n0304_3_f7_87 ;
  wire \coordinator/m_iram/Mmux__n0304_51_88 ;
  wire \coordinator/m_iram/Mmux__n0304_6_89 ;
  wire \coordinator/m_iram/Mmux__n0304_4_f7_90 ;
  wire \coordinator/m_iram/state_FSM_FFd2_96 ;
  wire \coordinator/m_iram/state_FSM_FFd1-In_97 ;
  wire \coordinator/m_iram/state_FSM_FFd2-In_98 ;
  wire \coordinator/m_iram/state_FSM_FFd3-In ;
  wire \coordinator/m_iram/state_FSM_FFd3-In1 ;
  wire \coordinator/m_iram/Iram_IO_Convert/oe_inv ;
  wire \coordinator/m_iram/I2C_signal/sda_window[7]_PWR_17_o_equal_17_o ;
  wire \coordinator/m_iram/I2C_signal/sda_window[7]_GND_58_o_equal_18_o ;
  wire \coordinator/m_iram/I2C_signal/sck_window[7]_PWR_17_o_equal_5_o ;
  wire \coordinator/m_iram/I2C_signal/sck_window[7]_PWR_17_o_equal_7_o ;
  wire \coordinator/m_iram/I2C_signal/sck_window[7]_GND_58_o_equal_8_o ;
  wire \coordinator/m_iram/_n0688_inv ;
  wire \coordinator/m_iram/_n0609_inv ;
  wire \coordinator/m_iram/_n0662_inv ;
  wire \coordinator/m_iram/_n0407_inv_126 ;
  wire \coordinator/m_iram/_n0581_inv ;
  wire \coordinator/m_iram/_n0448_inv ;
  wire \coordinator/m_iram/_n0678_inv ;
  wire \coordinator/m_iram/_n0304 ;
  wire \coordinator/m_iram/ReadOperation_GND_62_o_AND_108_o ;
  wire \coordinator/m_iram/_n0532[0] ;
  wire \coordinator/m_iram/_n0532[2] ;
  wire \coordinator/m_iram/_n0532[3] ;
  wire \coordinator/m_iram/_n0532[4] ;
  wire \coordinator/m_iram/state[2]_WriteOperation_Mux_100_o ;
  wire \coordinator/m_iram/state[2]_ReadOperation_Mux_99_o ;
  wire \coordinator/m_iram/state[2]_GND_62_o_Mux_96_o ;
  wire \coordinator/m_iram/sck_high_sda_rise_AND_98_o ;
  wire \coordinator/m_iram/WriteOperation_cnt[4]_AND_104_o ;
  wire \coordinator/m_iram/oe_PWR_20_o_MUX_231_o ;
  wire \coordinator/m_iram/wea_MemWea_MUX_190_o ;
  wire \coordinator/m_iram/sda_dout_167 ;
  wire \coordinator/m_iram/WROperation_184 ;
  wire \coordinator/m_iram/WriteOperation_185 ;
  wire \coordinator/m_iram/ReadOperation_186 ;
  wire \coordinator/m_iram/MemWea_187 ;
  wire \coordinator/m_iram/oe_188 ;
  wire \coordinator/m_iram/state_FSM_FFd3_205 ;
  wire \coordinator/m_iram/state_FSM_FFd1_206 ;
  wire \coordinator/m_iram/WriteEna_207 ;
  wire \coordinator/m_iram/I2C_signal/sda_rise_232 ;
  wire \coordinator/m_iram/I2C_signal/sda_fall_233 ;
  wire \coordinator/m_iram/I2C_signal/sck_high_234 ;
  wire \coordinator/m_iram/I2C_signal/sck_rise_235 ;
  wire \coordinator/m_iram/I2C_signal/sck_fall_236 ;
  wire \coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<0> ;
  wire \coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<1> ;
  wire \coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<2> ;
  wire \coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<3> ;
  wire \coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<4> ;
  wire \coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<5> ;
  wire \coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<6> ;
  wire \coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<7> ;
  wire \coordinator/m_dram/state_FSM_FFd2_249 ;
  wire \coordinator/m_dram/state_FSM_FFd1-In_250 ;
  wire \coordinator/m_dram/state_FSM_FFd2-In ;
  wire \coordinator/m_dram/state_FSM_FFd3-In ;
  wire \coordinator/m_dram/state_FSM_FFd2-In3 ;
  wire \coordinator/m_dram/Dram_IO_Convert/oe_inv ;
  wire \coordinator/m_dram/I2C_signal/sda_window[7]_PWR_17_o_equal_17_o ;
  wire \coordinator/m_dram/I2C_signal/sda_window[7]_GND_58_o_equal_18_o ;
  wire \coordinator/m_dram/I2C_signal/sck_window[7]_PWR_17_o_equal_5_o ;
  wire \coordinator/m_dram/I2C_signal/sck_window[7]_PWR_17_o_equal_7_o ;
  wire \coordinator/m_dram/I2C_signal/sck_window[7]_GND_58_o_equal_8_o ;
  wire \coordinator/m_dram/_n0651_inv ;
  wire \coordinator/m_dram/_n0572_inv ;
  wire \coordinator/m_dram/_n0625_inv ;
  wire \coordinator/m_dram/iicing_inv ;
  wire \coordinator/m_dram/_n0544_inv ;
  wire \coordinator/m_dram/_n0410_inv ;
  wire \coordinator/m_dram/_n0641_inv_282 ;
  wire \coordinator/m_dram/ReadOperation_GND_57_o_AND_89_o ;
  wire \coordinator/m_dram/ReadOperation_cnt[3]_AND_79_o ;
  wire \coordinator/m_dram/_n0575 ;
  wire \coordinator/m_dram/state[2]_WriteOperation_Mux_92_o ;
  wire \coordinator/m_dram/state[2]_ReadOperation_Mux_91_o ;
  wire \coordinator/m_dram/state[2]_GND_57_o_Mux_88_o ;
  wire \coordinator/m_dram/sck_high_sda_rise_AND_71_o ;
  wire \coordinator/m_dram/WriteOperation_cnt[3]_AND_77_o ;
  wire \coordinator/m_dram/sck_rise_cnt[3]_AND_72_o ;
  wire \coordinator/m_dram/oe_PWR_16_o_MUX_157_o ;
  wire \coordinator/m_dram/wea_MemWea_MUX_115_o ;
  wire \coordinator/m_dram/sda_dout_314 ;
  wire \coordinator/m_dram/WROperation_323 ;
  wire \coordinator/m_dram/WriteOperation_324 ;
  wire \coordinator/m_dram/ReadOperation_325 ;
  wire \coordinator/m_dram/MemWea_326 ;
  wire \coordinator/m_dram/oe_327 ;
  wire \coordinator/m_dram/state_FSM_FFd3_328 ;
  wire \coordinator/m_dram/state_FSM_FFd1_329 ;
  wire \coordinator/m_dram/WriteEna_330 ;
  wire \coordinator/m_dram/I2C_signal/sda_rise_355 ;
  wire \coordinator/m_dram/I2C_signal/sda_fall_356 ;
  wire \coordinator/m_dram/I2C_signal/sck_high_357 ;
  wire \coordinator/m_dram/I2C_signal/sck_rise_358 ;
  wire \coordinator/m_dram/I2C_signal/sck_fall_359 ;
  wire \coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<0> ;
  wire \coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<1> ;
  wire \coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<2> ;
  wire \coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<3> ;
  wire \coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<4> ;
  wire \coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<5> ;
  wire \coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<6> ;
  wire \coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<7> ;
  wire \coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<0> ;
  wire \coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<1> ;
  wire \coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<2> ;
  wire \coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<3> ;
  wire \coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<4> ;
  wire \coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<5> ;
  wire \coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<6> ;
  wire \coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<7> ;
  wire \coordinator/m_iram/WriteOperation_PWR_20_o_MUX_216_o<7>1_376 ;
  wire \coordinator/m_dram/WriteOperation_PWR_16_o_MUX_142_o<7>1_377 ;
  wire \coordinator/m_iram/_n0407_inv1 ;
  wire \coordinator/m_iram/GND_62_o_GND_62_o_equal_35_o<4>1 ;
  wire \coordinator/m_iram/I2C_signal/sck_window[7]_PWR_17_o_equal_5_o<7>1_380 ;
  wire \coordinator/m_dram/I2C_signal/sck_window[7]_PWR_17_o_equal_5_o<7>1_381 ;
  wire \coordinator/m_dram/_n0331_inv32 ;
  wire \coordinator/m_iram/Mmux__n0532111 ;
  wire \coordinator/m_iram/Mmux__n053221 ;
  wire \coordinator/m_dram/Mmux__n049421 ;
  wire \coordinator/m_dram/state_FSM_FFd1-In1 ;
  wire \coordinator/m_iram/state_FSM_FFd1-In2 ;
  wire \coordinator/m_iram/_n0407_inv2 ;
  wire \coordinator/m_iram/_n0448_inv2_389 ;
  wire \coordinator/m_dram/state_FSM_FFd1-In2 ;
  wire \coordinator/m_iram/ReadOperation_GND_62_o_AND_108_o1 ;
  wire \coordinator/m_dram/_n0331_inv41 ;
  wire \coordinator/m_decoder/END_inv ;
  wire \coordinator/m_decoder/INST[15]_INST[15]_OR_116_o ;
  wire \coordinator/m_decoder/pre_inst[8] ;
  wire \coordinator/m_decoder/pre_inst[9] ;
  wire \coordinator/m_decoder/pre_inst[10] ;
  wire \coordinator/m_decoder/pre_inst[13] ;
  wire \coordinator/m_decoder/pre_inst[14] ;
  wire \coordinator/m_decoder/pre_inst[15] ;
  wire \coordinator/m_clk_gen/count[5]_PWR_11_o_Select_20_o21 ;
  wire \coordinator/m_clk_gen/count[5]_PWR_11_o_Select_20_o1 ;
  wire \coordinator/m_clk_gen/count[5]_clkD_Select_25_o ;
  wire \coordinator/m_clk_gen/count[5]_clkC_Select_23_o ;
  wire \coordinator/m_clk_gen/count[5]_PWR_11_o_Select_20_o ;
  wire \coordinator/m_clk_gen/count[5]_clkA_Select_27_o ;
  wire \carboncore/decoder/_n0082 ;
  wire \carboncore/decoder/_n0074 ;
  wire \carboncore/acc_update_reg/in[0]_GND_3_o_MUX_1_o ;
  wire \carboncore/br_taken_reg/in[0]_GND_3_o_MUX_1_o ;
  wire \carboncore/acc_zero ;
  wire \carboncore/CI ;
  wire \carboncore/acc/reg_acc_0_430 ;
  wire \carboncore/acc/reg_acc_1_431 ;
  wire \carboncore/acc/reg_acc_2_432 ;
  wire \carboncore/acc/reg_acc_3_433 ;
  wire \carboncore/acc/reg_acc_4_434 ;
  wire \carboncore/acc/reg_acc_5_435 ;
  wire \carboncore/acc/reg_acc_6_436 ;
  wire \carboncore/acc/reg_acc_7_437 ;
  wire \carboncore/pc_plus_1/res_0_438 ;
  wire \carboncore/pc_plus_1/res_1_439 ;
  wire \carboncore/pc_plus_1/res_2_440 ;
  wire \carboncore/pc_plus_1/res_3_441 ;
  wire \carboncore/pc_plus_1/res_4_442 ;
  wire \carboncore/pc_plus_1/res_5_443 ;
  wire \carboncore/pc_plus_1/res_6_444 ;
  wire \carboncore/pc_plus_1/res_7_445 ;
  wire \carboncore/br_taken_reg/res_446 ;
  wire \carboncore/acc_update_reg/res_447 ;
  wire \carboncore/X/in[7]_GND_5_o_mux_2_OUT<0> ;
  wire \carboncore/X/in[7]_GND_5_o_mux_2_OUT<1> ;
  wire \carboncore/X/in[7]_GND_5_o_mux_2_OUT<2> ;
  wire \carboncore/X/in[7]_GND_5_o_mux_2_OUT<3> ;
  wire \carboncore/X/in[7]_GND_5_o_mux_2_OUT<4> ;
  wire \carboncore/X/in[7]_GND_5_o_mux_2_OUT<5> ;
  wire \carboncore/X/in[7]_GND_5_o_mux_2_OUT<6> ;
  wire \carboncore/X/in[7]_GND_5_o_mux_2_OUT<7> ;
  wire \carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<3>_bdd0 ;
  wire \carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<7>_495 ;
  wire \carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<0> ;
  wire \carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<1> ;
  wire \carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<2> ;
  wire \carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<3> ;
  wire \carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<4> ;
  wire \carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<5> ;
  wire \carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<6> ;
  wire \carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<0> ;
  wire \carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<1> ;
  wire \carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<2> ;
  wire \carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<3> ;
  wire \carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<4> ;
  wire \carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<5> ;
  wire \carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<6> ;
  wire \carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<7> ;
  wire \carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<0> ;
  wire \carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<1> ;
  wire \carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<2> ;
  wire \carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<3> ;
  wire \carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<4> ;
  wire \carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<5> ;
  wire \carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<6> ;
  wire \carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<7> ;
  wire N3;
  wire N5;
  wire N7;
  wire N9;
  wire N11;
  wire N13;
  wire \coordinator/m_dram/state_FSM_FFd2-In1_525 ;
  wire \coordinator/m_iram/_n0581_inv2_526 ;
  wire \coordinator/m_iram/_n0581_inv3_527 ;
  wire \coordinator/m_dram/_n0491_inv1_528 ;
  wire \coordinator/m_iram/_n0448_inv1_529 ;
  wire \coordinator/m_iram/_n0448_inv3_530 ;
  wire N17;
  wire N19;
  wire \coordinator/m_dram/state_FSM_FFd3-In1_533 ;
  wire \coordinator/m_dram/state_FSM_FFd3-In2_534 ;
  wire \coordinator/m_dram/state_FSM_FFd3-In3_535 ;
  wire \coordinator/m_dram/state_FSM_FFd3-In4_536 ;
  wire \coordinator/m_dram/state_FSM_FFd3-In5_537 ;
  wire N21;
  wire N23;
  wire N25;
  wire \coordinator/m_iram/_n0609_inv1_541 ;
  wire \coordinator/m_iram/_n0369_inv1_542 ;
  wire \coordinator/m_iram/_n0369_inv2_543 ;
  wire \coordinator/m_iram/_n0369_inv3_544 ;
  wire \coordinator/m_iram/_n0529_inv1_545 ;
  wire \coordinator/m_iram/_n0529_inv2_546 ;
  wire \coordinator/m_iram/_n0529_inv3_547 ;
  wire \coordinator/m_dram/Mmux__n05751 ;
  wire \coordinator/m_dram/Mmux__n057511_549 ;
  wire \coordinator/m_dram/Mmux__n057512_550 ;
  wire \coordinator/m_dram/Mmux__n057513_551 ;
  wire N27;
  wire \coordinator/m_iram/Mmux_state[2]_GND_62_o_Mux_96_o1 ;
  wire \coordinator/m_iram/Mmux__n0532211_554 ;
  wire \coordinator/m_iram/Mmux__n06121 ;
  wire \coordinator/m_iram/Mmux__n061211_556 ;
  wire N29;
  wire \coordinator/m_dram/_n0544_inv1_558 ;
  wire \coordinator/m_dram/_n0544_inv2_559 ;
  wire \coordinator/m_dram/_n0544_inv4_560 ;
  wire \coordinator/m_dram/_n0544_inv5_561 ;
  wire \coordinator/m_dram/_n0331_inv1_562 ;
  wire \coordinator/m_dram/_n0331_inv3_563 ;
  wire \coordinator/m_dram/_n0625_inv1_564 ;
  wire N33;
  wire \coordinator/m_dram/Mmux__n0494211_566 ;
  wire \coordinator/m_dram/Mmux__n0494212_567 ;
  wire \coordinator/m_iram/state_FSM_FFd3-In4_568 ;
  wire \coordinator/m_iram/state_FSM_FFd3-In5_569 ;
  wire \coordinator/m_iram/state_FSM_FFd3-In6_570 ;
  wire \coordinator/m_iram/state_FSM_FFd3-In7_571 ;
  wire \coordinator/m_iram/state_FSM_FFd3-In8_572 ;
  wire \coordinator/m_iram/_n0662_inv2_573 ;
  wire \coordinator/m_iram/_n0662_inv3_574 ;
  wire N35;
  wire N37;
  wire N39;
  wire N41;
  wire N43;
  wire N45;
  wire N46;
  wire \coordinator/m_dram_controller/wea_rstpot_589 ;
  wire \coordinator/m_iram/sda_dout_rstpot_590 ;
  wire \coordinator/m_iram/MemWea_rstpot_591 ;
  wire \coordinator/m_iram/WROperation_rstpot_592 ;
  wire \coordinator/m_dram/MemWea_rstpot_593 ;
  wire \coordinator/m_dram/WROperation_rstpot_594 ;
  wire \coordinator/m_dram/oe_rstpot_595 ;
  wire N49;
  wire N52;
  wire \coordinator/m_iram/cnt_1_rstpot_598 ;
  wire \coordinator/m_iram/oe_rstpot_599 ;
  wire N58;
  wire N60;
  wire N65;
  wire N67;
  wire N72;
  wire N73;
  wire N75;
  wire N76;
  wire N78;
  wire N79;
  wire N80;
  wire N81;
  wire N82;
  wire N83;
  wire N84;
  wire N86;
  wire N88;
  wire N90;
  wire N94;
  wire N96;
  wire \coordinator/m_clk_gen/clkD_620 ;
  wire N99;
  wire [15 : 0] \coordinator/m_iram/idataout ;
  wire [7 : 0] DI;
  wire [7 : 0] \coordinator/m_dram/ddataout ;
  wire [7 : 0] \coordinator/m_decoder/pre_dram ;
  wire [1 : 0] Result;
  wire [1 : 0] \coordinator/m_dram_controller/count ;
  wire [4 : 0] \coordinator/m_iram/cnt ;
  wire [7 : 0] \coordinator/m_iram/I2C_signal/sda_window ;
  wire [7 : 0] \coordinator/m_iram/I2C_signal/sck_window ;
  wire [7 : 0] \coordinator/m_iram/OpreatRegisterAddress ;
  wire [15 : 0] \coordinator/m_iram/WriteRegisterValue ;
  wire [15 : 0] \coordinator/m_iram/sda_data ;
  wire [15 : 0] \coordinator/m_iram/RAMValueIn ;
  wire [7 : 0] \coordinator/m_iram/RAMAddress ;
  wire [15 : 0] \coordinator/m_iram/ReadRegisterValue ;
  wire [3 : 0] \coordinator/m_dram/cnt ;
  wire [7 : 0] \coordinator/m_dram/I2C_signal/sda_window ;
  wire [7 : 0] \coordinator/m_dram/I2C_signal/sck_window ;
  wire [3 : 0] \coordinator/m_dram/_n0494 ;
  wire [7 : 0] \coordinator/m_dram/OpreatRegisterAddress ;
  wire [7 : 0] \coordinator/m_dram/WriteRegisterValue ;
  wire [7 : 0] \coordinator/m_dram/sda_data ;
  wire [7 : 0] \coordinator/m_dram/RAMValueIn ;
  wire [7 : 0] \coordinator/m_dram/RAMAddress ;
  wire [7 : 0] \coordinator/m_dram/ReadRegisterValue ;
  wire [5 : 0] \coordinator/m_clk_gen/count ;
  wire [5 : 0] \coordinator/m_clk_gen/Result ;
  wire [2 : 0] \carboncore/sel_B ;
  wire [1 : 0] \carboncore/sel_A ;
  wire [7 : 0] \carboncore/X_in ;
  wire [7 : 0] \carboncore/alu/Madd_res_Madd_lut ;
  wire [6 : 0] \carboncore/alu/Madd_res_Madd_cy ;
  wire [7 : 0] \carboncore/alu/B ;
  wire [6 : 0] \carboncore/alu/A ;
  GND   XST_GND (
    .G(N0)
  );
  FDR   \coordinator/m_dram_controller/count_0  (
    .C(GCLK_BUFGP_0),
    .D(Result[0]),
    .R(\coordinator/W_inv ),
    .Q(\coordinator/m_dram_controller/count [0])
  );
  FDR   \coordinator/m_dram_controller/count_1  (
    .C(GCLK_BUFGP_0),
    .D(Result[1]),
    .R(\coordinator/W_inv ),
    .Q(\coordinator/m_dram_controller/count [1])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \coordinator/m_iram/Mmux__n0304_4  (
    .I0(\coordinator/m_iram/cnt [1]),
    .I1(\coordinator/m_iram/cnt [0]),
    .I2(\coordinator/m_iram/ReadRegisterValue [1]),
    .I3(\coordinator/m_iram/ReadRegisterValue [0]),
    .I4(\coordinator/m_iram/ReadRegisterValue [2]),
    .I5(\coordinator/m_iram/ReadRegisterValue [3]),
    .O(\coordinator/m_iram/Mmux__n0304_4_85 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \coordinator/m_iram/Mmux__n0304_5  (
    .I0(\coordinator/m_iram/cnt [1]),
    .I1(\coordinator/m_iram/cnt [0]),
    .I2(\coordinator/m_iram/ReadRegisterValue [5]),
    .I3(\coordinator/m_iram/ReadRegisterValue [4]),
    .I4(\coordinator/m_iram/ReadRegisterValue [6]),
    .I5(\coordinator/m_iram/ReadRegisterValue [7]),
    .O(\coordinator/m_iram/Mmux__n0304_5_86 )
  );
  MUXF7   \coordinator/m_iram/Mmux__n0304_3_f7  (
    .I0(\coordinator/m_iram/Mmux__n0304_5_86 ),
    .I1(\coordinator/m_iram/Mmux__n0304_4_85 ),
    .S(\coordinator/m_iram/cnt [2]),
    .O(\coordinator/m_iram/Mmux__n0304_3_f7_87 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \coordinator/m_iram/Mmux__n0304_51  (
    .I0(\coordinator/m_iram/cnt [1]),
    .I1(\coordinator/m_iram/cnt [0]),
    .I2(\coordinator/m_iram/ReadRegisterValue [9]),
    .I3(\coordinator/m_iram/ReadRegisterValue [8]),
    .I4(\coordinator/m_iram/ReadRegisterValue [10]),
    .I5(\coordinator/m_iram/ReadRegisterValue [11]),
    .O(\coordinator/m_iram/Mmux__n0304_51_88 )
  );
  LUT5 #(
    .INIT ( 32'hEC64A820 ))
  \coordinator/m_iram/Mmux__n0304_6  (
    .I0(\coordinator/m_iram/cnt [1]),
    .I1(\coordinator/m_iram/cnt [0]),
    .I2(\coordinator/m_iram/ReadRegisterValue [13]),
    .I3(\coordinator/m_iram/ReadRegisterValue [12]),
    .I4(\coordinator/m_iram/ReadRegisterValue [14]),
    .O(\coordinator/m_iram/Mmux__n0304_6_89 )
  );
  MUXF7   \coordinator/m_iram/Mmux__n0304_4_f7  (
    .I0(\coordinator/m_iram/Mmux__n0304_6_89 ),
    .I1(\coordinator/m_iram/Mmux__n0304_51_88 ),
    .S(\coordinator/m_iram/cnt [2]),
    .O(\coordinator/m_iram/Mmux__n0304_4_f7_90 )
  );
  MUXF8   \coordinator/m_iram/Mmux__n0304_2_f8  (
    .I0(\coordinator/m_iram/Mmux__n0304_4_f7_90 ),
    .I1(\coordinator/m_iram/Mmux__n0304_3_f7_87 ),
    .S(\coordinator/m_iram/cnt [3]),
    .O(\coordinator/m_iram/_n0304 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \coordinator/m_iram/state_FSM_FFd1  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/state_FSM_FFd1-In_97 ),
    .Q(\coordinator/m_iram/state_FSM_FFd1_206 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \coordinator/m_iram/state_FSM_FFd2  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/state_FSM_FFd2-In_98 ),
    .Q(\coordinator/m_iram/state_FSM_FFd2_96 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \coordinator/m_iram/state_FSM_FFd3  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/state_FSM_FFd3-In ),
    .Q(\coordinator/m_iram/state_FSM_FFd3_205 )
  );
  FD   \coordinator/m_iram/I2C_signal/sck_rise  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/I2C_signal/sck_window[7]_GND_58_o_equal_8_o ),
    .Q(\coordinator/m_iram/I2C_signal/sck_rise_235 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_iram/I2C_signal/sda_window_0  (
    .C(GCLK_BUFGP_0),
    .D(N45),
    .Q(\coordinator/m_iram/I2C_signal/sda_window [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_iram/I2C_signal/sda_window_1  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/I2C_signal/sda_window [0]),
    .Q(\coordinator/m_iram/I2C_signal/sda_window [1])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_iram/I2C_signal/sda_window_2  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/I2C_signal/sda_window [1]),
    .Q(\coordinator/m_iram/I2C_signal/sda_window [2])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_iram/I2C_signal/sda_window_3  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/I2C_signal/sda_window [2]),
    .Q(\coordinator/m_iram/I2C_signal/sda_window [3])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_iram/I2C_signal/sda_window_4  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/I2C_signal/sda_window [3]),
    .Q(\coordinator/m_iram/I2C_signal/sda_window [4])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_iram/I2C_signal/sda_window_5  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/I2C_signal/sda_window [4]),
    .Q(\coordinator/m_iram/I2C_signal/sda_window [5])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_iram/I2C_signal/sda_window_6  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/I2C_signal/sda_window [5]),
    .Q(\coordinator/m_iram/I2C_signal/sda_window [6])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_iram/I2C_signal/sda_window_7  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/I2C_signal/sda_window [6]),
    .Q(\coordinator/m_iram/I2C_signal/sda_window [7])
  );
  FD   \coordinator/m_iram/I2C_signal/sck_fall  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/I2C_signal/sck_window[7]_PWR_17_o_equal_7_o ),
    .Q(\coordinator/m_iram/I2C_signal/sck_fall_236 )
  );
  FD   \coordinator/m_iram/I2C_signal/sck_high  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/I2C_signal/sck_window[7]_PWR_17_o_equal_5_o ),
    .Q(\coordinator/m_iram/I2C_signal/sck_high_234 )
  );
  FD   \coordinator/m_iram/I2C_signal/sda_fall  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/I2C_signal/sda_window[7]_PWR_17_o_equal_17_o ),
    .Q(\coordinator/m_iram/I2C_signal/sda_fall_233 )
  );
  FD   \coordinator/m_iram/I2C_signal/sda_rise  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/I2C_signal/sda_window[7]_GND_58_o_equal_18_o ),
    .Q(\coordinator/m_iram/I2C_signal/sda_rise_232 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_iram/I2C_signal/sck_window_0  (
    .C(GCLK_BUFGP_0),
    .D(ISCL_IBUF_4),
    .Q(\coordinator/m_iram/I2C_signal/sck_window [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_iram/I2C_signal/sck_window_1  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/I2C_signal/sck_window [0]),
    .Q(\coordinator/m_iram/I2C_signal/sck_window [1])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_iram/I2C_signal/sck_window_2  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/I2C_signal/sck_window [1]),
    .Q(\coordinator/m_iram/I2C_signal/sck_window [2])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_iram/I2C_signal/sck_window_3  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/I2C_signal/sck_window [2]),
    .Q(\coordinator/m_iram/I2C_signal/sck_window [3])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_iram/I2C_signal/sck_window_4  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/I2C_signal/sck_window [3]),
    .Q(\coordinator/m_iram/I2C_signal/sck_window [4])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_iram/I2C_signal/sck_window_5  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/I2C_signal/sck_window [4]),
    .Q(\coordinator/m_iram/I2C_signal/sck_window [5])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_iram/I2C_signal/sck_window_6  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/I2C_signal/sck_window [5]),
    .Q(\coordinator/m_iram/I2C_signal/sck_window [6])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_iram/I2C_signal/sck_window_7  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/I2C_signal/sck_window [6]),
    .Q(\coordinator/m_iram/I2C_signal/sck_window [7])
  );
  FDE   \coordinator/m_iram/OpreatRegisterAddress_7  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0688_inv ),
    .D(\coordinator/m_iram/sda_data [7]),
    .Q(\coordinator/m_iram/OpreatRegisterAddress [7])
  );
  FDE   \coordinator/m_iram/OpreatRegisterAddress_6  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0688_inv ),
    .D(\coordinator/m_iram/sda_data [6]),
    .Q(\coordinator/m_iram/OpreatRegisterAddress [6])
  );
  FDE   \coordinator/m_iram/OpreatRegisterAddress_5  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0688_inv ),
    .D(\coordinator/m_iram/sda_data [5]),
    .Q(\coordinator/m_iram/OpreatRegisterAddress [5])
  );
  FDE   \coordinator/m_iram/OpreatRegisterAddress_4  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0688_inv ),
    .D(\coordinator/m_iram/sda_data [4]),
    .Q(\coordinator/m_iram/OpreatRegisterAddress [4])
  );
  FDE   \coordinator/m_iram/OpreatRegisterAddress_3  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0688_inv ),
    .D(\coordinator/m_iram/sda_data [3]),
    .Q(\coordinator/m_iram/OpreatRegisterAddress [3])
  );
  FDE   \coordinator/m_iram/OpreatRegisterAddress_2  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0688_inv ),
    .D(\coordinator/m_iram/sda_data [2]),
    .Q(\coordinator/m_iram/OpreatRegisterAddress [2])
  );
  FDE   \coordinator/m_iram/OpreatRegisterAddress_1  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0688_inv ),
    .D(\coordinator/m_iram/sda_data [1]),
    .Q(\coordinator/m_iram/OpreatRegisterAddress [1])
  );
  FDE   \coordinator/m_iram/OpreatRegisterAddress_0  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0688_inv ),
    .D(\coordinator/m_iram/sda_data [0]),
    .Q(\coordinator/m_iram/OpreatRegisterAddress [0])
  );
  FDE   \coordinator/m_iram/sda_data_15  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0609_inv ),
    .D(\coordinator/m_iram/sda_data [14]),
    .Q(\coordinator/m_iram/sda_data [15])
  );
  FDE   \coordinator/m_iram/sda_data_14  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0609_inv ),
    .D(\coordinator/m_iram/sda_data [13]),
    .Q(\coordinator/m_iram/sda_data [14])
  );
  FDE   \coordinator/m_iram/sda_data_13  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0609_inv ),
    .D(\coordinator/m_iram/sda_data [12]),
    .Q(\coordinator/m_iram/sda_data [13])
  );
  FDE   \coordinator/m_iram/sda_data_12  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0609_inv ),
    .D(\coordinator/m_iram/sda_data [11]),
    .Q(\coordinator/m_iram/sda_data [12])
  );
  FDE   \coordinator/m_iram/sda_data_11  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0609_inv ),
    .D(\coordinator/m_iram/sda_data [10]),
    .Q(\coordinator/m_iram/sda_data [11])
  );
  FDE   \coordinator/m_iram/sda_data_10  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0609_inv ),
    .D(\coordinator/m_iram/sda_data [9]),
    .Q(\coordinator/m_iram/sda_data [10])
  );
  FDE   \coordinator/m_iram/sda_data_9  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0609_inv ),
    .D(\coordinator/m_iram/sda_data [8]),
    .Q(\coordinator/m_iram/sda_data [9])
  );
  FDE   \coordinator/m_iram/sda_data_8  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0609_inv ),
    .D(\coordinator/m_iram/sda_data [7]),
    .Q(\coordinator/m_iram/sda_data [8])
  );
  FDE   \coordinator/m_iram/sda_data_7  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0609_inv ),
    .D(\coordinator/m_iram/sda_data [6]),
    .Q(\coordinator/m_iram/sda_data [7])
  );
  FDE   \coordinator/m_iram/sda_data_6  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0609_inv ),
    .D(\coordinator/m_iram/sda_data [5]),
    .Q(\coordinator/m_iram/sda_data [6])
  );
  FDE   \coordinator/m_iram/sda_data_5  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0609_inv ),
    .D(\coordinator/m_iram/sda_data [4]),
    .Q(\coordinator/m_iram/sda_data [5])
  );
  FDE   \coordinator/m_iram/sda_data_4  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0609_inv ),
    .D(\coordinator/m_iram/sda_data [3]),
    .Q(\coordinator/m_iram/sda_data [4])
  );
  FDE   \coordinator/m_iram/sda_data_3  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0609_inv ),
    .D(\coordinator/m_iram/sda_data [2]),
    .Q(\coordinator/m_iram/sda_data [3])
  );
  FDE   \coordinator/m_iram/sda_data_2  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0609_inv ),
    .D(\coordinator/m_iram/sda_data [1]),
    .Q(\coordinator/m_iram/sda_data [2])
  );
  FDE   \coordinator/m_iram/sda_data_1  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0609_inv ),
    .D(\coordinator/m_iram/sda_data [0]),
    .Q(\coordinator/m_iram/sda_data [1])
  );
  FDE   \coordinator/m_iram/sda_data_0  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0609_inv ),
    .D(N45),
    .Q(\coordinator/m_iram/sda_data [0])
  );
  FDE   \coordinator/m_iram/idataout_15  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_iram/ReadRegisterValue [15]),
    .Q(\coordinator/m_iram/idataout [15])
  );
  FDE   \coordinator/m_iram/idataout_14  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_iram/ReadRegisterValue [14]),
    .Q(\coordinator/m_iram/idataout [14])
  );
  FDE   \coordinator/m_iram/idataout_13  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_iram/ReadRegisterValue [13]),
    .Q(\coordinator/m_iram/idataout [13])
  );
  FDE   \coordinator/m_iram/idataout_12  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_iram/ReadRegisterValue [12]),
    .Q(\coordinator/m_iram/idataout [12])
  );
  FDE   \coordinator/m_iram/idataout_11  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_iram/ReadRegisterValue [11]),
    .Q(\coordinator/m_iram/idataout [11])
  );
  FDE   \coordinator/m_iram/idataout_10  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_iram/ReadRegisterValue [10]),
    .Q(\coordinator/m_iram/idataout [10])
  );
  FDE   \coordinator/m_iram/idataout_9  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_iram/ReadRegisterValue [9]),
    .Q(\coordinator/m_iram/idataout [9])
  );
  FDE   \coordinator/m_iram/idataout_8  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_iram/ReadRegisterValue [8]),
    .Q(\coordinator/m_iram/idataout [8])
  );
  FDE   \coordinator/m_iram/idataout_7  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_iram/ReadRegisterValue [7]),
    .Q(\coordinator/m_iram/idataout [7])
  );
  FDE   \coordinator/m_iram/idataout_6  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_iram/ReadRegisterValue [6]),
    .Q(\coordinator/m_iram/idataout [6])
  );
  FDE   \coordinator/m_iram/idataout_5  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_iram/ReadRegisterValue [5]),
    .Q(\coordinator/m_iram/idataout [5])
  );
  FDE   \coordinator/m_iram/idataout_4  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_iram/ReadRegisterValue [4]),
    .Q(\coordinator/m_iram/idataout [4])
  );
  FDE   \coordinator/m_iram/idataout_3  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_iram/ReadRegisterValue [3]),
    .Q(\coordinator/m_iram/idataout [3])
  );
  FDE   \coordinator/m_iram/idataout_2  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_iram/ReadRegisterValue [2]),
    .Q(\coordinator/m_iram/idataout [2])
  );
  FDE   \coordinator/m_iram/idataout_1  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_iram/ReadRegisterValue [1]),
    .Q(\coordinator/m_iram/idataout [1])
  );
  FDE   \coordinator/m_iram/idataout_0  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_iram/ReadRegisterValue [0]),
    .Q(\coordinator/m_iram/idataout [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \coordinator/m_iram/WriteEna  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/wea_MemWea_MUX_190_o ),
    .Q(\coordinator/m_iram/WriteEna_207 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \coordinator/m_iram/WriteOperation  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0448_inv ),
    .D(\coordinator/m_iram/state[2]_WriteOperation_Mux_100_o ),
    .Q(\coordinator/m_iram/WriteOperation_185 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \coordinator/m_iram/cnt_4  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0581_inv ),
    .D(\coordinator/m_iram/_n0532[4] ),
    .Q(\coordinator/m_iram/cnt [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \coordinator/m_iram/cnt_3  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0581_inv ),
    .D(\coordinator/m_iram/_n0532[3] ),
    .Q(\coordinator/m_iram/cnt [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \coordinator/m_iram/cnt_2  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0581_inv ),
    .D(\coordinator/m_iram/_n0532[2] ),
    .Q(\coordinator/m_iram/cnt [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \coordinator/m_iram/cnt_0  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0581_inv ),
    .D(\coordinator/m_iram/_n0532[0] ),
    .Q(\coordinator/m_iram/cnt [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \coordinator/m_iram/ReadOperation  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0448_inv ),
    .D(\coordinator/m_iram/state[2]_ReadOperation_Mux_99_o ),
    .Q(\coordinator/m_iram/ReadOperation_186 )
  );
  FDE   \coordinator/m_iram/RAMValueIn_15  (
    .C(GCLK_BUFGP_0),
    .CE(IICING_IBUF_3),
    .D(\coordinator/m_iram/WriteRegisterValue [15]),
    .Q(\coordinator/m_iram/RAMValueIn [15])
  );
  FDE   \coordinator/m_iram/RAMValueIn_14  (
    .C(GCLK_BUFGP_0),
    .CE(IICING_IBUF_3),
    .D(\coordinator/m_iram/WriteRegisterValue [14]),
    .Q(\coordinator/m_iram/RAMValueIn [14])
  );
  FDE   \coordinator/m_iram/RAMValueIn_13  (
    .C(GCLK_BUFGP_0),
    .CE(IICING_IBUF_3),
    .D(\coordinator/m_iram/WriteRegisterValue [13]),
    .Q(\coordinator/m_iram/RAMValueIn [13])
  );
  FDE   \coordinator/m_iram/RAMValueIn_12  (
    .C(GCLK_BUFGP_0),
    .CE(IICING_IBUF_3),
    .D(\coordinator/m_iram/WriteRegisterValue [12]),
    .Q(\coordinator/m_iram/RAMValueIn [12])
  );
  FDE   \coordinator/m_iram/RAMValueIn_11  (
    .C(GCLK_BUFGP_0),
    .CE(IICING_IBUF_3),
    .D(\coordinator/m_iram/WriteRegisterValue [11]),
    .Q(\coordinator/m_iram/RAMValueIn [11])
  );
  FDE   \coordinator/m_iram/RAMValueIn_10  (
    .C(GCLK_BUFGP_0),
    .CE(IICING_IBUF_3),
    .D(\coordinator/m_iram/WriteRegisterValue [10]),
    .Q(\coordinator/m_iram/RAMValueIn [10])
  );
  FDE   \coordinator/m_iram/RAMValueIn_9  (
    .C(GCLK_BUFGP_0),
    .CE(IICING_IBUF_3),
    .D(\coordinator/m_iram/WriteRegisterValue [9]),
    .Q(\coordinator/m_iram/RAMValueIn [9])
  );
  FDE   \coordinator/m_iram/RAMValueIn_8  (
    .C(GCLK_BUFGP_0),
    .CE(IICING_IBUF_3),
    .D(\coordinator/m_iram/WriteRegisterValue [8]),
    .Q(\coordinator/m_iram/RAMValueIn [8])
  );
  FDE   \coordinator/m_iram/RAMValueIn_7  (
    .C(GCLK_BUFGP_0),
    .CE(IICING_IBUF_3),
    .D(\coordinator/m_iram/WriteRegisterValue [7]),
    .Q(\coordinator/m_iram/RAMValueIn [7])
  );
  FDE   \coordinator/m_iram/RAMValueIn_6  (
    .C(GCLK_BUFGP_0),
    .CE(IICING_IBUF_3),
    .D(\coordinator/m_iram/WriteRegisterValue [6]),
    .Q(\coordinator/m_iram/RAMValueIn [6])
  );
  FDE   \coordinator/m_iram/RAMValueIn_5  (
    .C(GCLK_BUFGP_0),
    .CE(IICING_IBUF_3),
    .D(\coordinator/m_iram/WriteRegisterValue [5]),
    .Q(\coordinator/m_iram/RAMValueIn [5])
  );
  FDE   \coordinator/m_iram/RAMValueIn_4  (
    .C(GCLK_BUFGP_0),
    .CE(IICING_IBUF_3),
    .D(\coordinator/m_iram/WriteRegisterValue [4]),
    .Q(\coordinator/m_iram/RAMValueIn [4])
  );
  FDE   \coordinator/m_iram/RAMValueIn_3  (
    .C(GCLK_BUFGP_0),
    .CE(IICING_IBUF_3),
    .D(\coordinator/m_iram/WriteRegisterValue [3]),
    .Q(\coordinator/m_iram/RAMValueIn [3])
  );
  FDE   \coordinator/m_iram/RAMValueIn_2  (
    .C(GCLK_BUFGP_0),
    .CE(IICING_IBUF_3),
    .D(\coordinator/m_iram/WriteRegisterValue [2]),
    .Q(\coordinator/m_iram/RAMValueIn [2])
  );
  FDE   \coordinator/m_iram/RAMValueIn_1  (
    .C(GCLK_BUFGP_0),
    .CE(IICING_IBUF_3),
    .D(\coordinator/m_iram/WriteRegisterValue [1]),
    .Q(\coordinator/m_iram/RAMValueIn [1])
  );
  FDE   \coordinator/m_iram/RAMValueIn_0  (
    .C(GCLK_BUFGP_0),
    .CE(IICING_IBUF_3),
    .D(\coordinator/m_iram/WriteRegisterValue [0]),
    .Q(\coordinator/m_iram/RAMValueIn [0])
  );
  FDE   \coordinator/m_iram/WriteRegisterValue_15  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0678_inv ),
    .D(\coordinator/m_iram/sda_data [15]),
    .Q(\coordinator/m_iram/WriteRegisterValue [15])
  );
  FDE   \coordinator/m_iram/WriteRegisterValue_14  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0678_inv ),
    .D(\coordinator/m_iram/sda_data [14]),
    .Q(\coordinator/m_iram/WriteRegisterValue [14])
  );
  FDE   \coordinator/m_iram/WriteRegisterValue_13  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0678_inv ),
    .D(\coordinator/m_iram/sda_data [13]),
    .Q(\coordinator/m_iram/WriteRegisterValue [13])
  );
  FDE   \coordinator/m_iram/WriteRegisterValue_12  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0678_inv ),
    .D(\coordinator/m_iram/sda_data [12]),
    .Q(\coordinator/m_iram/WriteRegisterValue [12])
  );
  FDE   \coordinator/m_iram/WriteRegisterValue_11  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0678_inv ),
    .D(\coordinator/m_iram/sda_data [11]),
    .Q(\coordinator/m_iram/WriteRegisterValue [11])
  );
  FDE   \coordinator/m_iram/WriteRegisterValue_10  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0678_inv ),
    .D(\coordinator/m_iram/sda_data [10]),
    .Q(\coordinator/m_iram/WriteRegisterValue [10])
  );
  FDE   \coordinator/m_iram/WriteRegisterValue_9  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0678_inv ),
    .D(\coordinator/m_iram/sda_data [9]),
    .Q(\coordinator/m_iram/WriteRegisterValue [9])
  );
  FDE   \coordinator/m_iram/WriteRegisterValue_8  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0678_inv ),
    .D(\coordinator/m_iram/sda_data [8]),
    .Q(\coordinator/m_iram/WriteRegisterValue [8])
  );
  FDE   \coordinator/m_iram/WriteRegisterValue_7  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0678_inv ),
    .D(\coordinator/m_iram/sda_data [7]),
    .Q(\coordinator/m_iram/WriteRegisterValue [7])
  );
  FDE   \coordinator/m_iram/WriteRegisterValue_6  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0678_inv ),
    .D(\coordinator/m_iram/sda_data [6]),
    .Q(\coordinator/m_iram/WriteRegisterValue [6])
  );
  FDE   \coordinator/m_iram/WriteRegisterValue_5  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0678_inv ),
    .D(\coordinator/m_iram/sda_data [5]),
    .Q(\coordinator/m_iram/WriteRegisterValue [5])
  );
  FDE   \coordinator/m_iram/WriteRegisterValue_4  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0678_inv ),
    .D(\coordinator/m_iram/sda_data [4]),
    .Q(\coordinator/m_iram/WriteRegisterValue [4])
  );
  FDE   \coordinator/m_iram/WriteRegisterValue_3  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0678_inv ),
    .D(\coordinator/m_iram/sda_data [3]),
    .Q(\coordinator/m_iram/WriteRegisterValue [3])
  );
  FDE   \coordinator/m_iram/WriteRegisterValue_2  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0678_inv ),
    .D(\coordinator/m_iram/sda_data [2]),
    .Q(\coordinator/m_iram/WriteRegisterValue [2])
  );
  FDE   \coordinator/m_iram/WriteRegisterValue_1  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0678_inv ),
    .D(\coordinator/m_iram/sda_data [1]),
    .Q(\coordinator/m_iram/WriteRegisterValue [1])
  );
  FDE   \coordinator/m_iram/WriteRegisterValue_0  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_iram/_n0678_inv ),
    .D(\coordinator/m_iram/sda_data [0]),
    .Q(\coordinator/m_iram/WriteRegisterValue [0])
  );
  FD   \coordinator/m_iram/RAMAddress_7  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<7> ),
    .Q(\coordinator/m_iram/RAMAddress [7])
  );
  FD   \coordinator/m_iram/RAMAddress_6  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<6> ),
    .Q(\coordinator/m_iram/RAMAddress [6])
  );
  FD   \coordinator/m_iram/RAMAddress_5  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<5> ),
    .Q(\coordinator/m_iram/RAMAddress [5])
  );
  FD   \coordinator/m_iram/RAMAddress_4  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<4> ),
    .Q(\coordinator/m_iram/RAMAddress [4])
  );
  FD   \coordinator/m_iram/RAMAddress_3  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<3> ),
    .Q(\coordinator/m_iram/RAMAddress [3])
  );
  FD   \coordinator/m_iram/RAMAddress_2  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<2> ),
    .Q(\coordinator/m_iram/RAMAddress [2])
  );
  FD   \coordinator/m_iram/RAMAddress_1  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<1> ),
    .Q(\coordinator/m_iram/RAMAddress [1])
  );
  FD   \coordinator/m_iram/RAMAddress_0  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<0> ),
    .Q(\coordinator/m_iram/RAMAddress [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \coordinator/m_dram/state_FSM_FFd1  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/state_FSM_FFd1-In_250 ),
    .Q(\coordinator/m_dram/state_FSM_FFd1_329 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \coordinator/m_dram/state_FSM_FFd2  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/state_FSM_FFd2-In ),
    .Q(\coordinator/m_dram/state_FSM_FFd2_249 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \coordinator/m_dram/state_FSM_FFd3  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/state_FSM_FFd3-In ),
    .Q(\coordinator/m_dram/state_FSM_FFd3_328 )
  );
  FD   \coordinator/m_dram/I2C_signal/sck_rise  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/I2C_signal/sck_window[7]_GND_58_o_equal_8_o ),
    .Q(\coordinator/m_dram/I2C_signal/sck_rise_358 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_dram/I2C_signal/sda_window_0  (
    .C(GCLK_BUFGP_0),
    .D(N46),
    .Q(\coordinator/m_dram/I2C_signal/sda_window [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_dram/I2C_signal/sda_window_1  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/I2C_signal/sda_window [0]),
    .Q(\coordinator/m_dram/I2C_signal/sda_window [1])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_dram/I2C_signal/sda_window_2  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/I2C_signal/sda_window [1]),
    .Q(\coordinator/m_dram/I2C_signal/sda_window [2])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_dram/I2C_signal/sda_window_3  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/I2C_signal/sda_window [2]),
    .Q(\coordinator/m_dram/I2C_signal/sda_window [3])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_dram/I2C_signal/sda_window_4  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/I2C_signal/sda_window [3]),
    .Q(\coordinator/m_dram/I2C_signal/sda_window [4])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_dram/I2C_signal/sda_window_5  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/I2C_signal/sda_window [4]),
    .Q(\coordinator/m_dram/I2C_signal/sda_window [5])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_dram/I2C_signal/sda_window_6  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/I2C_signal/sda_window [5]),
    .Q(\coordinator/m_dram/I2C_signal/sda_window [6])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_dram/I2C_signal/sda_window_7  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/I2C_signal/sda_window [6]),
    .Q(\coordinator/m_dram/I2C_signal/sda_window [7])
  );
  FD   \coordinator/m_dram/I2C_signal/sck_fall  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/I2C_signal/sck_window[7]_PWR_17_o_equal_7_o ),
    .Q(\coordinator/m_dram/I2C_signal/sck_fall_359 )
  );
  FD   \coordinator/m_dram/I2C_signal/sck_high  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/I2C_signal/sck_window[7]_PWR_17_o_equal_5_o ),
    .Q(\coordinator/m_dram/I2C_signal/sck_high_357 )
  );
  FD   \coordinator/m_dram/I2C_signal/sda_fall  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/I2C_signal/sda_window[7]_PWR_17_o_equal_17_o ),
    .Q(\coordinator/m_dram/I2C_signal/sda_fall_356 )
  );
  FD   \coordinator/m_dram/I2C_signal/sda_rise  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/I2C_signal/sda_window[7]_GND_58_o_equal_18_o ),
    .Q(\coordinator/m_dram/I2C_signal/sda_rise_355 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_dram/I2C_signal/sck_window_0  (
    .C(GCLK_BUFGP_0),
    .D(DSCL_IBUF_5),
    .Q(\coordinator/m_dram/I2C_signal/sck_window [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_dram/I2C_signal/sck_window_1  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/I2C_signal/sck_window [0]),
    .Q(\coordinator/m_dram/I2C_signal/sck_window [1])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_dram/I2C_signal/sck_window_2  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/I2C_signal/sck_window [1]),
    .Q(\coordinator/m_dram/I2C_signal/sck_window [2])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_dram/I2C_signal/sck_window_3  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/I2C_signal/sck_window [2]),
    .Q(\coordinator/m_dram/I2C_signal/sck_window [3])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_dram/I2C_signal/sck_window_4  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/I2C_signal/sck_window [3]),
    .Q(\coordinator/m_dram/I2C_signal/sck_window [4])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_dram/I2C_signal/sck_window_5  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/I2C_signal/sck_window [4]),
    .Q(\coordinator/m_dram/I2C_signal/sck_window [5])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_dram/I2C_signal/sck_window_6  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/I2C_signal/sck_window [5]),
    .Q(\coordinator/m_dram/I2C_signal/sck_window [6])
  );
  FD #(
    .INIT ( 1'b1 ))
  \coordinator/m_dram/I2C_signal/sck_window_7  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/I2C_signal/sck_window [6]),
    .Q(\coordinator/m_dram/I2C_signal/sck_window [7])
  );
  FDE   \coordinator/m_dram/OpreatRegisterAddress_7  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0651_inv ),
    .D(\coordinator/m_dram/sda_data [7]),
    .Q(\coordinator/m_dram/OpreatRegisterAddress [7])
  );
  FDE   \coordinator/m_dram/OpreatRegisterAddress_6  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0651_inv ),
    .D(\coordinator/m_dram/sda_data [6]),
    .Q(\coordinator/m_dram/OpreatRegisterAddress [6])
  );
  FDE   \coordinator/m_dram/OpreatRegisterAddress_5  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0651_inv ),
    .D(\coordinator/m_dram/sda_data [5]),
    .Q(\coordinator/m_dram/OpreatRegisterAddress [5])
  );
  FDE   \coordinator/m_dram/OpreatRegisterAddress_4  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0651_inv ),
    .D(\coordinator/m_dram/sda_data [4]),
    .Q(\coordinator/m_dram/OpreatRegisterAddress [4])
  );
  FDE   \coordinator/m_dram/OpreatRegisterAddress_3  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0651_inv ),
    .D(\coordinator/m_dram/sda_data [3]),
    .Q(\coordinator/m_dram/OpreatRegisterAddress [3])
  );
  FDE   \coordinator/m_dram/OpreatRegisterAddress_2  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0651_inv ),
    .D(\coordinator/m_dram/sda_data [2]),
    .Q(\coordinator/m_dram/OpreatRegisterAddress [2])
  );
  FDE   \coordinator/m_dram/OpreatRegisterAddress_1  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0651_inv ),
    .D(\coordinator/m_dram/sda_data [1]),
    .Q(\coordinator/m_dram/OpreatRegisterAddress [1])
  );
  FDE   \coordinator/m_dram/OpreatRegisterAddress_0  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0651_inv ),
    .D(\coordinator/m_dram/sda_data [0]),
    .Q(\coordinator/m_dram/OpreatRegisterAddress [0])
  );
  FDE   \coordinator/m_dram/sda_data_7  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0572_inv ),
    .D(\coordinator/m_dram/sda_data [6]),
    .Q(\coordinator/m_dram/sda_data [7])
  );
  FDE   \coordinator/m_dram/sda_data_6  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0572_inv ),
    .D(\coordinator/m_dram/sda_data [5]),
    .Q(\coordinator/m_dram/sda_data [6])
  );
  FDE   \coordinator/m_dram/sda_data_5  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0572_inv ),
    .D(\coordinator/m_dram/sda_data [4]),
    .Q(\coordinator/m_dram/sda_data [5])
  );
  FDE   \coordinator/m_dram/sda_data_4  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0572_inv ),
    .D(\coordinator/m_dram/sda_data [3]),
    .Q(\coordinator/m_dram/sda_data [4])
  );
  FDE   \coordinator/m_dram/sda_data_3  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0572_inv ),
    .D(\coordinator/m_dram/sda_data [2]),
    .Q(\coordinator/m_dram/sda_data [3])
  );
  FDE   \coordinator/m_dram/sda_data_2  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0572_inv ),
    .D(\coordinator/m_dram/sda_data [1]),
    .Q(\coordinator/m_dram/sda_data [2])
  );
  FDE   \coordinator/m_dram/sda_data_1  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0572_inv ),
    .D(\coordinator/m_dram/sda_data [0]),
    .Q(\coordinator/m_dram/sda_data [1])
  );
  FDE   \coordinator/m_dram/sda_data_0  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0572_inv ),
    .D(N46),
    .Q(\coordinator/m_dram/sda_data [0])
  );
  FDE   \coordinator/m_dram/sda_dout  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0625_inv ),
    .D(\coordinator/m_dram/_n0575 ),
    .Q(\coordinator/m_dram/sda_dout_314 )
  );
  FDE   \coordinator/m_dram/ddataout_7  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_dram/ReadRegisterValue [7]),
    .Q(\coordinator/m_dram/ddataout [7])
  );
  FDE   \coordinator/m_dram/ddataout_6  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_dram/ReadRegisterValue [6]),
    .Q(\coordinator/m_dram/ddataout [6])
  );
  FDE   \coordinator/m_dram/ddataout_5  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_dram/ReadRegisterValue [5]),
    .Q(\coordinator/m_dram/ddataout [5])
  );
  FDE   \coordinator/m_dram/ddataout_4  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_dram/ReadRegisterValue [4]),
    .Q(\coordinator/m_dram/ddataout [4])
  );
  FDE   \coordinator/m_dram/ddataout_3  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_dram/ReadRegisterValue [3]),
    .Q(\coordinator/m_dram/ddataout [3])
  );
  FDE   \coordinator/m_dram/ddataout_2  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_dram/ReadRegisterValue [2]),
    .Q(\coordinator/m_dram/ddataout [2])
  );
  FDE   \coordinator/m_dram/ddataout_1  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_dram/ReadRegisterValue [1]),
    .Q(\coordinator/m_dram/ddataout [1])
  );
  FDE   \coordinator/m_dram/ddataout_0  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/iicing_inv ),
    .D(\coordinator/m_dram/ReadRegisterValue [0]),
    .Q(\coordinator/m_dram/ddataout [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \coordinator/m_dram/WriteEna  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/wea_MemWea_MUX_115_o ),
    .Q(\coordinator/m_dram/WriteEna_330 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \coordinator/m_dram/WriteOperation  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0410_inv ),
    .D(\coordinator/m_dram/state[2]_WriteOperation_Mux_92_o ),
    .Q(\coordinator/m_dram/WriteOperation_324 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \coordinator/m_dram/cnt_3  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0544_inv ),
    .D(\coordinator/m_dram/_n0494 [3]),
    .Q(\coordinator/m_dram/cnt [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \coordinator/m_dram/cnt_2  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0544_inv ),
    .D(\coordinator/m_dram/_n0494 [2]),
    .Q(\coordinator/m_dram/cnt [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \coordinator/m_dram/cnt_1  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0544_inv ),
    .D(\coordinator/m_dram/_n0494 [1]),
    .Q(\coordinator/m_dram/cnt [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \coordinator/m_dram/cnt_0  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0544_inv ),
    .D(\coordinator/m_dram/_n0494 [0]),
    .Q(\coordinator/m_dram/cnt [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \coordinator/m_dram/ReadOperation  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0410_inv ),
    .D(\coordinator/m_dram/state[2]_ReadOperation_Mux_91_o ),
    .Q(\coordinator/m_dram/ReadOperation_325 )
  );
  FD   \coordinator/m_dram/RAMValueIn_7  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<7> ),
    .Q(\coordinator/m_dram/RAMValueIn [7])
  );
  FD   \coordinator/m_dram/RAMValueIn_6  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<6> ),
    .Q(\coordinator/m_dram/RAMValueIn [6])
  );
  FD   \coordinator/m_dram/RAMValueIn_5  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<5> ),
    .Q(\coordinator/m_dram/RAMValueIn [5])
  );
  FD   \coordinator/m_dram/RAMValueIn_4  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<4> ),
    .Q(\coordinator/m_dram/RAMValueIn [4])
  );
  FD   \coordinator/m_dram/RAMValueIn_3  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<3> ),
    .Q(\coordinator/m_dram/RAMValueIn [3])
  );
  FD   \coordinator/m_dram/RAMValueIn_2  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<2> ),
    .Q(\coordinator/m_dram/RAMValueIn [2])
  );
  FD   \coordinator/m_dram/RAMValueIn_1  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<1> ),
    .Q(\coordinator/m_dram/RAMValueIn [1])
  );
  FD   \coordinator/m_dram/RAMValueIn_0  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<0> ),
    .Q(\coordinator/m_dram/RAMValueIn [0])
  );
  FDE   \coordinator/m_dram/WriteRegisterValue_7  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0641_inv_282 ),
    .D(\coordinator/m_dram/sda_data [7]),
    .Q(\coordinator/m_dram/WriteRegisterValue [7])
  );
  FDE   \coordinator/m_dram/WriteRegisterValue_6  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0641_inv_282 ),
    .D(\coordinator/m_dram/sda_data [6]),
    .Q(\coordinator/m_dram/WriteRegisterValue [6])
  );
  FDE   \coordinator/m_dram/WriteRegisterValue_5  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0641_inv_282 ),
    .D(\coordinator/m_dram/sda_data [5]),
    .Q(\coordinator/m_dram/WriteRegisterValue [5])
  );
  FDE   \coordinator/m_dram/WriteRegisterValue_4  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0641_inv_282 ),
    .D(\coordinator/m_dram/sda_data [4]),
    .Q(\coordinator/m_dram/WriteRegisterValue [4])
  );
  FDE   \coordinator/m_dram/WriteRegisterValue_3  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0641_inv_282 ),
    .D(\coordinator/m_dram/sda_data [3]),
    .Q(\coordinator/m_dram/WriteRegisterValue [3])
  );
  FDE   \coordinator/m_dram/WriteRegisterValue_2  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0641_inv_282 ),
    .D(\coordinator/m_dram/sda_data [2]),
    .Q(\coordinator/m_dram/WriteRegisterValue [2])
  );
  FDE   \coordinator/m_dram/WriteRegisterValue_1  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0641_inv_282 ),
    .D(\coordinator/m_dram/sda_data [1]),
    .Q(\coordinator/m_dram/WriteRegisterValue [1])
  );
  FDE   \coordinator/m_dram/WriteRegisterValue_0  (
    .C(GCLK_BUFGP_0),
    .CE(\coordinator/m_dram/_n0641_inv_282 ),
    .D(\coordinator/m_dram/sda_data [0]),
    .Q(\coordinator/m_dram/WriteRegisterValue [0])
  );
  FD   \coordinator/m_dram/RAMAddress_7  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<7> ),
    .Q(\coordinator/m_dram/RAMAddress [7])
  );
  FD   \coordinator/m_dram/RAMAddress_6  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<6> ),
    .Q(\coordinator/m_dram/RAMAddress [6])
  );
  FD   \coordinator/m_dram/RAMAddress_5  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<5> ),
    .Q(\coordinator/m_dram/RAMAddress [5])
  );
  FD   \coordinator/m_dram/RAMAddress_4  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<4> ),
    .Q(\coordinator/m_dram/RAMAddress [4])
  );
  FD   \coordinator/m_dram/RAMAddress_3  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<3> ),
    .Q(\coordinator/m_dram/RAMAddress [3])
  );
  FD   \coordinator/m_dram/RAMAddress_2  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<2> ),
    .Q(\coordinator/m_dram/RAMAddress [2])
  );
  FD   \coordinator/m_dram/RAMAddress_1  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<1> ),
    .Q(\coordinator/m_dram/RAMAddress [1])
  );
  FD   \coordinator/m_dram/RAMAddress_0  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<0> ),
    .Q(\coordinator/m_dram/RAMAddress [0])
  );
  FDR   \coordinator/m_decoder/pre_inst_15  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\coordinator/m_iram/idataout [15]),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_inst[15] )
  );
  FDR   \coordinator/m_decoder/pre_inst_14  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\coordinator/m_iram/idataout [14]),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_inst[14] )
  );
  FDR   \coordinator/m_decoder/pre_inst_13  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\coordinator/m_iram/idataout [13]),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_inst[13] )
  );
  FDR   \coordinator/m_decoder/pre_inst_10  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\coordinator/m_iram/idataout [10]),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_inst[10] )
  );
  FDR   \coordinator/m_decoder/pre_inst_9  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\coordinator/m_iram/idataout [9]),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_inst[9] )
  );
  FDR   \coordinator/m_decoder/pre_inst_8  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\coordinator/m_iram/idataout [8]),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_inst[8] )
  );
  FDR   \coordinator/m_decoder/pre_inst_7  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\coordinator/m_iram/idataout [7]),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_inst[7] )
  );
  FDR   \coordinator/m_decoder/pre_inst_6  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\coordinator/m_iram/idataout [6]),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_inst[6] )
  );
  FDR   \coordinator/m_decoder/pre_inst_5  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\coordinator/m_iram/idataout [5]),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_inst[5] )
  );
  FDR   \coordinator/m_decoder/pre_inst_4  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\coordinator/m_iram/idataout [4]),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_inst[4] )
  );
  FDR   \coordinator/m_decoder/pre_inst_3  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\coordinator/m_iram/idataout [3]),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_inst[3] )
  );
  FDR   \coordinator/m_decoder/pre_inst_2  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\coordinator/m_iram/idataout [2]),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_inst[2] )
  );
  FDR   \coordinator/m_decoder/pre_inst_1  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\coordinator/m_iram/idataout [1]),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_inst[1] )
  );
  FDR   \coordinator/m_decoder/pre_inst_0  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\coordinator/m_iram/idataout [0]),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_inst[0] )
  );
  FDR   \coordinator/m_decoder/pre_dram_7  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\carboncore/X/res_7_42 ),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_dram [7])
  );
  FDR   \coordinator/m_decoder/pre_dram_6  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\carboncore/X/res_6_43 ),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_dram [6])
  );
  FDR   \coordinator/m_decoder/pre_dram_5  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\carboncore/X/res_5_44 ),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_dram [5])
  );
  FDR   \coordinator/m_decoder/pre_dram_4  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\carboncore/X/res_4_45 ),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_dram [4])
  );
  FDR   \coordinator/m_decoder/pre_dram_3  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\carboncore/X/res_3_46 ),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_dram [3])
  );
  FDR   \coordinator/m_decoder/pre_dram_2  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\carboncore/X/res_2_47 ),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_dram [2])
  );
  FDR   \coordinator/m_decoder/pre_dram_1  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\carboncore/X/res_1_48 ),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_dram [1])
  );
  FDR   \coordinator/m_decoder/pre_dram_0  (
    .C(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .D(\carboncore/X/res_0_49 ),
    .R(\coordinator/m_decoder/END_inv ),
    .Q(\coordinator/m_decoder/pre_dram [0])
  );
  FDR   \coordinator/m_clk_gen/count_5  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_clk_gen/Result [5]),
    .R(RESET_IBUF_1),
    .Q(\coordinator/m_clk_gen/count [5])
  );
  FDR   \coordinator/m_clk_gen/count_4  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_clk_gen/Result [4]),
    .R(RESET_IBUF_1),
    .Q(\coordinator/m_clk_gen/count [4])
  );
  FDR   \coordinator/m_clk_gen/count_3  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_clk_gen/Result [3]),
    .R(RESET_IBUF_1),
    .Q(\coordinator/m_clk_gen/count [3])
  );
  FDR   \coordinator/m_clk_gen/count_2  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_clk_gen/Result [2]),
    .R(RESET_IBUF_1),
    .Q(\coordinator/m_clk_gen/count [2])
  );
  FDR   \coordinator/m_clk_gen/count_1  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_clk_gen/Result [1]),
    .R(RESET_IBUF_1),
    .Q(\coordinator/m_clk_gen/count [1])
  );
  FDR   \coordinator/m_clk_gen/count_0  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_clk_gen/Result [0]),
    .R(RESET_IBUF_1),
    .Q(\coordinator/m_clk_gen/count [0])
  );
  FDR   \coordinator/m_clk_gen/clkD  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_clk_gen/count[5]_clkD_Select_25_o ),
    .R(RESET_IBUF_1),
    .Q(\coordinator/m_clk_gen/clkD_620 )
  );
  FDR   \coordinator/m_clk_gen/clkB  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_clk_gen/count[5]_PWR_11_o_Select_20_o ),
    .R(RESET_IBUF_1),
    .Q(\coordinator/m_clk_gen/clkB_33 )
  );
  FDR   \coordinator/m_clk_gen/clkA  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_clk_gen/count[5]_clkA_Select_27_o ),
    .R(RESET_IBUF_1),
    .Q(\coordinator/m_clk_gen/clkA_32 )
  );
  FDR   \coordinator/m_clk_gen/clkC  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_clk_gen/count[5]_clkC_Select_23_o ),
    .R(RESET_IBUF_1),
    .Q(\coordinator/m_clk_gen/clkC_62 )
  );
  LD   \carboncore/acc_update_reg/res  (
    .D(\carboncore/acc_update_reg/in[0]_GND_3_o_MUX_1_o ),
    .G(\coordinator/m_clk_gen/clkA_32 ),
    .Q(\carboncore/acc_update_reg/res_447 )
  );
  LD   \carboncore/br_taken_reg/res  (
    .D(\carboncore/br_taken_reg/in[0]_GND_3_o_MUX_1_o ),
    .G(\coordinator/m_clk_gen/clkA_32 ),
    .Q(\carboncore/br_taken_reg/res_446 )
  );
  XORCY   \carboncore/alu/Madd_res_Madd_xor<7>  (
    .CI(\carboncore/alu/Madd_res_Madd_cy [6]),
    .LI(\carboncore/alu/Madd_res_Madd_lut [7]),
    .O(\carboncore/X_in [7])
  );
  XORCY   \carboncore/alu/Madd_res_Madd_xor<6>  (
    .CI(\carboncore/alu/Madd_res_Madd_cy [5]),
    .LI(\carboncore/alu/Madd_res_Madd_lut [6]),
    .O(\carboncore/X_in [6])
  );
  MUXCY   \carboncore/alu/Madd_res_Madd_cy<6>  (
    .CI(\carboncore/alu/Madd_res_Madd_cy [5]),
    .DI(\carboncore/alu/A [6]),
    .S(\carboncore/alu/Madd_res_Madd_lut [6]),
    .O(\carboncore/alu/Madd_res_Madd_cy [6])
  );
  XORCY   \carboncore/alu/Madd_res_Madd_xor<5>  (
    .CI(\carboncore/alu/Madd_res_Madd_cy [4]),
    .LI(\carboncore/alu/Madd_res_Madd_lut [5]),
    .O(\carboncore/X_in [5])
  );
  MUXCY   \carboncore/alu/Madd_res_Madd_cy<5>  (
    .CI(\carboncore/alu/Madd_res_Madd_cy [4]),
    .DI(\carboncore/alu/A [5]),
    .S(\carboncore/alu/Madd_res_Madd_lut [5]),
    .O(\carboncore/alu/Madd_res_Madd_cy [5])
  );
  XORCY   \carboncore/alu/Madd_res_Madd_xor<4>  (
    .CI(\carboncore/alu/Madd_res_Madd_cy [3]),
    .LI(\carboncore/alu/Madd_res_Madd_lut [4]),
    .O(\carboncore/X_in [4])
  );
  MUXCY   \carboncore/alu/Madd_res_Madd_cy<4>  (
    .CI(\carboncore/alu/Madd_res_Madd_cy [3]),
    .DI(\carboncore/alu/A [4]),
    .S(\carboncore/alu/Madd_res_Madd_lut [4]),
    .O(\carboncore/alu/Madd_res_Madd_cy [4])
  );
  XORCY   \carboncore/alu/Madd_res_Madd_xor<3>  (
    .CI(\carboncore/alu/Madd_res_Madd_cy [2]),
    .LI(\carboncore/alu/Madd_res_Madd_lut [3]),
    .O(\carboncore/X_in [3])
  );
  MUXCY   \carboncore/alu/Madd_res_Madd_cy<3>  (
    .CI(\carboncore/alu/Madd_res_Madd_cy [2]),
    .DI(\carboncore/alu/A [3]),
    .S(\carboncore/alu/Madd_res_Madd_lut [3]),
    .O(\carboncore/alu/Madd_res_Madd_cy [3])
  );
  XORCY   \carboncore/alu/Madd_res_Madd_xor<2>  (
    .CI(\carboncore/alu/Madd_res_Madd_cy [1]),
    .LI(\carboncore/alu/Madd_res_Madd_lut [2]),
    .O(\carboncore/X_in [2])
  );
  MUXCY   \carboncore/alu/Madd_res_Madd_cy<2>  (
    .CI(\carboncore/alu/Madd_res_Madd_cy [1]),
    .DI(\carboncore/alu/A [2]),
    .S(\carboncore/alu/Madd_res_Madd_lut [2]),
    .O(\carboncore/alu/Madd_res_Madd_cy [2])
  );
  XORCY   \carboncore/alu/Madd_res_Madd_xor<1>  (
    .CI(\carboncore/alu/Madd_res_Madd_cy [0]),
    .LI(\carboncore/alu/Madd_res_Madd_lut [1]),
    .O(\carboncore/X_in [1])
  );
  MUXCY   \carboncore/alu/Madd_res_Madd_cy<1>  (
    .CI(\carboncore/alu/Madd_res_Madd_cy [0]),
    .DI(\carboncore/alu/A [1]),
    .S(\carboncore/alu/Madd_res_Madd_lut [1]),
    .O(\carboncore/alu/Madd_res_Madd_cy [1])
  );
  XORCY   \carboncore/alu/Madd_res_Madd_xor<0>  (
    .CI(\carboncore/CI ),
    .LI(\carboncore/alu/Madd_res_Madd_lut [0]),
    .O(\carboncore/X_in [0])
  );
  MUXCY   \carboncore/alu/Madd_res_Madd_cy<0>  (
    .CI(\carboncore/CI ),
    .DI(\carboncore/alu/A [0]),
    .S(\carboncore/alu/Madd_res_Madd_lut [0]),
    .O(\carboncore/alu/Madd_res_Madd_cy [0])
  );
  LD   \carboncore/X/res_7  (
    .D(\carboncore/X/in[7]_GND_5_o_mux_2_OUT<7> ),
    .G(\coordinator/m_clk_gen/clkA_32 ),
    .Q(\carboncore/X/res_7_42 )
  );
  LD   \carboncore/X/res_0  (
    .D(\carboncore/X/in[7]_GND_5_o_mux_2_OUT<0> ),
    .G(\coordinator/m_clk_gen/clkA_32 ),
    .Q(\carboncore/X/res_0_49 )
  );
  LD   \carboncore/X/res_1  (
    .D(\carboncore/X/in[7]_GND_5_o_mux_2_OUT<1> ),
    .G(\coordinator/m_clk_gen/clkA_32 ),
    .Q(\carboncore/X/res_1_48 )
  );
  LD   \carboncore/X/res_2  (
    .D(\carboncore/X/in[7]_GND_5_o_mux_2_OUT<2> ),
    .G(\coordinator/m_clk_gen/clkA_32 ),
    .Q(\carboncore/X/res_2_47 )
  );
  LD   \carboncore/X/res_3  (
    .D(\carboncore/X/in[7]_GND_5_o_mux_2_OUT<3> ),
    .G(\coordinator/m_clk_gen/clkA_32 ),
    .Q(\carboncore/X/res_3_46 )
  );
  LD   \carboncore/X/res_4  (
    .D(\carboncore/X/in[7]_GND_5_o_mux_2_OUT<4> ),
    .G(\coordinator/m_clk_gen/clkA_32 ),
    .Q(\carboncore/X/res_4_45 )
  );
  LD   \carboncore/X/res_5  (
    .D(\carboncore/X/in[7]_GND_5_o_mux_2_OUT<5> ),
    .G(\coordinator/m_clk_gen/clkA_32 ),
    .Q(\carboncore/X/res_5_44 )
  );
  LD   \carboncore/X/res_6  (
    .D(\carboncore/X/in[7]_GND_5_o_mux_2_OUT<6> ),
    .G(\coordinator/m_clk_gen/clkA_32 ),
    .Q(\carboncore/X/res_6_43 )
  );
  LD   \carboncore/pc_plus_1/res_7  (
    .D(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<7>_495 ),
    .G(\coordinator/m_clk_gen/clkA_32 ),
    .Q(\carboncore/pc_plus_1/res_7_445 )
  );
  LD   \carboncore/pc_plus_1/res_1  (
    .D(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<1> ),
    .G(\coordinator/m_clk_gen/clkA_32 ),
    .Q(\carboncore/pc_plus_1/res_1_439 )
  );
  LD   \carboncore/pc_plus_1/res_2  (
    .D(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<2> ),
    .G(\coordinator/m_clk_gen/clkA_32 ),
    .Q(\carboncore/pc_plus_1/res_2_440 )
  );
  LD   \carboncore/pc_plus_1/res_0  (
    .D(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<0> ),
    .G(\coordinator/m_clk_gen/clkA_32 ),
    .Q(\carboncore/pc_plus_1/res_0_438 )
  );
  LD   \carboncore/pc_plus_1/res_3  (
    .D(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<3> ),
    .G(\coordinator/m_clk_gen/clkA_32 ),
    .Q(\carboncore/pc_plus_1/res_3_441 )
  );
  LD   \carboncore/pc_plus_1/res_4  (
    .D(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<4> ),
    .G(\coordinator/m_clk_gen/clkA_32 ),
    .Q(\carboncore/pc_plus_1/res_4_442 )
  );
  LD   \carboncore/pc_plus_1/res_6  (
    .D(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<6> ),
    .G(\coordinator/m_clk_gen/clkA_32 ),
    .Q(\carboncore/pc_plus_1/res_6_444 )
  );
  LD   \carboncore/pc_plus_1/res_5  (
    .D(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<5> ),
    .G(\coordinator/m_clk_gen/clkA_32 ),
    .Q(\carboncore/pc_plus_1/res_5_443 )
  );
  LD   \carboncore/pc/reg_pc_7  (
    .D(\carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<7> ),
    .G(\coordinator/m_clk_gen/clkB_33 ),
    .Q(\carboncore/pc/reg_pc_7_34 )
  );
  LD   \carboncore/pc/reg_pc_0  (
    .D(\carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<0> ),
    .G(\coordinator/m_clk_gen/clkB_33 ),
    .Q(\carboncore/pc/reg_pc_0_41 )
  );
  LD   \carboncore/pc/reg_pc_2  (
    .D(\carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<2> ),
    .G(\coordinator/m_clk_gen/clkB_33 ),
    .Q(\carboncore/pc/reg_pc_2_39 )
  );
  LD   \carboncore/pc/reg_pc_3  (
    .D(\carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<3> ),
    .G(\coordinator/m_clk_gen/clkB_33 ),
    .Q(\carboncore/pc/reg_pc_3_38 )
  );
  LD   \carboncore/pc/reg_pc_1  (
    .D(\carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<1> ),
    .G(\coordinator/m_clk_gen/clkB_33 ),
    .Q(\carboncore/pc/reg_pc_1_40 )
  );
  LD   \carboncore/pc/reg_pc_5  (
    .D(\carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<5> ),
    .G(\coordinator/m_clk_gen/clkB_33 ),
    .Q(\carboncore/pc/reg_pc_5_36 )
  );
  LD   \carboncore/pc/reg_pc_6  (
    .D(\carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<6> ),
    .G(\coordinator/m_clk_gen/clkB_33 ),
    .Q(\carboncore/pc/reg_pc_6_35 )
  );
  LD   \carboncore/pc/reg_pc_4  (
    .D(\carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<4> ),
    .G(\coordinator/m_clk_gen/clkB_33 ),
    .Q(\carboncore/pc/reg_pc_4_37 )
  );
  LD   \carboncore/acc/reg_acc_7  (
    .D(\carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<7> ),
    .G(\coordinator/m_clk_gen/clkB_33 ),
    .Q(\carboncore/acc/reg_acc_7_437 )
  );
  LD   \carboncore/acc/reg_acc_0  (
    .D(\carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<0> ),
    .G(\coordinator/m_clk_gen/clkB_33 ),
    .Q(\carboncore/acc/reg_acc_0_430 )
  );
  LD   \carboncore/acc/reg_acc_2  (
    .D(\carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<2> ),
    .G(\coordinator/m_clk_gen/clkB_33 ),
    .Q(\carboncore/acc/reg_acc_2_432 )
  );
  LD   \carboncore/acc/reg_acc_3  (
    .D(\carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<3> ),
    .G(\coordinator/m_clk_gen/clkB_33 ),
    .Q(\carboncore/acc/reg_acc_3_433 )
  );
  LD   \carboncore/acc/reg_acc_1  (
    .D(\carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<1> ),
    .G(\coordinator/m_clk_gen/clkB_33 ),
    .Q(\carboncore/acc/reg_acc_1_431 )
  );
  LD   \carboncore/acc/reg_acc_5  (
    .D(\carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<5> ),
    .G(\coordinator/m_clk_gen/clkB_33 ),
    .Q(\carboncore/acc/reg_acc_5_435 )
  );
  LD   \carboncore/acc/reg_acc_6  (
    .D(\carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<6> ),
    .G(\coordinator/m_clk_gen/clkB_33 ),
    .Q(\carboncore/acc/reg_acc_6_436 )
  );
  LD   \carboncore/acc/reg_acc_4  (
    .D(\carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<4> ),
    .G(\coordinator/m_clk_gen/clkB_33 ),
    .Q(\carboncore/acc/reg_acc_4_434 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \coordinator/m_dram_controller/Mcount_count_xor<1>11  (
    .I0(\coordinator/m_dram_controller/count [1]),
    .I1(\coordinator/m_dram_controller/count [0]),
    .O(Result[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_iram/Mmux_iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT11  (
    .I0(IICING_IBUF_3),
    .I1(\carboncore/pc/reg_pc_0_41 ),
    .I2(\coordinator/m_iram/OpreatRegisterAddress [0]),
    .O(\coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_iram/Mmux_iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT21  (
    .I0(IICING_IBUF_3),
    .I1(\carboncore/pc/reg_pc_1_40 ),
    .I2(\coordinator/m_iram/OpreatRegisterAddress [1]),
    .O(\coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_iram/Mmux_iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT31  (
    .I0(IICING_IBUF_3),
    .I1(\carboncore/pc/reg_pc_2_39 ),
    .I2(\coordinator/m_iram/OpreatRegisterAddress [2]),
    .O(\coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_iram/Mmux_iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT41  (
    .I0(IICING_IBUF_3),
    .I1(\carboncore/pc/reg_pc_3_38 ),
    .I2(\coordinator/m_iram/OpreatRegisterAddress [3]),
    .O(\coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_iram/Mmux_iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT51  (
    .I0(IICING_IBUF_3),
    .I1(\carboncore/pc/reg_pc_4_37 ),
    .I2(\coordinator/m_iram/OpreatRegisterAddress [4]),
    .O(\coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_iram/Mmux_iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT61  (
    .I0(IICING_IBUF_3),
    .I1(\carboncore/pc/reg_pc_5_36 ),
    .I2(\coordinator/m_iram/OpreatRegisterAddress [5]),
    .O(\coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_iram/Mmux_iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT71  (
    .I0(IICING_IBUF_3),
    .I1(\carboncore/pc/reg_pc_6_35 ),
    .I2(\coordinator/m_iram/OpreatRegisterAddress [6]),
    .O(\coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_iram/Mmux_iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT81  (
    .I0(IICING_IBUF_3),
    .I1(\carboncore/pc/reg_pc_7_34 ),
    .I2(\coordinator/m_iram/OpreatRegisterAddress [7]),
    .O(\coordinator/m_iram/iaddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \coordinator/m_iram/Mmux_wea_MemWea_MUX_190_o11  (
    .I0(IICING_IBUF_3),
    .I1(\coordinator/m_iram/MemWea_187 ),
    .O(\coordinator/m_iram/wea_MemWea_MUX_190_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \coordinator/m_iram/sck_high_sda_rise_AND_98_o1  (
    .I0(\coordinator/m_iram/I2C_signal/sda_rise_232 ),
    .I1(\coordinator/m_iram/I2C_signal/sck_high_234 ),
    .O(\coordinator/m_iram/sck_high_sda_rise_AND_98_o )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \coordinator/m_iram/WriteOperation_cnt[4]_AND_104_o1  (
    .I0(\coordinator/m_iram/I2C_signal/sck_rise_235 ),
    .I1(\coordinator/m_iram/WriteOperation_185 ),
    .I2(\coordinator/m_iram/cnt [4]),
    .O(\coordinator/m_iram/WriteOperation_cnt[4]_AND_104_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_dram/Mmux_wea_MemWea_MUX_115_o11  (
    .I0(IICING_IBUF_3),
    .I1(\coordinator/m_dram_controller/wea_52 ),
    .I2(\coordinator/m_dram/MemWea_326 ),
    .O(\coordinator/m_dram/wea_MemWea_MUX_115_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_dram/Mmux_ddatain[7]_WriteRegisterValue[7]_mux_2_OUT11  (
    .I0(IICING_IBUF_3),
    .I1(\coordinator/m_decoder/pre_dram [0]),
    .I2(\coordinator/m_dram/WriteRegisterValue [0]),
    .O(\coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_dram/Mmux_ddatain[7]_WriteRegisterValue[7]_mux_2_OUT21  (
    .I0(IICING_IBUF_3),
    .I1(\coordinator/m_decoder/pre_dram [1]),
    .I2(\coordinator/m_dram/WriteRegisterValue [1]),
    .O(\coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_dram/Mmux_ddatain[7]_WriteRegisterValue[7]_mux_2_OUT31  (
    .I0(IICING_IBUF_3),
    .I1(\coordinator/m_decoder/pre_dram [2]),
    .I2(\coordinator/m_dram/WriteRegisterValue [2]),
    .O(\coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_dram/Mmux_ddatain[7]_WriteRegisterValue[7]_mux_2_OUT41  (
    .I0(IICING_IBUF_3),
    .I1(\coordinator/m_decoder/pre_dram [3]),
    .I2(\coordinator/m_dram/WriteRegisterValue [3]),
    .O(\coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_dram/Mmux_ddatain[7]_WriteRegisterValue[7]_mux_2_OUT51  (
    .I0(IICING_IBUF_3),
    .I1(\coordinator/m_decoder/pre_dram [4]),
    .I2(\coordinator/m_dram/WriteRegisterValue [4]),
    .O(\coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_dram/Mmux_ddatain[7]_WriteRegisterValue[7]_mux_2_OUT61  (
    .I0(IICING_IBUF_3),
    .I1(\coordinator/m_decoder/pre_dram [5]),
    .I2(\coordinator/m_dram/WriteRegisterValue [5]),
    .O(\coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_dram/Mmux_ddatain[7]_WriteRegisterValue[7]_mux_2_OUT71  (
    .I0(IICING_IBUF_3),
    .I1(\coordinator/m_decoder/pre_dram [6]),
    .I2(\coordinator/m_dram/WriteRegisterValue [6]),
    .O(\coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_dram/Mmux_ddatain[7]_WriteRegisterValue[7]_mux_2_OUT81  (
    .I0(IICING_IBUF_3),
    .I1(\coordinator/m_decoder/pre_dram [7]),
    .I2(\coordinator/m_dram/WriteRegisterValue [7]),
    .O(\coordinator/m_dram/ddatain[7]_WriteRegisterValue[7]_mux_2_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \coordinator/m_dram/ReadOperation_cnt[3]_AND_79_o1  (
    .I0(\coordinator/m_dram/ReadOperation_325 ),
    .I1(\coordinator/m_dram/I2C_signal/sck_fall_359 ),
    .I2(\coordinator/m_dram/cnt [3]),
    .O(\coordinator/m_dram/ReadOperation_cnt[3]_AND_79_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \coordinator/m_dram/sck_high_sda_rise_AND_71_o1  (
    .I0(\coordinator/m_dram/I2C_signal/sda_rise_355 ),
    .I1(\coordinator/m_dram/I2C_signal/sck_high_357 ),
    .O(\coordinator/m_dram/sck_high_sda_rise_AND_71_o )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \coordinator/m_dram/WriteOperation_cnt[3]_AND_77_o1  (
    .I0(\coordinator/m_dram/I2C_signal/sck_rise_358 ),
    .I1(\coordinator/m_dram/WriteOperation_324 ),
    .I2(\coordinator/m_dram/cnt [3]),
    .O(\coordinator/m_dram/WriteOperation_cnt[3]_AND_77_o )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \coordinator/m_dram/sck_rise_cnt[3]_AND_72_o1  (
    .I0(\coordinator/m_dram/I2C_signal/sck_rise_358 ),
    .I1(\coordinator/m_dram/cnt [3]),
    .O(\coordinator/m_dram/sck_rise_cnt[3]_AND_72_o )
  );
  LUT3 #(
    .INIT ( 8'hFD ))
  \coordinator/m_iram/state_FSM_FFd3-In11  (
    .I0(\coordinator/m_iram/I2C_signal/sck_rise_235 ),
    .I1(\coordinator/m_iram/cnt [3]),
    .I2(\coordinator/m_iram/cnt [4]),
    .O(\coordinator/m_iram/state_FSM_FFd3-In1 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \coordinator/m_iram/GND_62_o_GND_62_o_equal_35_o<4>11  (
    .I0(\coordinator/m_iram/cnt [2]),
    .I1(\coordinator/m_iram/cnt [3]),
    .I2(\coordinator/m_iram/cnt [1]),
    .I3(\coordinator/m_iram/cnt [4]),
    .O(\coordinator/m_iram/GND_62_o_GND_62_o_equal_35_o<4>1 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \coordinator/m_iram/I2C_signal/sck_window[7]_PWR_17_o_equal_5_o<7>11  (
    .I0(\coordinator/m_iram/I2C_signal/sck_window [6]),
    .I1(\coordinator/m_iram/I2C_signal/sck_window [5]),
    .I2(\coordinator/m_iram/I2C_signal/sck_window [4]),
    .I3(\coordinator/m_iram/I2C_signal/sck_window [7]),
    .O(\coordinator/m_iram/I2C_signal/sck_window[7]_PWR_17_o_equal_5_o<7>1_380 )
  );
  LUT5 #(
    .INIT ( 32'h00010000 ))
  \coordinator/m_iram/I2C_signal/sck_window[7]_PWR_17_o_equal_7_o<7>1  (
    .I0(\coordinator/m_iram/I2C_signal/sck_window [0]),
    .I1(\coordinator/m_iram/I2C_signal/sck_window [1]),
    .I2(\coordinator/m_iram/I2C_signal/sck_window [2]),
    .I3(\coordinator/m_iram/I2C_signal/sck_window [3]),
    .I4(\coordinator/m_iram/I2C_signal/sck_window[7]_PWR_17_o_equal_5_o<7>1_380 ),
    .O(\coordinator/m_iram/I2C_signal/sck_window[7]_PWR_17_o_equal_7_o )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \coordinator/m_dram/I2C_signal/sck_window[7]_PWR_17_o_equal_5_o<7>11  (
    .I0(\coordinator/m_dram/I2C_signal/sck_window [6]),
    .I1(\coordinator/m_dram/I2C_signal/sck_window [5]),
    .I2(\coordinator/m_dram/I2C_signal/sck_window [4]),
    .I3(\coordinator/m_dram/I2C_signal/sck_window [7]),
    .O(\coordinator/m_dram/I2C_signal/sck_window[7]_PWR_17_o_equal_5_o<7>1_381 )
  );
  LUT5 #(
    .INIT ( 32'h00010000 ))
  \coordinator/m_dram/I2C_signal/sck_window[7]_PWR_17_o_equal_7_o<7>1  (
    .I0(\coordinator/m_dram/I2C_signal/sck_window [0]),
    .I1(\coordinator/m_dram/I2C_signal/sck_window [1]),
    .I2(\coordinator/m_dram/I2C_signal/sck_window [2]),
    .I3(\coordinator/m_dram/I2C_signal/sck_window [3]),
    .I4(\coordinator/m_dram/I2C_signal/sck_window[7]_PWR_17_o_equal_5_o<7>1_381 ),
    .O(\coordinator/m_dram/I2C_signal/sck_window[7]_PWR_17_o_equal_7_o )
  );
  LUT5 #(
    .INIT ( 32'h00040000 ))
  \coordinator/m_dram/Mmux_state[2]_WriteOperation_Mux_92_o11  (
    .I0(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .I1(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I2(\coordinator/m_dram/oe_PWR_16_o_MUX_157_o ),
    .I3(\coordinator/m_dram/sda_data [0]),
    .I4(\coordinator/m_dram/WriteOperation_PWR_16_o_MUX_142_o<7>1_377 ),
    .O(\coordinator/m_dram/state[2]_WriteOperation_Mux_92_o )
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \coordinator/m_dram/Mmux__n049441  (
    .I0(\coordinator/m_dram/cnt [1]),
    .I1(\coordinator/m_dram/cnt [0]),
    .I2(\coordinator/m_dram/Mmux__n049421 ),
    .O(\coordinator/m_dram/_n0494 [1])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \coordinator/m_dram/state_FSM_FFd1-In11  (
    .I0(\coordinator/m_dram/I2C_signal/sda_fall_356 ),
    .I1(\coordinator/m_dram/I2C_signal/sck_high_357 ),
    .O(\coordinator/m_dram/state_FSM_FFd1-In1 )
  );
  LUT5 #(
    .INIT ( 32'hFEAE5404 ))
  \coordinator/m_dram/Mmux_daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT11  (
    .I0(IICING_IBUF_3),
    .I1(\coordinator/m_iram/idataout [0]),
    .I2(\coordinator/W ),
    .I3(\coordinator/m_decoder/pre_inst[0] ),
    .I4(\coordinator/m_dram/OpreatRegisterAddress [0]),
    .O(\coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hFEAE5404 ))
  \coordinator/m_dram/Mmux_daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT21  (
    .I0(IICING_IBUF_3),
    .I1(\coordinator/m_iram/idataout [1]),
    .I2(\coordinator/W ),
    .I3(\coordinator/m_decoder/pre_inst[1] ),
    .I4(\coordinator/m_dram/OpreatRegisterAddress [1]),
    .O(\coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hFEAE5404 ))
  \coordinator/m_dram/Mmux_daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT31  (
    .I0(IICING_IBUF_3),
    .I1(\coordinator/m_iram/idataout [2]),
    .I2(\coordinator/W ),
    .I3(\coordinator/m_decoder/pre_inst[2] ),
    .I4(\coordinator/m_dram/OpreatRegisterAddress [2]),
    .O(\coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hFEAE5404 ))
  \coordinator/m_dram/Mmux_daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT41  (
    .I0(IICING_IBUF_3),
    .I1(\coordinator/m_iram/idataout [3]),
    .I2(\coordinator/W ),
    .I3(\coordinator/m_decoder/pre_inst[3] ),
    .I4(\coordinator/m_dram/OpreatRegisterAddress [3]),
    .O(\coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'hFEAE5404 ))
  \coordinator/m_dram/Mmux_daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT51  (
    .I0(IICING_IBUF_3),
    .I1(\coordinator/m_iram/idataout [4]),
    .I2(\coordinator/W ),
    .I3(\coordinator/m_decoder/pre_inst[4] ),
    .I4(\coordinator/m_dram/OpreatRegisterAddress [4]),
    .O(\coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'hFEAE5404 ))
  \coordinator/m_dram/Mmux_daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT61  (
    .I0(IICING_IBUF_3),
    .I1(\coordinator/m_iram/idataout [5]),
    .I2(\coordinator/W ),
    .I3(\coordinator/m_decoder/pre_inst[5] ),
    .I4(\coordinator/m_dram/OpreatRegisterAddress [5]),
    .O(\coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<5> )
  );
  LUT5 #(
    .INIT ( 32'hFEAE5404 ))
  \coordinator/m_dram/Mmux_daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT71  (
    .I0(IICING_IBUF_3),
    .I1(\coordinator/m_iram/idataout [6]),
    .I2(\coordinator/W ),
    .I3(\coordinator/m_decoder/pre_inst[6] ),
    .I4(\coordinator/m_dram/OpreatRegisterAddress [6]),
    .O(\coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<6> )
  );
  LUT5 #(
    .INIT ( 32'hFEAE5404 ))
  \coordinator/m_dram/Mmux_daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT81  (
    .I0(IICING_IBUF_3),
    .I1(\coordinator/m_iram/idataout [7]),
    .I2(\coordinator/W ),
    .I3(\coordinator/m_decoder/pre_inst[7] ),
    .I4(\coordinator/m_dram/OpreatRegisterAddress [7]),
    .O(\coordinator/m_dram/daddr[7]_OpreatRegisterAddress[7]_mux_1_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \coordinator/m_iram/state_FSM_FFd1-In21  (
    .I0(\coordinator/m_iram/I2C_signal/sda_fall_233 ),
    .I1(\coordinator/m_iram/I2C_signal/sck_high_234 ),
    .O(\coordinator/m_iram/state_FSM_FFd1-In2 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \coordinator/m_iram/_n0448_inv21  (
    .I0(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I1(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I2(\coordinator/m_iram/WriteOperation_PWR_20_o_MUX_216_o<7>1_376 ),
    .O(\coordinator/m_iram/_n0448_inv2_389 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \coordinator/m_dram/state_FSM_FFd1-In21  (
    .I0(\coordinator/m_dram/I2C_signal/sck_fall_359 ),
    .I1(\coordinator/m_dram/cnt [2]),
    .I2(\coordinator/m_dram/cnt [1]),
    .I3(\coordinator/m_dram/cnt [3]),
    .O(\coordinator/m_dram/state_FSM_FFd1-In2 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \coordinator/m_iram/ReadOperation_GND_62_o_AND_108_o2  (
    .I0(\coordinator/m_iram/ReadOperation_186 ),
    .I1(\coordinator/m_iram/ReadOperation_GND_62_o_AND_108_o1 ),
    .O(\coordinator/m_iram/ReadOperation_GND_62_o_AND_108_o )
  );
  LUT6 #(
    .INIT ( 64'h0100000000000000 ))
  \coordinator/m_iram/_n0407_inv21  (
    .I0(\coordinator/m_iram/cnt [2]),
    .I1(\coordinator/m_iram/cnt [3]),
    .I2(\coordinator/m_iram/cnt [1]),
    .I3(\coordinator/m_iram/I2C_signal/sck_fall_236 ),
    .I4(\coordinator/m_iram/cnt [4]),
    .I5(\coordinator/m_iram/cnt [0]),
    .O(\coordinator/m_iram/_n0407_inv2 )
  );
  LUT6 #(
    .INIT ( 64'h0000000001000000 ))
  \coordinator/m_iram/ReadOperation_GND_62_o_AND_108_o11  (
    .I0(\coordinator/m_iram/cnt [2]),
    .I1(\coordinator/m_iram/cnt [3]),
    .I2(\coordinator/m_iram/cnt [1]),
    .I3(\coordinator/m_iram/I2C_signal/sck_fall_236 ),
    .I4(\coordinator/m_iram/cnt [4]),
    .I5(\coordinator/m_iram/cnt [0]),
    .O(\coordinator/m_iram/ReadOperation_GND_62_o_AND_108_o1 )
  );
  LUT5 #(
    .INIT ( 32'h22222022 ))
  \coordinator/m_dram/Mmux_state[2]_ReadOperation_Mux_91_o11  (
    .I0(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I1(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .I2(\coordinator/m_dram/sda_data [0]),
    .I3(\coordinator/m_dram/WriteOperation_PWR_16_o_MUX_142_o<7>1_377 ),
    .I4(\coordinator/m_dram/oe_PWR_16_o_MUX_157_o ),
    .O(\coordinator/m_dram/state[2]_ReadOperation_Mux_91_o )
  );
  LUT6 #(
    .INIT ( 64'h1110111151505151 ))
  \coordinator/m_dram/Mmux_state[2]_GND_57_o_Mux_88_o11  (
    .I0(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .I1(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I2(\coordinator/m_dram/oe_PWR_16_o_MUX_157_o ),
    .I3(\coordinator/m_dram/sda_data [0]),
    .I4(\coordinator/m_dram/WriteOperation_PWR_16_o_MUX_142_o<7>1_377 ),
    .I5(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .O(\coordinator/m_dram/state[2]_GND_57_o_Mux_88_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \coordinator/m_dram/I2C_signal/sck_window[7]_PWR_17_o_equal_5_o<7>1  (
    .I0(\coordinator/m_dram/I2C_signal/sck_window[7]_PWR_17_o_equal_5_o<7>1_381 ),
    .I1(\coordinator/m_dram/I2C_signal/sck_window [0]),
    .I2(\coordinator/m_dram/I2C_signal/sck_window [3]),
    .I3(\coordinator/m_dram/I2C_signal/sck_window [1]),
    .I4(\coordinator/m_dram/I2C_signal/sck_window [2]),
    .O(\coordinator/m_dram/I2C_signal/sck_window[7]_PWR_17_o_equal_5_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \coordinator/m_iram/I2C_signal/sck_window[7]_PWR_17_o_equal_5_o<7>1  (
    .I0(\coordinator/m_iram/I2C_signal/sck_window[7]_PWR_17_o_equal_5_o<7>1_380 ),
    .I1(\coordinator/m_iram/I2C_signal/sck_window [0]),
    .I2(\coordinator/m_iram/I2C_signal/sck_window [3]),
    .I3(\coordinator/m_iram/I2C_signal/sck_window [1]),
    .I4(\coordinator/m_iram/I2C_signal/sck_window [2]),
    .O(\coordinator/m_iram/I2C_signal/sck_window[7]_PWR_17_o_equal_5_o )
  );
  LUT6 #(
    .INIT ( 64'h0010000000000000 ))
  \coordinator/m_iram/_n0688_inv1  (
    .I0(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I1(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I2(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I3(\coordinator/m_iram/sck_high_sda_rise_AND_98_o ),
    .I4(\coordinator/m_iram/state_FSM_FFd3-In1 ),
    .I5(\coordinator/m_iram/oe_PWR_20_o_MUX_231_o ),
    .O(\coordinator/m_iram/_n0688_inv )
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \coordinator/m_iram/Mmux__n053261  (
    .I0(\coordinator/m_iram/cnt [2]),
    .I1(\coordinator/m_iram/cnt [1]),
    .I2(\coordinator/m_iram/cnt [0]),
    .I3(\coordinator/m_iram/Mmux__n053221 ),
    .O(\coordinator/m_iram/_n0532[2] )
  );
  LUT6 #(
    .INIT ( 64'h0000001000000000 ))
  \coordinator/m_dram/_n0651_inv1  (
    .I0(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .I1(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I2(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I3(\coordinator/m_dram/sck_high_sda_rise_AND_71_o ),
    .I4(\coordinator/m_dram/sck_rise_cnt[3]_AND_72_o ),
    .I5(\coordinator/m_dram/oe_PWR_16_o_MUX_157_o ),
    .O(\coordinator/m_dram/_n0651_inv )
  );
  LUT5 #(
    .INIT ( 32'h6CCC0000 ))
  \coordinator/m_iram/Mmux__n053281  (
    .I0(\coordinator/m_iram/cnt [2]),
    .I1(\coordinator/m_iram/cnt [3]),
    .I2(\coordinator/m_iram/cnt [1]),
    .I3(\coordinator/m_iram/cnt [0]),
    .I4(\coordinator/m_iram/Mmux__n053221 ),
    .O(\coordinator/m_iram/_n0532[3] )
  );
  LUT6 #(
    .INIT ( 64'h7FFF800000000000 ))
  \coordinator/m_iram/Mmux__n0532101  (
    .I0(\coordinator/m_iram/cnt [3]),
    .I1(\coordinator/m_iram/cnt [2]),
    .I2(\coordinator/m_iram/cnt [1]),
    .I3(\coordinator/m_iram/cnt [0]),
    .I4(\coordinator/m_iram/cnt [4]),
    .I5(\coordinator/m_iram/Mmux__n053221 ),
    .O(\coordinator/m_iram/_n0532[4] )
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \coordinator/m_dram/Mmux__n049461  (
    .I0(\coordinator/m_dram/cnt [2]),
    .I1(\coordinator/m_dram/cnt [1]),
    .I2(\coordinator/m_dram/cnt [0]),
    .I3(\coordinator/m_dram/Mmux__n049421 ),
    .O(\coordinator/m_dram/_n0494 [2])
  );
  LUT5 #(
    .INIT ( 32'h78F00000 ))
  \coordinator/m_dram/Mmux__n049481  (
    .I0(\coordinator/m_dram/cnt [2]),
    .I1(\coordinator/m_dram/cnt [1]),
    .I2(\coordinator/m_dram/cnt [3]),
    .I3(\coordinator/m_dram/cnt [0]),
    .I4(\coordinator/m_dram/Mmux__n049421 ),
    .O(\coordinator/m_dram/_n0494 [3])
  );
  LUT5 #(
    .INIT ( 32'h00040000 ))
  \coordinator/m_iram/Mmux_state[2]_WriteOperation_Mux_100_o11  (
    .I0(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I1(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I2(\coordinator/m_iram/oe_PWR_20_o_MUX_231_o ),
    .I3(\coordinator/m_iram/sda_data [0]),
    .I4(\coordinator/m_iram/WriteOperation_PWR_20_o_MUX_216_o<7>1_376 ),
    .O(\coordinator/m_iram/state[2]_WriteOperation_Mux_100_o )
  );
  LUT5 #(
    .INIT ( 32'h22222022 ))
  \coordinator/m_iram/Mmux_state[2]_ReadOperation_Mux_99_o11  (
    .I0(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I1(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I2(\coordinator/m_iram/sda_data [0]),
    .I3(\coordinator/m_iram/WriteOperation_PWR_20_o_MUX_216_o<7>1_376 ),
    .I4(\coordinator/m_iram/oe_PWR_20_o_MUX_231_o ),
    .O(\coordinator/m_iram/state[2]_ReadOperation_Mux_99_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_decoder/Mmux_DI11  (
    .I0(\coordinator/m_decoder/INST[15]_INST[15]_OR_116_o ),
    .I1(\coordinator/m_dram/ddataout [0]),
    .I2(\coordinator/m_iram/idataout [0]),
    .O(DI[0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_decoder/Mmux_DI21  (
    .I0(\coordinator/m_decoder/INST[15]_INST[15]_OR_116_o ),
    .I1(\coordinator/m_dram/ddataout [1]),
    .I2(\coordinator/m_iram/idataout [1]),
    .O(DI[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_decoder/Mmux_DI31  (
    .I0(\coordinator/m_decoder/INST[15]_INST[15]_OR_116_o ),
    .I1(\coordinator/m_dram/ddataout [2]),
    .I2(\coordinator/m_iram/idataout [2]),
    .O(DI[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_decoder/Mmux_DI41  (
    .I0(\coordinator/m_decoder/INST[15]_INST[15]_OR_116_o ),
    .I1(\coordinator/m_dram/ddataout [3]),
    .I2(\coordinator/m_iram/idataout [3]),
    .O(DI[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_decoder/Mmux_DI51  (
    .I0(\coordinator/m_decoder/INST[15]_INST[15]_OR_116_o ),
    .I1(\coordinator/m_dram/ddataout [4]),
    .I2(\coordinator/m_iram/idataout [4]),
    .O(DI[4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_decoder/Mmux_DI61  (
    .I0(\coordinator/m_decoder/INST[15]_INST[15]_OR_116_o ),
    .I1(\coordinator/m_dram/ddataout [5]),
    .I2(\coordinator/m_iram/idataout [5]),
    .O(DI[5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_decoder/Mmux_DI71  (
    .I0(\coordinator/m_decoder/INST[15]_INST[15]_OR_116_o ),
    .I1(\coordinator/m_dram/ddataout [6]),
    .I2(\coordinator/m_iram/idataout [6]),
    .O(DI[6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \coordinator/m_decoder/Mmux_DI81  (
    .I0(\coordinator/m_decoder/INST[15]_INST[15]_OR_116_o ),
    .I1(\coordinator/m_dram/ddataout [7]),
    .I2(\coordinator/m_iram/idataout [7]),
    .O(DI[7])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \coordinator/m_decoder/INST[15]_INST[15]_OR_116_o1  (
    .I0(\coordinator/m_iram/idataout [15]),
    .I1(\coordinator/m_iram/idataout [14]),
    .I2(\coordinator/m_iram/idataout [13]),
    .I3(\coordinator/m_iram/idataout [10]),
    .I4(\coordinator/m_iram/idataout [9]),
    .I5(\coordinator/m_iram/idataout [8]),
    .O(\coordinator/m_decoder/INST[15]_INST[15]_OR_116_o )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \coordinator/m_clk_gen/Mcount_count_xor<4>11  (
    .I0(\coordinator/m_clk_gen/count [4]),
    .I1(\coordinator/m_clk_gen/count [0]),
    .I2(\coordinator/m_clk_gen/count [1]),
    .I3(\coordinator/m_clk_gen/count [2]),
    .I4(\coordinator/m_clk_gen/count [3]),
    .O(\coordinator/m_clk_gen/Result [4])
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \coordinator/m_clk_gen/Mcount_count_xor<5>11  (
    .I0(\coordinator/m_clk_gen/count [5]),
    .I1(\coordinator/m_clk_gen/count [0]),
    .I2(\coordinator/m_clk_gen/count [1]),
    .I3(\coordinator/m_clk_gen/count [2]),
    .I4(\coordinator/m_clk_gen/count [3]),
    .I5(\coordinator/m_clk_gen/count [4]),
    .O(\coordinator/m_clk_gen/Result [5])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \coordinator/m_clk_gen/Mcount_count_xor<3>11  (
    .I0(\coordinator/m_clk_gen/count [3]),
    .I1(\coordinator/m_clk_gen/count [0]),
    .I2(\coordinator/m_clk_gen/count [1]),
    .I3(\coordinator/m_clk_gen/count [2]),
    .O(\coordinator/m_clk_gen/Result [3])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \coordinator/m_clk_gen/Mcount_count_xor<2>11  (
    .I0(\coordinator/m_clk_gen/count [2]),
    .I1(\coordinator/m_clk_gen/count [0]),
    .I2(\coordinator/m_clk_gen/count [1]),
    .O(\coordinator/m_clk_gen/Result [2])
  );
  LUT5 #(
    .INIT ( 32'hAFAAA8AA ))
  \coordinator/m_clk_gen/count[5]_clkD_Select_25_o1  (
    .I0(\coordinator/m_clk_gen/clkD_620 ),
    .I1(\coordinator/m_clk_gen/count[5]_PWR_11_o_Select_20_o21 ),
    .I2(\coordinator/m_clk_gen/count [3]),
    .I3(\coordinator/m_clk_gen/count [4]),
    .I4(\coordinator/m_clk_gen/count[5]_PWR_11_o_Select_20_o1 ),
    .O(\coordinator/m_clk_gen/count[5]_clkD_Select_25_o )
  );
  LUT5 #(
    .INIT ( 32'hAFAAA8AA ))
  \coordinator/m_clk_gen/count[5]_clkC_Select_23_o1  (
    .I0(\coordinator/m_clk_gen/clkC_62 ),
    .I1(\coordinator/m_clk_gen/count[5]_PWR_11_o_Select_20_o21 ),
    .I2(\coordinator/m_clk_gen/count [4]),
    .I3(\coordinator/m_clk_gen/count [3]),
    .I4(\coordinator/m_clk_gen/count[5]_PWR_11_o_Select_20_o1 ),
    .O(\coordinator/m_clk_gen/count[5]_clkC_Select_23_o )
  );
  LUT5 #(
    .INIT ( 32'hAAAFAAA8 ))
  \coordinator/m_clk_gen/count[5]_PWR_11_o_Select_20_o2  (
    .I0(\coordinator/m_clk_gen/clkB_33 ),
    .I1(\coordinator/m_clk_gen/count[5]_PWR_11_o_Select_20_o21 ),
    .I2(\coordinator/m_clk_gen/count [3]),
    .I3(\coordinator/m_clk_gen/count [4]),
    .I4(\coordinator/m_clk_gen/count[5]_PWR_11_o_Select_20_o1 ),
    .O(\coordinator/m_clk_gen/count[5]_PWR_11_o_Select_20_o )
  );
  LUT5 #(
    .INIT ( 32'hFAAA8AAA ))
  \coordinator/m_clk_gen/count[5]_clkA_Select_27_o1  (
    .I0(\coordinator/m_clk_gen/clkA_32 ),
    .I1(\coordinator/m_clk_gen/count[5]_PWR_11_o_Select_20_o21 ),
    .I2(\coordinator/m_clk_gen/count [4]),
    .I3(\coordinator/m_clk_gen/count [3]),
    .I4(\coordinator/m_clk_gen/count[5]_PWR_11_o_Select_20_o1 ),
    .O(\coordinator/m_clk_gen/count[5]_clkA_Select_27_o )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \coordinator/m_clk_gen/count[5]_PWR_11_o_Select_20_o211  (
    .I0(\coordinator/m_clk_gen/count [5]),
    .I1(\coordinator/m_clk_gen/count [0]),
    .I2(\coordinator/m_clk_gen/count [1]),
    .O(\coordinator/m_clk_gen/count[5]_PWR_11_o_Select_20_o21 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \coordinator/m_clk_gen/count[5]_PWR_11_o_Select_20_o11  (
    .I0(\coordinator/m_clk_gen/count [0]),
    .I1(\coordinator/m_clk_gen/count [1]),
    .I2(\coordinator/m_clk_gen/count [2]),
    .I3(\coordinator/m_clk_gen/count [5]),
    .O(\coordinator/m_clk_gen/count[5]_PWR_11_o_Select_20_o1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \coordinator/m_clk_gen/Mcount_count_xor<1>11  (
    .I0(\coordinator/m_clk_gen/count [1]),
    .I1(\coordinator/m_clk_gen/count [0]),
    .O(\coordinator/m_clk_gen/Result [1])
  );
  LUT6 #(
    .INIT ( 64'h0000100010001000 ))
  \carboncore/decoder/_n00741  (
    .I0(\coordinator/m_iram/idataout [10]),
    .I1(\coordinator/m_iram/idataout [11]),
    .I2(\coordinator/m_iram/idataout [12]),
    .I3(\coordinator/m_iram/idataout [13]),
    .I4(\coordinator/m_iram/idataout [8]),
    .I5(\coordinator/m_iram/idataout [9]),
    .O(\carboncore/decoder/_n0074 )
  );
  LUT6 #(
    .INIT ( 64'hAAA8A8A8AFAFAFAF ))
  \carboncore/decoder/reg_sel_B<1>1  (
    .I0(\coordinator/m_iram/idataout [13]),
    .I1(\coordinator/m_iram/idataout [10]),
    .I2(\coordinator/m_iram/idataout [11]),
    .I3(\coordinator/m_iram/idataout [9]),
    .I4(\coordinator/m_iram/idataout [8]),
    .I5(\coordinator/m_iram/idataout [12]),
    .O(\carboncore/sel_B [2])
  );
  LUT6 #(
    .INIT ( 64'hAFFAADFAADFAADFA ))
  \carboncore/decoder/reg_sel_A<2>1  (
    .I0(\coordinator/m_iram/idataout [13]),
    .I1(\coordinator/m_iram/idataout [10]),
    .I2(\coordinator/m_iram/idataout [11]),
    .I3(\coordinator/m_iram/idataout [12]),
    .I4(\coordinator/m_iram/idataout [8]),
    .I5(\coordinator/m_iram/idataout [9]),
    .O(\carboncore/sel_A [0])
  );
  LUT6 #(
    .INIT ( 64'hAAA8AAAAA8A8AA2A ))
  \carboncore/decoder/_n00821  (
    .I0(\coordinator/m_iram/idataout [13]),
    .I1(\coordinator/m_iram/idataout [10]),
    .I2(\coordinator/m_iram/idataout [11]),
    .I3(\coordinator/m_iram/idataout [8]),
    .I4(\coordinator/m_iram/idataout [12]),
    .I5(\coordinator/m_iram/idataout [9]),
    .O(\carboncore/decoder/_n0082 )
  );
  LUT5 #(
    .INIT ( 32'hEEEEEFEE ))
  \carboncore/decoder/reg_sel_B<3>1  (
    .I0(\carboncore/decoder/_n0082 ),
    .I1(\carboncore/decoder/_n0074 ),
    .I2(\coordinator/m_iram/idataout [13]),
    .I3(\coordinator/m_iram/idataout [12]),
    .I4(\coordinator/m_iram/idataout [11]),
    .O(\carboncore/sel_B [0])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \carboncore/decoder/out21  (
    .I0(\coordinator/m_iram/idataout [13]),
    .I1(\coordinator/m_iram/idataout [12]),
    .O(\carboncore/CI )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \carboncore/acc_update_reg/Mmux_in[0]_GND_3_o_MUX_1_o11  (
    .I0(\coordinator/m_iram/idataout [13]),
    .I1(\coordinator/m_iram/idataout [10]),
    .I2(EN_IBUF_2),
    .O(\carboncore/acc_update_reg/in[0]_GND_3_o_MUX_1_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \carboncore/decoder/reg_sel_A<1>1  (
    .I0(\carboncore/decoder/_n0074 ),
    .I1(\carboncore/decoder/_n0082 ),
    .O(\carboncore/sel_A [1])
  );
  LUT6 #(
    .INIT ( 64'h4145010550541014 ))
  \carboncore/alu/Mmux_B81  (
    .I0(\carboncore/sel_B [2]),
    .I1(\carboncore/sel_B [1]),
    .I2(\carboncore/sel_B [0]),
    .I3(\carboncore/acc/reg_acc_7_437 ),
    .I4(\coordinator/m_iram/idataout [7]),
    .I5(DI[7]),
    .O(\carboncore/alu/B [7])
  );
  LUT6 #(
    .INIT ( 64'h4145010550541014 ))
  \carboncore/alu/Mmux_B71  (
    .I0(\carboncore/sel_B [2]),
    .I1(\carboncore/sel_B [1]),
    .I2(\carboncore/sel_B [0]),
    .I3(\carboncore/acc/reg_acc_6_436 ),
    .I4(\coordinator/m_iram/idataout [6]),
    .I5(DI[6]),
    .O(\carboncore/alu/B [6])
  );
  LUT6 #(
    .INIT ( 64'h4145010550541014 ))
  \carboncore/alu/Mmux_B61  (
    .I0(\carboncore/sel_B [2]),
    .I1(\carboncore/sel_B [1]),
    .I2(\carboncore/sel_B [0]),
    .I3(\carboncore/acc/reg_acc_5_435 ),
    .I4(\coordinator/m_iram/idataout [5]),
    .I5(DI[5]),
    .O(\carboncore/alu/B [5])
  );
  LUT6 #(
    .INIT ( 64'h4145010550541014 ))
  \carboncore/alu/Mmux_B51  (
    .I0(\carboncore/sel_B [2]),
    .I1(\carboncore/sel_B [1]),
    .I2(\carboncore/sel_B [0]),
    .I3(\carboncore/acc/reg_acc_4_434 ),
    .I4(\coordinator/m_iram/idataout [4]),
    .I5(DI[4]),
    .O(\carboncore/alu/B [4])
  );
  LUT6 #(
    .INIT ( 64'h4145010550541014 ))
  \carboncore/alu/Mmux_B41  (
    .I0(\carboncore/sel_B [2]),
    .I1(\carboncore/sel_B [1]),
    .I2(\carboncore/sel_B [0]),
    .I3(\carboncore/acc/reg_acc_3_433 ),
    .I4(\coordinator/m_iram/idataout [3]),
    .I5(DI[3]),
    .O(\carboncore/alu/B [3])
  );
  LUT6 #(
    .INIT ( 64'h4145010550541014 ))
  \carboncore/alu/Mmux_B31  (
    .I0(\carboncore/sel_B [2]),
    .I1(\carboncore/sel_B [1]),
    .I2(\carboncore/sel_B [0]),
    .I3(\carboncore/acc/reg_acc_2_432 ),
    .I4(\coordinator/m_iram/idataout [2]),
    .I5(DI[2]),
    .O(\carboncore/alu/B [2])
  );
  LUT6 #(
    .INIT ( 64'h4145010550541014 ))
  \carboncore/alu/Mmux_B21  (
    .I0(\carboncore/sel_B [2]),
    .I1(\carboncore/sel_B [1]),
    .I2(\carboncore/sel_B [0]),
    .I3(\carboncore/acc/reg_acc_1_431 ),
    .I4(\coordinator/m_iram/idataout [1]),
    .I5(DI[1]),
    .O(\carboncore/alu/B [1])
  );
  LUT6 #(
    .INIT ( 64'h4145010550541014 ))
  \carboncore/alu/Mmux_B11  (
    .I0(\carboncore/sel_B [2]),
    .I1(\carboncore/sel_B [1]),
    .I2(\carboncore/sel_B [0]),
    .I3(\carboncore/acc/reg_acc_0_430 ),
    .I4(\coordinator/m_iram/idataout [0]),
    .I5(DI[0]),
    .O(\carboncore/alu/B [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \carboncore/X/Mmux_in[7]_GND_5_o_mux_2_OUT<0>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/X_in [0]),
    .O(\carboncore/X/in[7]_GND_5_o_mux_2_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \carboncore/X/Mmux_in[7]_GND_5_o_mux_2_OUT<1>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/X_in [1]),
    .O(\carboncore/X/in[7]_GND_5_o_mux_2_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \carboncore/X/Mmux_in[7]_GND_5_o_mux_2_OUT<2>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/X_in [2]),
    .O(\carboncore/X/in[7]_GND_5_o_mux_2_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \carboncore/X/Mmux_in[7]_GND_5_o_mux_2_OUT<3>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/X_in [3]),
    .O(\carboncore/X/in[7]_GND_5_o_mux_2_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \carboncore/X/Mmux_in[7]_GND_5_o_mux_2_OUT<4>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/X_in [4]),
    .O(\carboncore/X/in[7]_GND_5_o_mux_2_OUT<4> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \carboncore/X/Mmux_in[7]_GND_5_o_mux_2_OUT<5>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/X_in [5]),
    .O(\carboncore/X/in[7]_GND_5_o_mux_2_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \carboncore/X/Mmux_in[7]_GND_5_o_mux_2_OUT<6>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/X_in [6]),
    .O(\carboncore/X/in[7]_GND_5_o_mux_2_OUT<6> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \carboncore/X/Mmux_in[7]_GND_5_o_mux_2_OUT<7>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/X_in [7]),
    .O(\carboncore/X/in[7]_GND_5_o_mux_2_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<3>11  (
    .I0(\carboncore/pc/reg_pc_0_41 ),
    .I1(\carboncore/pc/reg_pc_1_40 ),
    .I2(\carboncore/pc/reg_pc_2_39 ),
    .O(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<3>_bdd0 )
  );
  LUT5 #(
    .INIT ( 32'h88288888 ))
  \carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<5>1  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/pc/reg_pc_5_36 ),
    .I2(\carboncore/pc/reg_pc_3_38 ),
    .I3(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<3>_bdd0 ),
    .I4(\carboncore/pc/reg_pc_4_37 ),
    .O(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hA0A0A0A028A0A0A0 ))
  \carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<6>1  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/pc/reg_pc_4_37 ),
    .I2(\carboncore/pc/reg_pc_6_35 ),
    .I3(\carboncore/pc/reg_pc_3_38 ),
    .I4(\carboncore/pc/reg_pc_5_36 ),
    .I5(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<3>_bdd0 ),
    .O(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \carboncore/pc_plus_1/Mmux_pc[7]_GND_14_o_mux_3_OUT21  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/pc/reg_pc_0_41 ),
    .I2(\carboncore/pc/reg_pc_1_40 ),
    .O(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h2888 ))
  \carboncore/pc_plus_1/Mmux_pc[7]_GND_14_o_mux_3_OUT31  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/pc/reg_pc_2_39 ),
    .I2(\carboncore/pc/reg_pc_0_41 ),
    .I3(\carboncore/pc/reg_pc_1_40 ),
    .O(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \carboncore/pc_plus_1/Mmux_pc[7]_GND_14_o_mux_3_OUT11  (
    .I0(\carboncore/pc/reg_pc_0_41 ),
    .I1(EN_IBUF_2),
    .O(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \carboncore/pc/Mmux_pc_plus_1[7]_GND_24_o_mux_3_OUT<0>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/br_taken_reg/res_446 ),
    .I2(\carboncore/pc_plus_1/res_0_438 ),
    .I3(\carboncore/X/res_0_49 ),
    .O(\carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \carboncore/pc/Mmux_pc_plus_1[7]_GND_24_o_mux_3_OUT<1>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/br_taken_reg/res_446 ),
    .I2(\carboncore/pc_plus_1/res_1_439 ),
    .I3(\carboncore/X/res_1_48 ),
    .O(\carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \carboncore/pc/Mmux_pc_plus_1[7]_GND_24_o_mux_3_OUT<2>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/br_taken_reg/res_446 ),
    .I2(\carboncore/pc_plus_1/res_2_440 ),
    .I3(\carboncore/X/res_2_47 ),
    .O(\carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \carboncore/pc/Mmux_pc_plus_1[7]_GND_24_o_mux_3_OUT<3>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/br_taken_reg/res_446 ),
    .I2(\carboncore/pc_plus_1/res_3_441 ),
    .I3(\carboncore/X/res_3_46 ),
    .O(\carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \carboncore/pc/Mmux_pc_plus_1[7]_GND_24_o_mux_3_OUT<4>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/br_taken_reg/res_446 ),
    .I2(\carboncore/pc_plus_1/res_4_442 ),
    .I3(\carboncore/X/res_4_45 ),
    .O(\carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<4> )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \carboncore/pc/Mmux_pc_plus_1[7]_GND_24_o_mux_3_OUT<5>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/br_taken_reg/res_446 ),
    .I2(\carboncore/pc_plus_1/res_5_443 ),
    .I3(\carboncore/X/res_5_44 ),
    .O(\carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<5> )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \carboncore/pc/Mmux_pc_plus_1[7]_GND_24_o_mux_3_OUT<6>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/br_taken_reg/res_446 ),
    .I2(\carboncore/pc_plus_1/res_6_444 ),
    .I3(\carboncore/X/res_6_43 ),
    .O(\carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \carboncore/pc/Mmux_pc_plus_1[7]_GND_24_o_mux_3_OUT<7>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/br_taken_reg/res_446 ),
    .I2(\carboncore/pc_plus_1/res_7_445 ),
    .I3(\carboncore/X/res_7_42 ),
    .O(\carboncore/pc/pc_plus_1[7]_GND_24_o_mux_3_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \carboncore/acc/Mmux_acc[7]_GND_33_o_mux_3_OUT<0>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/acc_update_reg/res_447 ),
    .I2(\carboncore/acc/reg_acc_0_430 ),
    .I3(\carboncore/X/res_0_49 ),
    .O(\carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \carboncore/acc/Mmux_acc[7]_GND_33_o_mux_3_OUT<1>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/acc_update_reg/res_447 ),
    .I2(\carboncore/acc/reg_acc_1_431 ),
    .I3(\carboncore/X/res_1_48 ),
    .O(\carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \carboncore/acc/Mmux_acc[7]_GND_33_o_mux_3_OUT<2>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/acc_update_reg/res_447 ),
    .I2(\carboncore/acc/reg_acc_2_432 ),
    .I3(\carboncore/X/res_2_47 ),
    .O(\carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \carboncore/acc/Mmux_acc[7]_GND_33_o_mux_3_OUT<3>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/acc_update_reg/res_447 ),
    .I2(\carboncore/acc/reg_acc_3_433 ),
    .I3(\carboncore/X/res_3_46 ),
    .O(\carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \carboncore/acc/Mmux_acc[7]_GND_33_o_mux_3_OUT<4>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/acc_update_reg/res_447 ),
    .I2(\carboncore/acc/reg_acc_4_434 ),
    .I3(\carboncore/X/res_4_45 ),
    .O(\carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<4> )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \carboncore/acc/Mmux_acc[7]_GND_33_o_mux_3_OUT<5>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/acc_update_reg/res_447 ),
    .I2(\carboncore/acc/reg_acc_5_435 ),
    .I3(\carboncore/X/res_5_44 ),
    .O(\carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<5> )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \carboncore/acc/Mmux_acc[7]_GND_33_o_mux_3_OUT<6>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/acc_update_reg/res_447 ),
    .I2(\carboncore/acc/reg_acc_6_436 ),
    .I3(\carboncore/X/res_6_43 ),
    .O(\carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \carboncore/acc/Mmux_acc[7]_GND_33_o_mux_3_OUT<7>11  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/acc_update_reg/res_447 ),
    .I2(\carboncore/acc/reg_acc_7_437 ),
    .I3(\carboncore/X/res_7_42 ),
    .O(\carboncore/acc/acc[7]_GND_33_o_mux_3_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \coordinator/m_iram/I2C_signal/sda_window[7]_PWR_17_o_equal_17_o<7>_SW0  (
    .I0(\coordinator/m_iram/I2C_signal/sda_window [2]),
    .I1(\coordinator/m_iram/I2C_signal/sda_window [1]),
    .I2(\coordinator/m_iram/I2C_signal/sda_window [0]),
    .O(N3)
  );
  LUT6 #(
    .INIT ( 64'h0000080000000000 ))
  \coordinator/m_iram/I2C_signal/sda_window[7]_PWR_17_o_equal_17_o<7>  (
    .I0(\coordinator/m_iram/I2C_signal/sda_window [5]),
    .I1(\coordinator/m_iram/I2C_signal/sda_window [7]),
    .I2(\coordinator/m_iram/I2C_signal/sda_window [3]),
    .I3(\coordinator/m_iram/I2C_signal/sda_window [4]),
    .I4(N3),
    .I5(\coordinator/m_iram/I2C_signal/sda_window [6]),
    .O(\coordinator/m_iram/I2C_signal/sda_window[7]_PWR_17_o_equal_17_o )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \coordinator/m_iram/I2C_signal/sda_window[7]_GND_58_o_equal_18_o<7>_SW0  (
    .I0(\coordinator/m_iram/I2C_signal/sda_window [2]),
    .I1(\coordinator/m_iram/I2C_signal/sda_window [1]),
    .I2(\coordinator/m_iram/I2C_signal/sda_window [0]),
    .O(N5)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000040 ))
  \coordinator/m_iram/I2C_signal/sda_window[7]_GND_58_o_equal_18_o<7>  (
    .I0(\coordinator/m_iram/I2C_signal/sda_window [7]),
    .I1(N5),
    .I2(\coordinator/m_iram/I2C_signal/sda_window [3]),
    .I3(\coordinator/m_iram/I2C_signal/sda_window [6]),
    .I4(\coordinator/m_iram/I2C_signal/sda_window [5]),
    .I5(\coordinator/m_iram/I2C_signal/sda_window [4]),
    .O(\coordinator/m_iram/I2C_signal/sda_window[7]_GND_58_o_equal_18_o )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \coordinator/m_dram/I2C_signal/sda_window[7]_PWR_17_o_equal_17_o<7>_SW0  (
    .I0(\coordinator/m_dram/I2C_signal/sda_window [2]),
    .I1(\coordinator/m_dram/I2C_signal/sda_window [1]),
    .I2(\coordinator/m_dram/I2C_signal/sda_window [0]),
    .O(N7)
  );
  LUT6 #(
    .INIT ( 64'h0000080000000000 ))
  \coordinator/m_dram/I2C_signal/sda_window[7]_PWR_17_o_equal_17_o<7>  (
    .I0(\coordinator/m_dram/I2C_signal/sda_window [5]),
    .I1(\coordinator/m_dram/I2C_signal/sda_window [7]),
    .I2(\coordinator/m_dram/I2C_signal/sda_window [3]),
    .I3(\coordinator/m_dram/I2C_signal/sda_window [4]),
    .I4(N7),
    .I5(\coordinator/m_dram/I2C_signal/sda_window [6]),
    .O(\coordinator/m_dram/I2C_signal/sda_window[7]_PWR_17_o_equal_17_o )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \coordinator/m_dram/I2C_signal/sda_window[7]_GND_58_o_equal_18_o<7>_SW0  (
    .I0(\coordinator/m_dram/I2C_signal/sda_window [2]),
    .I1(\coordinator/m_dram/I2C_signal/sda_window [1]),
    .I2(\coordinator/m_dram/I2C_signal/sda_window [0]),
    .O(N9)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000040 ))
  \coordinator/m_dram/I2C_signal/sda_window[7]_GND_58_o_equal_18_o<7>  (
    .I0(\coordinator/m_dram/I2C_signal/sda_window [7]),
    .I1(N9),
    .I2(\coordinator/m_dram/I2C_signal/sda_window [3]),
    .I3(\coordinator/m_dram/I2C_signal/sda_window [6]),
    .I4(\coordinator/m_dram/I2C_signal/sda_window [5]),
    .I5(\coordinator/m_dram/I2C_signal/sda_window [4]),
    .O(\coordinator/m_dram/I2C_signal/sda_window[7]_GND_58_o_equal_18_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \coordinator/m_iram/WriteOperation_PWR_20_o_MUX_216_o<7>1_SW0  (
    .I0(\coordinator/m_iram/sda_data [2]),
    .I1(\coordinator/m_iram/sda_data [1]),
    .O(N11)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000040 ))
  \coordinator/m_iram/WriteOperation_PWR_20_o_MUX_216_o<7>1  (
    .I0(\coordinator/m_iram/sda_data [6]),
    .I1(\coordinator/m_iram/sda_data [5]),
    .I2(\coordinator/m_iram/sda_data [7]),
    .I3(\coordinator/m_iram/sda_data [4]),
    .I4(\coordinator/m_iram/sda_data [3]),
    .I5(N11),
    .O(\coordinator/m_iram/WriteOperation_PWR_20_o_MUX_216_o<7>1_376 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \coordinator/m_dram/WriteOperation_PWR_16_o_MUX_142_o<7>1_SW0  (
    .I0(\coordinator/m_dram/sda_data [3]),
    .I1(\coordinator/m_dram/sda_data [2]),
    .O(N13)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000080 ))
  \coordinator/m_dram/WriteOperation_PWR_16_o_MUX_142_o<7>1  (
    .I0(\coordinator/m_dram/sda_data [7]),
    .I1(\coordinator/m_dram/sda_data [5]),
    .I2(\coordinator/m_dram/sda_data [1]),
    .I3(\coordinator/m_dram/sda_data [6]),
    .I4(\coordinator/m_dram/sda_data [4]),
    .I5(N13),
    .O(\coordinator/m_dram/WriteOperation_PWR_16_o_MUX_142_o<7>1_377 )
  );
  LUT6 #(
    .INIT ( 64'h08FFFFFF082AAAAA ))
  \coordinator/m_dram/state_FSM_FFd2-In1  (
    .I0(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I1(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I2(\coordinator/m_dram/I2C_signal/sda_fall_356 ),
    .I3(\coordinator/m_dram/I2C_signal/sda_rise_355 ),
    .I4(\coordinator/m_dram/I2C_signal/sck_high_357 ),
    .I5(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .O(\coordinator/m_dram/state_FSM_FFd2-In1_525 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF0080 ))
  \coordinator/m_dram/state_FSM_FFd2-In2  (
    .I0(\coordinator/m_dram/WriteOperation_PWR_16_o_MUX_142_o<7>1_377 ),
    .I1(\coordinator/m_dram/state_FSM_FFd2-In3 ),
    .I2(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I3(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I4(\coordinator/m_dram/state_FSM_FFd2-In1_525 ),
    .O(\coordinator/m_dram/state_FSM_FFd2-In )
  );
  LUT6 #(
    .INIT ( 64'h2323012301230123 ))
  \coordinator/m_iram/_n0581_inv2  (
    .I0(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I1(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I2(\coordinator/m_iram/state_FSM_FFd1-In2 ),
    .I3(\coordinator/m_iram/state_FSM_FFd3-In1 ),
    .I4(\coordinator/m_iram/_n0369_inv1_542 ),
    .I5(\coordinator/m_iram/WriteOperation_PWR_20_o_MUX_216_o<7>1_376 ),
    .O(\coordinator/m_iram/_n0581_inv2_526 )
  );
  LUT5 #(
    .INIT ( 32'hC8000000 ))
  \coordinator/m_iram/_n0448_inv2  (
    .I0(\coordinator/m_iram/WROperation_184 ),
    .I1(\coordinator/m_iram/I2C_signal/sck_fall_236 ),
    .I2(\coordinator/m_iram/cnt [0]),
    .I3(\coordinator/m_iram/GND_62_o_GND_62_o_equal_35_o<4>1 ),
    .I4(\coordinator/m_iram/state_FSM_FFd3-In1 ),
    .O(\coordinator/m_iram/_n0448_inv3_530 )
  );
  LUT6 #(
    .INIT ( 64'h7575752075207520 ))
  \coordinator/m_iram/_n0448_inv3  (
    .I0(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I1(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I2(\coordinator/m_iram/sck_high_sda_rise_AND_98_o ),
    .I3(\coordinator/m_iram/_n0448_inv1_529 ),
    .I4(\coordinator/m_iram/_n0448_inv3_530 ),
    .I5(\coordinator/m_iram/_n0448_inv2_389 ),
    .O(\coordinator/m_iram/_n0448_inv )
  );
  LUT6 #(
    .INIT ( 64'h08FFFFFF082AAAAA ))
  \coordinator/m_iram/state_FSM_FFd2-In_SW0  (
    .I0(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I1(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I2(\coordinator/m_iram/I2C_signal/sda_fall_233 ),
    .I3(\coordinator/m_iram/I2C_signal/sda_rise_232 ),
    .I4(\coordinator/m_iram/I2C_signal/sck_high_234 ),
    .I5(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .O(N17)
  );
  LUT6 #(
    .INIT ( 64'hFFFF8000FFFF0000 ))
  \coordinator/m_iram/state_FSM_FFd2-In  (
    .I0(\coordinator/m_iram/I2C_signal/sck_fall_236 ),
    .I1(\coordinator/m_iram/cnt [0]),
    .I2(\coordinator/m_iram/GND_62_o_GND_62_o_equal_35_o<4>1 ),
    .I3(\coordinator/m_iram/state_FSM_FFd3-In1 ),
    .I4(N17),
    .I5(\coordinator/m_iram/_n0448_inv2_389 ),
    .O(\coordinator/m_iram/state_FSM_FFd2-In_98 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \coordinator/m_dram/I2C_signal/sck_window[7]_GND_58_o_equal_8_o<7>_SW0  (
    .I0(\coordinator/m_dram/I2C_signal/sck_window [5]),
    .I1(\coordinator/m_dram/I2C_signal/sck_window [4]),
    .I2(\coordinator/m_dram/I2C_signal/sck_window [7]),
    .O(N19)
  );
  LUT6 #(
    .INIT ( 64'h0000080000000000 ))
  \coordinator/m_dram/I2C_signal/sck_window[7]_GND_58_o_equal_8_o<7>  (
    .I0(\coordinator/m_dram/I2C_signal/sck_window [1]),
    .I1(\coordinator/m_dram/I2C_signal/sck_window [3]),
    .I2(\coordinator/m_dram/I2C_signal/sck_window [6]),
    .I3(\coordinator/m_dram/I2C_signal/sck_window [0]),
    .I4(N19),
    .I5(\coordinator/m_dram/I2C_signal/sck_window [2]),
    .O(\coordinator/m_dram/I2C_signal/sck_window[7]_GND_58_o_equal_8_o )
  );
  LUT4 #(
    .INIT ( 16'h0444 ))
  \coordinator/m_dram/state_FSM_FFd3-In1  (
    .I0(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .I1(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I2(\coordinator/m_dram/I2C_signal/sda_rise_355 ),
    .I3(\coordinator/m_dram/I2C_signal/sck_high_357 ),
    .O(\coordinator/m_dram/state_FSM_FFd3-In1_533 )
  );
  LUT6 #(
    .INIT ( 64'h5555100010001000 ))
  \coordinator/m_dram/state_FSM_FFd3-In2  (
    .I0(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I1(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I2(\coordinator/m_dram/I2C_signal/sck_high_357 ),
    .I3(\coordinator/m_dram/I2C_signal/sda_fall_356 ),
    .I4(\coordinator/m_dram/state_FSM_FFd2-In3 ),
    .I5(\coordinator/m_dram/state_FSM_FFd3-In1_533 ),
    .O(\coordinator/m_dram/state_FSM_FFd3-In2_534 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFA222 ))
  \coordinator/m_dram/state_FSM_FFd3-In3  (
    .I0(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I1(\coordinator/m_dram/cnt [0]),
    .I2(\coordinator/m_dram/I2C_signal/sda_fall_356 ),
    .I3(\coordinator/m_dram/I2C_signal/sck_high_357 ),
    .I4(\coordinator/m_dram/cnt [1]),
    .I5(\coordinator/m_dram/cnt [2]),
    .O(\coordinator/m_dram/state_FSM_FFd3-In3_535 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \coordinator/m_dram/state_FSM_FFd3-In4  (
    .I0(\coordinator/m_dram/cnt [3]),
    .I1(\coordinator/m_dram/I2C_signal/sck_fall_359 ),
    .O(\coordinator/m_dram/state_FSM_FFd3-In4_536 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF7522 ))
  \coordinator/m_dram/state_FSM_FFd3-In5  (
    .I0(\coordinator/m_dram/cnt [0]),
    .I1(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I2(\coordinator/m_dram/sda_data [0]),
    .I3(\coordinator/m_dram/WriteOperation_PWR_16_o_MUX_142_o<7>1_377 ),
    .I4(\coordinator/m_dram/state_FSM_FFd3-In3_535 ),
    .I5(\coordinator/m_dram/state_FSM_FFd3-In4_536 ),
    .O(\coordinator/m_dram/state_FSM_FFd3-In5_537 )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \coordinator/m_dram/state_FSM_FFd3-In6  (
    .I0(\coordinator/m_dram/state_FSM_FFd3-In2_534 ),
    .I1(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I2(\coordinator/m_dram/state_FSM_FFd3-In5_537 ),
    .O(\coordinator/m_dram/state_FSM_FFd3-In )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \coordinator/m_dram/state_FSM_FFd1-In_SW0  (
    .I0(\coordinator/m_dram/cnt [0]),
    .I1(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I2(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .O(N21)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \coordinator/m_iram/I2C_signal/sck_window[7]_GND_58_o_equal_8_o<7>_SW0  (
    .I0(\coordinator/m_iram/I2C_signal/sck_window [5]),
    .I1(\coordinator/m_iram/I2C_signal/sck_window [4]),
    .I2(\coordinator/m_iram/I2C_signal/sck_window [7]),
    .O(N23)
  );
  LUT6 #(
    .INIT ( 64'h0000080000000000 ))
  \coordinator/m_iram/I2C_signal/sck_window[7]_GND_58_o_equal_8_o<7>  (
    .I0(\coordinator/m_iram/I2C_signal/sck_window [1]),
    .I1(\coordinator/m_iram/I2C_signal/sck_window [3]),
    .I2(\coordinator/m_iram/I2C_signal/sck_window [6]),
    .I3(\coordinator/m_iram/I2C_signal/sck_window [0]),
    .I4(N23),
    .I5(\coordinator/m_iram/I2C_signal/sck_window [2]),
    .O(\coordinator/m_iram/I2C_signal/sck_window[7]_GND_58_o_equal_8_o )
  );
  LUT6 #(
    .INIT ( 64'h8888888800080808 ))
  \coordinator/m_iram/state_FSM_FFd1-In_SW0  (
    .I0(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I1(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I2(\coordinator/m_iram/ReadOperation_186 ),
    .I3(\coordinator/m_iram/I2C_signal/sck_rise_235 ),
    .I4(\coordinator/m_iram/WriteOperation_185 ),
    .I5(\coordinator/m_iram/cnt [4]),
    .O(N25)
  );
  LUT6 #(
    .INIT ( 64'h88000000AE262626 ))
  \coordinator/m_iram/_n0609_inv1  (
    .I0(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I1(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I2(\coordinator/m_iram/sck_high_sda_rise_AND_98_o ),
    .I3(\coordinator/m_iram/state_FSM_FFd1-In2 ),
    .I4(\coordinator/m_iram/WriteOperation_cnt[4]_AND_104_o ),
    .I5(\coordinator/m_iram/state_FSM_FFd3-In1 ),
    .O(\coordinator/m_iram/_n0609_inv1_541 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \coordinator/m_iram/_n0609_inv2  (
    .I0(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I1(\coordinator/m_iram/_n0609_inv1_541 ),
    .O(\coordinator/m_iram/_n0609_inv )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \coordinator/m_iram/_n0529_inv2  (
    .I0(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I1(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I2(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .O(\coordinator/m_iram/_n0529_inv2_546 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \coordinator/m_iram/_n0529_inv3  (
    .I0(\coordinator/m_iram/I2C_signal/sck_fall_236 ),
    .I1(\coordinator/m_iram/ReadOperation_186 ),
    .I2(\coordinator/m_iram/cnt [4]),
    .O(\coordinator/m_iram/_n0529_inv3_547 )
  );
  LUT5 #(
    .INIT ( 32'h02022202 ))
  \coordinator/m_dram/Mmux__n057511  (
    .I0(\coordinator/m_dram/ReadRegisterValue [7]),
    .I1(\coordinator/m_dram/oe_PWR_16_o_MUX_157_o ),
    .I2(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I3(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .I4(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .O(\coordinator/m_dram/Mmux__n05751 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \coordinator/m_dram/Mmux__n057513  (
    .I0(\coordinator/m_dram/cnt [1]),
    .I1(\coordinator/m_dram/cnt [2]),
    .I2(\coordinator/m_dram/ReadRegisterValue [4]),
    .I3(\coordinator/m_dram/ReadRegisterValue [0]),
    .I4(\coordinator/m_dram/ReadRegisterValue [2]),
    .I5(\coordinator/m_dram/ReadRegisterValue [6]),
    .O(\coordinator/m_dram/Mmux__n057512_550 )
  );
  LUT5 #(
    .INIT ( 32'hEC64A820 ))
  \coordinator/m_dram/Mmux__n057514  (
    .I0(\coordinator/m_dram/cnt [1]),
    .I1(\coordinator/m_dram/cnt [2]),
    .I2(\coordinator/m_dram/ReadRegisterValue [5]),
    .I3(\coordinator/m_dram/ReadRegisterValue [1]),
    .I4(\coordinator/m_dram/ReadRegisterValue [3]),
    .O(\coordinator/m_dram/Mmux__n057513_551 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFA280 ))
  \coordinator/m_dram/Mmux__n057515  (
    .I0(\coordinator/m_dram/Mmux__n057511_549 ),
    .I1(\coordinator/m_dram/cnt [0]),
    .I2(\coordinator/m_dram/Mmux__n057512_550 ),
    .I3(\coordinator/m_dram/Mmux__n057513_551 ),
    .I4(\coordinator/m_dram/Mmux__n05751 ),
    .O(\coordinator/m_dram/_n0575 )
  );
  LUT3 #(
    .INIT ( 8'h73 ))
  \coordinator/m_dram/Mmux__n04942_SW0  (
    .I0(\coordinator/m_dram/sda_data [0]),
    .I1(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I2(\coordinator/m_dram/WriteOperation_PWR_16_o_MUX_142_o<7>1_377 ),
    .O(N27)
  );
  LUT6 #(
    .INIT ( 64'h5555555511111101 ))
  \coordinator/m_iram/Mmux_state[2]_GND_62_o_Mux_96_o12  (
    .I0(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I1(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I2(\coordinator/m_iram/WriteOperation_PWR_20_o_MUX_216_o<7>1_376 ),
    .I3(\coordinator/m_iram/sda_data [0]),
    .I4(\coordinator/m_iram/oe_PWR_20_o_MUX_231_o ),
    .I5(\coordinator/m_iram/Mmux_state[2]_GND_62_o_Mux_96_o1 ),
    .O(\coordinator/m_iram/state[2]_GND_62_o_Mux_96_o )
  );
  LUT5 #(
    .INIT ( 32'h34340034 ))
  \coordinator/m_iram/Mmux__n0532211  (
    .I0(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I1(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I2(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I3(\coordinator/m_iram/state_FSM_FFd3-In1 ),
    .I4(\coordinator/m_iram/oe_PWR_20_o_MUX_231_o ),
    .O(\coordinator/m_iram/Mmux__n0532211_554 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF8000FFFF8080 ))
  \coordinator/m_iram/Mmux__n0532212  (
    .I0(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I1(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I2(\coordinator/m_iram/state_FSM_FFd1-In2 ),
    .I3(\coordinator/m_iram/WriteOperation_cnt[4]_AND_104_o ),
    .I4(\coordinator/m_iram/Mmux__n0532211_554 ),
    .I5(\coordinator/m_iram/Mmux__n0532111 ),
    .O(\coordinator/m_iram/Mmux__n053221 )
  );
  LUT5 #(
    .INIT ( 32'h02022202 ))
  \coordinator/m_iram/Mmux__n061211  (
    .I0(\coordinator/m_iram/ReadRegisterValue [15]),
    .I1(\coordinator/m_iram/oe_PWR_20_o_MUX_231_o ),
    .I2(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I3(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I4(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .O(\coordinator/m_iram/Mmux__n06121 )
  );
  LUT5 #(
    .INIT ( 32'h40000000 ))
  \coordinator/m_iram/Mmux__n061212  (
    .I0(\coordinator/m_iram/cnt [4]),
    .I1(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I2(\coordinator/m_iram/ReadOperation_186 ),
    .I3(\coordinator/m_iram/I2C_signal/sck_fall_236 ),
    .I4(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .O(\coordinator/m_iram/Mmux__n061211_556 )
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \coordinator/m_iram/Mmux__n05322_SW0  (
    .I0(\coordinator/m_iram/sda_data [0]),
    .I1(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I2(\coordinator/m_iram/WriteOperation_PWR_20_o_MUX_216_o<7>1_376 ),
    .O(N29)
  );
  LUT6 #(
    .INIT ( 64'h0400FFFF04000400 ))
  \coordinator/m_iram/Mmux__n05322  (
    .I0(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I1(N29),
    .I2(\coordinator/m_iram/oe_PWR_20_o_MUX_231_o ),
    .I3(\coordinator/m_iram/state_FSM_FFd3-In1 ),
    .I4(\coordinator/m_iram/cnt [0]),
    .I5(\coordinator/m_iram/Mmux__n053221 ),
    .O(\coordinator/m_iram/_n0532[0] )
  );
  LUT6 #(
    .INIT ( 64'h0123012301230101 ))
  \coordinator/m_dram/_n0544_inv1  (
    .I0(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I1(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I2(\coordinator/m_dram/state_FSM_FFd1-In1 ),
    .I3(\coordinator/m_dram/sck_high_sda_rise_AND_71_o ),
    .I4(\coordinator/m_dram/sck_rise_cnt[3]_AND_72_o ),
    .I5(\coordinator/m_dram/state_FSM_FFd1-In2 ),
    .O(\coordinator/m_dram/_n0544_inv1_558 )
  );
  LUT6 #(
    .INIT ( 64'h3330333030303130 ))
  \coordinator/m_dram/_n0544_inv5  (
    .I0(\coordinator/m_dram/cnt [0]),
    .I1(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I2(\coordinator/m_dram/sck_rise_cnt[3]_AND_72_o ),
    .I3(\coordinator/m_dram/state_FSM_FFd1-In2 ),
    .I4(\coordinator/m_dram/oe_PWR_16_o_MUX_157_o ),
    .I5(\coordinator/m_dram/WriteOperation_PWR_16_o_MUX_142_o<7>1_377 ),
    .O(\coordinator/m_dram/_n0544_inv5_561 )
  );
  LUT5 #(
    .INIT ( 32'h54545450 ))
  \coordinator/m_dram/_n0544_inv6  (
    .I0(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .I1(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I2(\coordinator/m_dram/_n0544_inv1_558 ),
    .I3(\coordinator/m_dram/_n0544_inv4_560 ),
    .I4(\coordinator/m_dram/_n0544_inv5_561 ),
    .O(\coordinator/m_dram/_n0544_inv )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000040 ))
  \coordinator/m_dram/_n0331_inv1  (
    .I0(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I1(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I2(\coordinator/m_dram/state_FSM_FFd1-In2 ),
    .I3(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .I4(\coordinator/m_dram/sck_rise_cnt[3]_AND_72_o ),
    .I5(\coordinator/m_dram/sck_high_sda_rise_AND_71_o ),
    .O(\coordinator/m_dram/_n0331_inv1_562 )
  );
  LUT6 #(
    .INIT ( 64'hF434C00034340000 ))
  \coordinator/m_dram/Mmux__n0494213  (
    .I0(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .I1(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I2(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I3(\coordinator/m_dram/state_FSM_FFd1-In1 ),
    .I4(\coordinator/m_dram/Mmux__n0494212_567 ),
    .I5(\coordinator/m_dram/Mmux__n0494211_566 ),
    .O(\coordinator/m_dram/Mmux__n049421 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \coordinator/m_iram/state_FSM_FFd3-In3  (
    .I0(\coordinator/m_iram/cnt [2]),
    .I1(\coordinator/m_iram/cnt [1]),
    .O(\coordinator/m_iram/state_FSM_FFd3-In4_568 )
  );
  LUT6 #(
    .INIT ( 64'hAAA2A2A2AAAAAAAA ))
  \coordinator/m_iram/state_FSM_FFd3-In5  (
    .I0(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I1(\coordinator/m_iram/cnt [4]),
    .I2(\coordinator/m_iram/cnt [3]),
    .I3(\coordinator/m_iram/I2C_signal/sda_fall_233 ),
    .I4(\coordinator/m_iram/I2C_signal/sck_high_234 ),
    .I5(\coordinator/m_iram/cnt [0]),
    .O(\coordinator/m_iram/state_FSM_FFd3-In6_570 )
  );
  LUT6 #(
    .INIT ( 64'hFFFBFFFBFFFFFFFB ))
  \coordinator/m_iram/state_FSM_FFd3-In6  (
    .I0(\coordinator/m_iram/cnt [2]),
    .I1(\coordinator/m_iram/I2C_signal/sck_fall_236 ),
    .I2(\coordinator/m_iram/cnt [1]),
    .I3(\coordinator/m_iram/state_FSM_FFd3-In6_570 ),
    .I4(\coordinator/m_iram/WriteOperation_PWR_20_o_MUX_216_o<7>1_376 ),
    .I5(\coordinator/m_iram/cnt [0]),
    .O(\coordinator/m_iram/state_FSM_FFd3-In7_571 )
  );
  LUT6 #(
    .INIT ( 64'h0000FBF30000FFF3 ))
  \coordinator/m_iram/state_FSM_FFd3-In7  (
    .I0(\coordinator/m_iram/sda_data [0]),
    .I1(\coordinator/m_iram/cnt [3]),
    .I2(\coordinator/m_iram/cnt [4]),
    .I3(\coordinator/m_iram/cnt [0]),
    .I4(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I5(\coordinator/m_iram/WriteOperation_PWR_20_o_MUX_216_o<7>1_376 ),
    .O(\coordinator/m_iram/state_FSM_FFd3-In8_572 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \coordinator/m_iram/state_FSM_FFd3-In8  (
    .I0(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I1(\coordinator/m_iram/state_FSM_FFd3-In7_571 ),
    .I2(\coordinator/m_iram/state_FSM_FFd3-In8_572 ),
    .I3(\coordinator/m_iram/state_FSM_FFd3-In5_569 ),
    .O(\coordinator/m_iram/state_FSM_FFd3-In )
  );
  LUT6 #(
    .INIT ( 64'h008C000000000000 ))
  \coordinator/m_iram/_n0662_inv3  (
    .I0(\coordinator/m_iram/sda_data [0]),
    .I1(\coordinator/m_iram/I2C_signal/sck_fall_236 ),
    .I2(\coordinator/m_iram/cnt [0]),
    .I3(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I4(\coordinator/m_iram/GND_62_o_GND_62_o_equal_35_o<4>1 ),
    .I5(\coordinator/m_iram/state_FSM_FFd3-In1 ),
    .O(\coordinator/m_iram/_n0662_inv3_574 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22222000 ))
  \coordinator/m_iram/_n0662_inv4  (
    .I0(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I1(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I2(\coordinator/m_iram/_n0662_inv3_574 ),
    .I3(\coordinator/m_iram/WriteOperation_PWR_20_o_MUX_216_o<7>1_376 ),
    .I4(\coordinator/m_iram/_n0662_inv2_573 ),
    .I5(\coordinator/m_iram/_n0688_inv ),
    .O(\coordinator/m_iram/_n0662_inv )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \coordinator/m_decoder/Mmux_n00541_SW0  (
    .I0(\coordinator/m_decoder/pre_inst[10] ),
    .I1(\coordinator/m_decoder/pre_inst[13] ),
    .O(N35)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000040 ))
  \coordinator/m_decoder/Mmux_n00541  (
    .I0(\coordinator/m_decoder/pre_inst[9] ),
    .I1(\coordinator/m_clk_gen/clkC_62 ),
    .I2(\coordinator/m_decoder/pre_inst[8] ),
    .I3(\coordinator/m_decoder/pre_inst[15] ),
    .I4(\coordinator/m_decoder/pre_inst[14] ),
    .I5(N35),
    .O(\coordinator/W )
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \coordinator/m_decoder/clkC_INST[15]_AND_33_o_SW0  (
    .I0(\coordinator/m_iram/idataout [9]),
    .I1(\coordinator/m_iram/idataout [14]),
    .I2(\coordinator/m_iram/idataout [15]),
    .I3(\coordinator/m_iram/idataout [8]),
    .O(N37)
  );
  LUT6 #(
    .INIT ( 64'h0000000080000000 ))
  \coordinator/m_decoder/clkC_INST[15]_AND_33_o  (
    .I0(\coordinator/m_iram/idataout [13]),
    .I1(\coordinator/m_iram/idataout [12]),
    .I2(\coordinator/m_clk_gen/clkC_62 ),
    .I3(\coordinator/m_iram/idataout [11]),
    .I4(\coordinator/m_iram/idataout [10]),
    .I5(N37),
    .O(\coordinator/CMDEND )
  );
  LUT6 #(
    .INIT ( 64'hFFFDEFFDFFFFEFF5 ))
  \carboncore/br_taken_reg/Mmux_in[0]_GND_3_o_MUX_1_o1_SW0  (
    .I0(\coordinator/m_iram/idataout [12]),
    .I1(\coordinator/m_iram/idataout [8]),
    .I2(\coordinator/m_iram/idataout [11]),
    .I3(\coordinator/m_iram/idataout [10]),
    .I4(\coordinator/m_iram/idataout [9]),
    .I5(\carboncore/acc_zero ),
    .O(N39)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \carboncore/br_taken_reg/Mmux_in[0]_GND_3_o_MUX_1_o1  (
    .I0(EN_IBUF_2),
    .I1(N39),
    .I2(\coordinator/m_iram/idataout [13]),
    .O(\carboncore/br_taken_reg/in[0]_GND_3_o_MUX_1_o )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \carboncore/acc_zero<7>_SW0  (
    .I0(\carboncore/acc/reg_acc_2_432 ),
    .I1(\carboncore/acc/reg_acc_1_431 ),
    .I2(\carboncore/acc/reg_acc_0_430 ),
    .O(N41)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \carboncore/acc_zero<7>  (
    .I0(\carboncore/acc/reg_acc_7_437 ),
    .I1(\carboncore/acc/reg_acc_6_436 ),
    .I2(\carboncore/acc/reg_acc_5_435 ),
    .I3(\carboncore/acc/reg_acc_4_434 ),
    .I4(\carboncore/acc/reg_acc_3_433 ),
    .I5(N41),
    .O(\carboncore/acc_zero )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<7>_SW0  (
    .I0(\carboncore/pc/reg_pc_4_37 ),
    .I1(\carboncore/pc/reg_pc_3_38 ),
    .O(N43)
  );
  LUT6 #(
    .INIT ( 64'hA0A0A0A028A0A0A0 ))
  \carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<7>  (
    .I0(EN_IBUF_2),
    .I1(N43),
    .I2(\carboncore/pc/reg_pc_7_34 ),
    .I3(\carboncore/pc/reg_pc_6_35 ),
    .I4(\carboncore/pc/reg_pc_5_36 ),
    .I5(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<3>_bdd0 ),
    .O(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<7>_495 )
  );
  IBUF   RESET_IBUF (
    .I(RESET),
    .O(RESET_IBUF_1)
  );
  IBUF   EN_IBUF (
    .I(EN),
    .O(EN_IBUF_2)
  );
  IBUF   IICING_IBUF (
    .I(IICING),
    .O(IICING_IBUF_3)
  );
  IBUF   ISCL_IBUF (
    .I(ISCL),
    .O(ISCL_IBUF_4)
  );
  IBUF   DSCL_IBUF (
    .I(DSCL),
    .O(DSCL_IBUF_5)
  );
  IOBUF   ISDA_IOBUF (
    .I(\coordinator/m_iram/sda_dout_167 ),
    .T(\coordinator/m_iram/Iram_IO_Convert/oe_inv ),
    .O(N45),
    .IO(ISDA)
  );
  IOBUF   DSDA_IOBUF (
    .I(\coordinator/m_dram/sda_dout_314 ),
    .T(\coordinator/m_dram/Dram_IO_Convert/oe_inv ),
    .O(N46),
    .IO(DSDA)
  );
  OBUF   CACK_OBUF (
    .I(\coordinator/CMDEND ),
    .O(CACK)
  );
  FD   \coordinator/m_dram_controller/wea  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram_controller/wea_rstpot_589 ),
    .Q(\coordinator/m_dram_controller/wea_52 )
  );
  FD   \coordinator/m_iram/sda_dout  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/sda_dout_rstpot_590 ),
    .Q(\coordinator/m_iram/sda_dout_167 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \coordinator/m_iram/MemWea  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/MemWea_rstpot_591 ),
    .Q(\coordinator/m_iram/MemWea_187 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \coordinator/m_iram/WROperation  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/WROperation_rstpot_592 ),
    .Q(\coordinator/m_iram/WROperation_184 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \coordinator/m_dram/MemWea  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/MemWea_rstpot_593 ),
    .Q(\coordinator/m_dram/MemWea_326 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \coordinator/m_dram/WROperation  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/WROperation_rstpot_594 ),
    .Q(\coordinator/m_dram/WROperation_323 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \coordinator/m_dram/oe  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_dram/oe_rstpot_595 ),
    .Q(\coordinator/m_dram/oe_327 )
  );
  LUT5 #(
    .INIT ( 32'h1111FF5F ))
  \coordinator/m_iram/Mmux__n05321111  (
    .I0(\coordinator/m_iram/ReadOperation_186 ),
    .I1(\coordinator/m_iram/WriteOperation_185 ),
    .I2(\coordinator/m_iram/I2C_signal/sck_fall_236 ),
    .I3(\coordinator/m_iram/cnt [4]),
    .I4(\coordinator/m_iram/ReadOperation_GND_62_o_AND_108_o1 ),
    .O(\coordinator/m_iram/Mmux__n0532111 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF0EFFFFFF00 ))
  \coordinator/m_dram/Mmux__n0494211  (
    .I0(\coordinator/m_dram/ReadOperation_325 ),
    .I1(\coordinator/m_dram/WriteOperation_324 ),
    .I2(\coordinator/m_dram/cnt [0]),
    .I3(\coordinator/m_dram/WriteOperation_cnt[3]_AND_77_o ),
    .I4(\coordinator/m_dram/ReadOperation_cnt[3]_AND_79_o ),
    .I5(\coordinator/m_dram/state_FSM_FFd1-In2 ),
    .O(\coordinator/m_dram/Mmux__n0494211_566 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000400 ))
  \coordinator/m_iram/oe_PWR_20_o_MUX_231_o1  (
    .I0(\coordinator/m_iram/cnt [2]),
    .I1(\coordinator/m_iram/cnt [3]),
    .I2(\coordinator/m_iram/cnt [1]),
    .I3(\coordinator/m_iram/I2C_signal/sck_fall_236 ),
    .I4(\coordinator/m_iram/cnt [4]),
    .I5(\coordinator/m_iram/cnt [0]),
    .O(\coordinator/m_iram/oe_PWR_20_o_MUX_231_o )
  );
  LUT6 #(
    .INIT ( 64'hBBBBBBFBBBBBBBBB ))
  \coordinator/m_iram/_n0581_inv4_SW0  (
    .I0(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I1(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I2(\coordinator/m_iram/state_FSM_FFd1-In2 ),
    .I3(\coordinator/m_iram/WriteOperation_cnt[4]_AND_104_o ),
    .I4(\coordinator/m_iram/_n0407_inv2 ),
    .I5(\coordinator/m_iram/Mmux__n0532111 ),
    .O(N49)
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \coordinator/m_dram/WriteOperation_PWR_16_o_MUX_142_o<7>1_SW1  (
    .I0(\coordinator/m_dram/sda_data [5]),
    .I1(\coordinator/m_dram/sda_data [1]),
    .I2(\coordinator/m_dram/sda_data [4]),
    .O(N52)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \coordinator/m_dram/_n0331_inv411  (
    .I0(\coordinator/m_dram/sda_data [7]),
    .I1(\coordinator/m_dram/sda_data [6]),
    .I2(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I3(N13),
    .I4(N52),
    .I5(\coordinator/m_dram/sck_rise_cnt[3]_AND_72_o ),
    .O(\coordinator/m_dram/_n0331_inv41 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \coordinator/m_iram/cnt_1  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/cnt_1_rstpot_598 ),
    .Q(\coordinator/m_iram/cnt [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \coordinator/m_iram/oe  (
    .C(GCLK_BUFGP_0),
    .D(\coordinator/m_iram/oe_rstpot_599 ),
    .Q(\coordinator/m_iram/oe_188 )
  );
  LUT6 #(
    .INIT ( 64'h01FF01FF01000101 ))
  \coordinator/m_dram/Mmux__n04942  (
    .I0(N27),
    .I1(\coordinator/m_dram/sck_rise_cnt[3]_AND_72_o ),
    .I2(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I3(\coordinator/m_dram/cnt [0]),
    .I4(\coordinator/m_dram/state_FSM_FFd1-In2 ),
    .I5(\coordinator/m_dram/Mmux__n049421 ),
    .O(\coordinator/m_dram/_n0494 [0])
  );
  LUT5 #(
    .INIT ( 32'hFFC0AAAA ))
  \coordinator/m_iram/sda_dout_rstpot  (
    .I0(\coordinator/m_iram/sda_dout_167 ),
    .I1(\coordinator/m_iram/Mmux__n061211_556 ),
    .I2(\coordinator/m_iram/_n0304 ),
    .I3(\coordinator/m_iram/Mmux__n06121 ),
    .I4(\coordinator/m_iram/_n0662_inv ),
    .O(\coordinator/m_iram/sda_dout_rstpot_590 )
  );
  LUT4 #(
    .INIT ( 16'h48AA ))
  \coordinator/m_iram/cnt_1_rstpot  (
    .I0(\coordinator/m_iram/cnt [1]),
    .I1(\coordinator/m_iram/Mmux__n053221 ),
    .I2(\coordinator/m_iram/cnt [0]),
    .I3(\coordinator/m_iram/_n0581_inv ),
    .O(\coordinator/m_iram/cnt_1_rstpot_598 )
  );
  LUT4 #(
    .INIT ( 16'h0CAA ))
  \coordinator/m_iram/MemWea_rstpot  (
    .I0(\coordinator/m_iram/MemWea_187 ),
    .I1(\coordinator/m_iram/WriteOperation_185 ),
    .I2(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I3(\coordinator/m_iram/_n0407_inv_126 ),
    .O(\coordinator/m_iram/MemWea_rstpot_591 )
  );
  LUT6 #(
    .INIT ( 64'h5540554055735540 ))
  \coordinator/m_iram/_n0581_inv5  (
    .I0(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I1(\coordinator/m_iram/_n0581_inv3_527 ),
    .I2(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I3(\coordinator/m_iram/_n0581_inv2_526 ),
    .I4(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I5(N49),
    .O(\coordinator/m_iram/_n0581_inv )
  );
  LUT4 #(
    .INIT ( 16'hBF3F ))
  \coordinator/m_iram/_n0407_inv_SW1  (
    .I0(\coordinator/m_iram/WriteOperation_185 ),
    .I1(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I2(\coordinator/m_iram/_n0407_inv2 ),
    .I3(\coordinator/m_iram/ReadOperation_GND_62_o_AND_108_o1 ),
    .O(N58)
  );
  LUT6 #(
    .INIT ( 64'h2020202020206420 ))
  \coordinator/m_iram/_n0407_inv  (
    .I0(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I1(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I2(\coordinator/m_iram/sck_high_sda_rise_AND_98_o ),
    .I3(\coordinator/m_iram/_n0407_inv1 ),
    .I4(\coordinator/m_iram/ReadOperation_GND_62_o_AND_108_o ),
    .I5(N58),
    .O(\coordinator/m_iram/_n0407_inv_126 )
  );
  LUT5 #(
    .INIT ( 32'h00040000 ))
  \coordinator/m_dram/_n0491_inv1  (
    .I0(\coordinator/m_dram/WriteOperation_cnt[3]_AND_77_o ),
    .I1(\coordinator/m_dram/ReadOperation_325 ),
    .I2(\coordinator/m_dram/ReadOperation_cnt[3]_AND_79_o ),
    .I3(\coordinator/m_dram/cnt [0]),
    .I4(\coordinator/m_dram/state_FSM_FFd1-In2 ),
    .O(\coordinator/m_dram/_n0491_inv1_528 )
  );
  LUT6 #(
    .INIT ( 64'h00000000F7000000 ))
  \coordinator/m_iram/_n0369_inv3  (
    .I0(\coordinator/m_iram/ReadOperation_186 ),
    .I1(\coordinator/m_iram/I2C_signal/sck_fall_236 ),
    .I2(\coordinator/m_iram/cnt [4]),
    .I3(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I4(\coordinator/m_iram/state_FSM_FFd1-In2 ),
    .I5(\coordinator/m_iram/WriteOperation_cnt[4]_AND_104_o ),
    .O(\coordinator/m_iram/_n0369_inv3_544 )
  );
  LUT5 #(
    .INIT ( 32'h00000400 ))
  \coordinator/m_iram/_n0369_inv1  (
    .I0(\coordinator/m_iram/cnt [2]),
    .I1(\coordinator/m_iram/cnt [3]),
    .I2(\coordinator/m_iram/cnt [1]),
    .I3(\coordinator/m_iram/I2C_signal/sck_fall_236 ),
    .I4(\coordinator/m_iram/cnt [4]),
    .O(\coordinator/m_iram/_n0369_inv1_542 )
  );
  LUT6 #(
    .INIT ( 64'h55FF153F00000000 ))
  \coordinator/m_dram/_n0331_inv321  (
    .I0(\coordinator/m_dram/I2C_signal/sda_fall_356 ),
    .I1(\coordinator/m_dram/I2C_signal/sck_rise_358 ),
    .I2(\coordinator/m_dram/WriteOperation_324 ),
    .I3(\coordinator/m_dram/I2C_signal/sck_high_357 ),
    .I4(\coordinator/m_dram/cnt [3]),
    .I5(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .O(\coordinator/m_dram/_n0331_inv32 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFBFF ))
  \coordinator/m_iram/Mmux_state[2]_GND_62_o_Mux_96_o11_SW0  (
    .I0(\coordinator/m_iram/cnt [2]),
    .I1(\coordinator/m_iram/cnt [3]),
    .I2(\coordinator/m_iram/cnt [1]),
    .I3(\coordinator/m_iram/I2C_signal/sck_fall_236 ),
    .I4(\coordinator/m_iram/cnt [4]),
    .I5(\coordinator/m_iram/cnt [0]),
    .O(N60)
  );
  LUT6 #(
    .INIT ( 64'h400040FF000000FF ))
  \coordinator/m_iram/Mmux_state[2]_GND_62_o_Mux_96_o11  (
    .I0(\coordinator/m_iram/ReadOperation_186 ),
    .I1(\coordinator/m_iram/WriteOperation_185 ),
    .I2(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I3(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I4(N60),
    .I5(\coordinator/m_iram/ReadOperation_GND_62_o_AND_108_o1 ),
    .O(\coordinator/m_iram/Mmux_state[2]_GND_62_o_Mux_96_o1 )
  );
  LUT6 #(
    .INIT ( 64'h3010000000000000 ))
  \coordinator/m_dram/_n0625_inv1  (
    .I0(\coordinator/m_dram/I2C_signal/sck_rise_358 ),
    .I1(\coordinator/m_dram/ReadOperation_325 ),
    .I2(\coordinator/m_dram/WriteOperation_324 ),
    .I3(\coordinator/m_dram/cnt [3]),
    .I4(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I5(\coordinator/m_dram/state_FSM_FFd1-In1 ),
    .O(\coordinator/m_dram/_n0625_inv1_564 )
  );
  LUT6 #(
    .INIT ( 64'hFE02FE02FE02FA0A ))
  \coordinator/m_dram/oe_rstpot  (
    .I0(\coordinator/m_dram/oe_327 ),
    .I1(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I2(\coordinator/m_dram/_n0331_inv1_562 ),
    .I3(\coordinator/m_dram/state[2]_GND_57_o_Mux_88_o ),
    .I4(\coordinator/m_dram/_n0331_inv3_563 ),
    .I5(N65),
    .O(\coordinator/m_dram/oe_rstpot_595 )
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \coordinator/m_iram/_n0369_inv4_SW0  (
    .I0(\coordinator/m_iram/_n0407_inv2 ),
    .I1(\coordinator/m_iram/_n0369_inv3_544 ),
    .I2(\coordinator/m_iram/Mmux__n0532111 ),
    .O(N67)
  );
  LUT6 #(
    .INIT ( 64'hFFFA000AFFEA002A ))
  \coordinator/m_iram/oe_rstpot  (
    .I0(\coordinator/m_iram/oe_188 ),
    .I1(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I2(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I3(\coordinator/m_iram/_n0369_inv2_543 ),
    .I4(\coordinator/m_iram/state[2]_GND_62_o_Mux_96_o ),
    .I5(N67),
    .O(\coordinator/m_iram/oe_rstpot_599 )
  );
  LUT6 #(
    .INIT ( 64'h2020202020202000 ))
  \coordinator/m_dram/_n0331_inv3  (
    .I0(\coordinator/m_dram/state_FSM_FFd1-In2 ),
    .I1(\coordinator/m_dram/ReadOperation_cnt[3]_AND_79_o ),
    .I2(\coordinator/m_dram/_n0331_inv32 ),
    .I3(\coordinator/m_dram/WriteOperation_324 ),
    .I4(\coordinator/m_dram/ReadOperation_325 ),
    .I5(\coordinator/m_dram/cnt [0]),
    .O(\coordinator/m_dram/_n0331_inv3_563 )
  );
  LUT6 #(
    .INIT ( 64'hFBBBFBBBF333F000 ))
  \coordinator/m_dram/_n0625_inv3_SW1  (
    .I0(\coordinator/m_dram/sda_data [0]),
    .I1(\coordinator/m_dram/cnt [0]),
    .I2(\coordinator/m_dram/ReadOperation_cnt[3]_AND_79_o ),
    .I3(\coordinator/m_dram/_n0331_inv32 ),
    .I4(\coordinator/m_dram/_n0625_inv1_564 ),
    .I5(\coordinator/m_dram/_n0331_inv41 ),
    .O(N73)
  );
  LUT6 #(
    .INIT ( 64'hFFFF404FFFFF000F ))
  \coordinator/m_dram/_n0625_inv3  (
    .I0(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .I1(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I2(\coordinator/m_dram/state_FSM_FFd1-In2 ),
    .I3(N72),
    .I4(\coordinator/m_dram/_n0651_inv ),
    .I5(N73),
    .O(\coordinator/m_dram/_n0625_inv )
  );
  LUT5 #(
    .INIT ( 32'hFFFFECA0 ))
  \coordinator/m_iram/_n0662_inv2_SW2  (
    .I0(\coordinator/m_iram/I2C_signal/sck_rise_235 ),
    .I1(\coordinator/m_iram/I2C_signal/sda_fall_233 ),
    .I2(\coordinator/m_iram/WriteOperation_185 ),
    .I3(\coordinator/m_iram/I2C_signal/sck_high_234 ),
    .I4(\coordinator/m_iram/cnt [4]),
    .O(N75)
  );
  LUT5 #(
    .INIT ( 32'hCF0FEFAF ))
  \coordinator/m_iram/_n0662_inv2_SW3  (
    .I0(\coordinator/m_iram/I2C_signal/sck_rise_235 ),
    .I1(\coordinator/m_iram/I2C_signal/sda_fall_233 ),
    .I2(\coordinator/m_iram/WriteOperation_185 ),
    .I3(\coordinator/m_iram/I2C_signal/sck_high_234 ),
    .I4(\coordinator/m_iram/cnt [4]),
    .O(N76)
  );
  LUT6 #(
    .INIT ( 64'h008050D000800080 ))
  \coordinator/m_iram/_n0662_inv2  (
    .I0(\coordinator/m_iram/ReadOperation_186 ),
    .I1(\coordinator/m_iram/I2C_signal/sck_fall_236 ),
    .I2(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I3(N75),
    .I4(N76),
    .I5(\coordinator/m_iram/ReadOperation_GND_62_o_AND_108_o1 ),
    .O(\coordinator/m_iram/_n0662_inv2_573 )
  );
  LUT5 #(
    .INIT ( 32'h0000EAC0 ))
  \coordinator/m_dram/_n0544_inv2  (
    .I0(\coordinator/m_dram/ReadOperation_325 ),
    .I1(\coordinator/m_dram/I2C_signal/sck_rise_358 ),
    .I2(\coordinator/m_dram/WriteOperation_324 ),
    .I3(\coordinator/m_dram/I2C_signal/sck_fall_359 ),
    .I4(\coordinator/m_dram/cnt [3]),
    .O(\coordinator/m_dram/_n0544_inv2_559 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000200000 ))
  \coordinator/m_dram/ReadOperation_GND_57_o_AND_89_o1  (
    .I0(\coordinator/m_dram/ReadOperation_325 ),
    .I1(\coordinator/m_dram/cnt [2]),
    .I2(\coordinator/m_dram/I2C_signal/sck_fall_359 ),
    .I3(\coordinator/m_dram/cnt [1]),
    .I4(\coordinator/m_dram/cnt [3]),
    .I5(\coordinator/m_dram/cnt [0]),
    .O(\coordinator/m_dram/ReadOperation_GND_57_o_AND_89_o )
  );
  LUT5 #(
    .INIT ( 32'h00000200 ))
  \coordinator/m_dram/oe_PWR_16_o_MUX_157_o1  (
    .I0(\coordinator/m_dram/I2C_signal/sck_fall_359 ),
    .I1(\coordinator/m_dram/cnt [2]),
    .I2(\coordinator/m_dram/cnt [1]),
    .I3(\coordinator/m_dram/cnt [3]),
    .I4(\coordinator/m_dram/cnt [0]),
    .O(\coordinator/m_dram/oe_PWR_16_o_MUX_157_o )
  );
  LUT5 #(
    .INIT ( 32'h00200000 ))
  \coordinator/m_dram/state_FSM_FFd2-In31  (
    .I0(\coordinator/m_dram/cnt [0]),
    .I1(\coordinator/m_dram/cnt [2]),
    .I2(\coordinator/m_dram/cnt [3]),
    .I3(\coordinator/m_dram/cnt [1]),
    .I4(\coordinator/m_dram/I2C_signal/sck_fall_359 ),
    .O(\coordinator/m_dram/state_FSM_FFd2-In3 )
  );
  LUT6 #(
    .INIT ( 64'h2020202220202000 ))
  \coordinator/m_iram/_n0529_inv1  (
    .I0(\coordinator/m_iram/I2C_signal/sck_high_234 ),
    .I1(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I2(\coordinator/m_iram/I2C_signal/sda_rise_232 ),
    .I3(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I4(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I5(\coordinator/m_iram/I2C_signal/sda_fall_233 ),
    .O(\coordinator/m_iram/_n0529_inv1_545 )
  );
  LUT6 #(
    .INIT ( 64'h44444444444E4444 ))
  \coordinator/m_dram/Mmux__n0494212  (
    .I0(\coordinator/m_dram/cnt [3]),
    .I1(\coordinator/m_dram/I2C_signal/sck_rise_358 ),
    .I2(\coordinator/m_dram/cnt [2]),
    .I3(\coordinator/m_dram/cnt [1]),
    .I4(\coordinator/m_dram/I2C_signal/sck_fall_359 ),
    .I5(\coordinator/m_dram/cnt [0]),
    .O(\coordinator/m_dram/Mmux__n0494212_567 )
  );
  LUT6 #(
    .INIT ( 64'hFF02FF00FF00FF00 ))
  \coordinator/m_dram/_n0331_inv4_SW0  (
    .I0(\coordinator/m_dram/I2C_signal/sck_fall_359 ),
    .I1(\coordinator/m_dram/cnt [2]),
    .I2(\coordinator/m_dram/cnt [1]),
    .I3(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .I4(\coordinator/m_dram/cnt [3]),
    .I5(\coordinator/m_dram/_n0331_inv41 ),
    .O(N65)
  );
  LUT6 #(
    .INIT ( 64'hFFFF135F00000000 ))
  \coordinator/m_iram/_n0407_inv11  (
    .I0(\coordinator/m_iram/I2C_signal/sck_rise_235 ),
    .I1(\coordinator/m_iram/ReadOperation_186 ),
    .I2(\coordinator/m_iram/WriteOperation_185 ),
    .I3(\coordinator/m_iram/I2C_signal/sck_fall_236 ),
    .I4(\coordinator/m_iram/cnt [4]),
    .I5(\coordinator/m_iram/state_FSM_FFd1-In2 ),
    .O(\coordinator/m_iram/_n0407_inv1 )
  );
  LUT6 #(
    .INIT ( 64'h0070000000770077 ))
  \coordinator/m_iram/_n0581_inv3  (
    .I0(\coordinator/m_iram/I2C_signal/sda_rise_232 ),
    .I1(\coordinator/m_iram/I2C_signal/sck_high_234 ),
    .I2(\coordinator/m_iram/I2C_signal/sck_fall_236 ),
    .I3(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I4(\coordinator/m_iram/GND_62_o_GND_62_o_equal_35_o<4>1 ),
    .I5(\coordinator/m_iram/state_FSM_FFd3-In1 ),
    .O(\coordinator/m_iram/_n0581_inv3_527 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFF8FFFFF ))
  \coordinator/m_dram/_n0369_inv_SW0  (
    .I0(\coordinator/m_dram/I2C_signal/sck_high_357 ),
    .I1(\coordinator/m_dram/I2C_signal/sda_fall_356 ),
    .I2(\coordinator/m_dram/cnt [0]),
    .I3(\coordinator/m_dram/ReadOperation_cnt[3]_AND_79_o ),
    .I4(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I5(\coordinator/m_dram/WriteOperation_cnt[3]_AND_77_o ),
    .O(N33)
  );
  MUXF7   \coordinator/m_dram/WROperation_rstpot  (
    .I0(N78),
    .I1(N79),
    .S(\coordinator/m_dram/_n0491_inv1_528 ),
    .O(\coordinator/m_dram/WROperation_rstpot_594 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA222AAFAA2220 ))
  \coordinator/m_dram/WROperation_rstpot_F  (
    .I0(\coordinator/m_dram/WROperation_323 ),
    .I1(\coordinator/m_dram/sck_high_sda_rise_AND_71_o ),
    .I2(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .I3(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I4(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I5(\coordinator/m_dram/state_FSM_FFd1-In1 ),
    .O(N78)
  );
  LUT6 #(
    .INIT ( 64'h880AAA2ABB0AAA08 ))
  \coordinator/m_dram/WROperation_rstpot_G  (
    .I0(\coordinator/m_dram/WROperation_323 ),
    .I1(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .I2(\coordinator/m_dram/sck_high_sda_rise_AND_71_o ),
    .I3(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I4(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I5(\coordinator/m_dram/state_FSM_FFd1-In1 ),
    .O(N79)
  );
  MUXF7   \coordinator/m_dram/MemWea_rstpot  (
    .I0(N80),
    .I1(N81),
    .S(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .O(\coordinator/m_dram/MemWea_rstpot_593 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAEAAAAAAA2AA ))
  \coordinator/m_dram/MemWea_rstpot_F  (
    .I0(\coordinator/m_dram/MemWea_326 ),
    .I1(\coordinator/m_dram/state_FSM_FFd1-In2 ),
    .I2(\coordinator/m_dram/ReadOperation_GND_57_o_AND_89_o ),
    .I3(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I4(N33),
    .I5(\coordinator/m_dram/WriteOperation_324 ),
    .O(N80)
  );
  MUXF7   \coordinator/m_iram/WROperation_rstpot  (
    .I0(N82),
    .I1(N83),
    .S(\coordinator/m_iram/state_FSM_FFd1-In2 ),
    .O(\coordinator/m_iram/WROperation_rstpot_592 )
  );
  LUT6 #(
    .INIT ( 64'h4044444444444444 ))
  \coordinator/m_iram/WROperation_rstpot_G  (
    .I0(\coordinator/m_iram/_n0529_inv1_545 ),
    .I1(\coordinator/m_iram/WROperation_184 ),
    .I2(\coordinator/m_iram/WriteOperation_cnt[4]_AND_104_o ),
    .I3(\coordinator/m_iram/_n0529_inv3_547 ),
    .I4(\coordinator/m_iram/ReadOperation_GND_62_o_AND_108_o ),
    .I5(\coordinator/m_iram/_n0529_inv2_546 ),
    .O(N83)
  );
  LUT6 #(
    .INIT ( 64'h4445000146470203 ))
  \coordinator/m_dram/_n0410_inv4  (
    .I0(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I1(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .I2(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I3(\coordinator/m_dram/state_FSM_FFd1-In1 ),
    .I4(\coordinator/m_dram/sck_high_sda_rise_AND_71_o ),
    .I5(N84),
    .O(\coordinator/m_dram/_n0410_inv )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \coordinator/m_dram_controller/wea_rstpot  (
    .I0(\coordinator/W ),
    .I1(\coordinator/m_dram_controller/count [1]),
    .I2(\coordinator/m_dram_controller/count [0]),
    .O(\coordinator/m_dram_controller/wea_rstpot_589 )
  );
  LUT6 #(
    .INIT ( 64'h0151ABFBFEAE5404 ))
  \carboncore/alu/Madd_res_Madd_lut<7>  (
    .I0(\carboncore/sel_A [1]),
    .I1(DI[7]),
    .I2(\carboncore/sel_A [0]),
    .I3(\carboncore/acc/reg_acc_7_437 ),
    .I4(\carboncore/pc/reg_pc_7_34 ),
    .I5(\carboncore/alu/B [7]),
    .O(\carboncore/alu/Madd_res_Madd_lut [7])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFDFFFF ))
  \coordinator/m_iram/_n0369_inv2_SW0  (
    .I0(\coordinator/m_iram/sda_data [5]),
    .I1(\coordinator/m_iram/sda_data [6]),
    .I2(\coordinator/m_iram/sda_data [4]),
    .I3(N11),
    .I4(\coordinator/m_iram/sda_data [7]),
    .I5(\coordinator/m_iram/sda_data [3]),
    .O(N86)
  );
  LUT6 #(
    .INIT ( 64'h0020002000200828 ))
  \coordinator/m_iram/_n0369_inv2  (
    .I0(\coordinator/m_iram/_n0369_inv1_542 ),
    .I1(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I2(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I3(N86),
    .I4(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I5(\coordinator/m_iram/sck_high_sda_rise_AND_98_o ),
    .O(\coordinator/m_iram/_n0369_inv2_543 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \coordinator/m_dram/_n0572_inv2_SW0  (
    .I0(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .I1(\coordinator/m_dram/cnt [3]),
    .I2(\coordinator/m_dram/I2C_signal/sck_rise_358 ),
    .O(N88)
  );
  LUT6 #(
    .INIT ( 64'h4404040454141414 ))
  \coordinator/m_dram/_n0572_inv2  (
    .I0(N88),
    .I1(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I2(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I3(\coordinator/m_dram/state_FSM_FFd1-In1 ),
    .I4(\coordinator/m_dram/WriteOperation_324 ),
    .I5(\coordinator/m_dram/sck_high_sda_rise_AND_71_o ),
    .O(\coordinator/m_dram/_n0572_inv )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \coordinator/m_iram/_n0448_inv1  (
    .I0(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I1(\coordinator/m_iram/I2C_signal/sck_high_234 ),
    .I2(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I3(\coordinator/m_iram/I2C_signal/sda_fall_233 ),
    .O(\coordinator/m_iram/_n0448_inv1_529 )
  );
  LUT5 #(
    .INIT ( 32'h40000000 ))
  \coordinator/m_dram/Mmux__n057512  (
    .I0(\coordinator/m_dram/cnt [3]),
    .I1(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I2(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I3(\coordinator/m_dram/ReadOperation_325 ),
    .I4(\coordinator/m_dram/I2C_signal/sck_fall_359 ),
    .O(\coordinator/m_dram/Mmux__n057511_549 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFDFFFF ))
  \coordinator/W_inv1  (
    .I0(\coordinator/m_clk_gen/clkC_62 ),
    .I1(\coordinator/m_decoder/pre_inst[14] ),
    .I2(\coordinator/m_decoder/pre_inst[9] ),
    .I3(\coordinator/m_decoder/pre_inst[15] ),
    .I4(\coordinator/m_decoder/pre_inst[8] ),
    .I5(N35),
    .O(\coordinator/W_inv )
  );
  LUT6 #(
    .INIT ( 64'hFFF7FFFFFFFFFFFF ))
  \coordinator/m_dram/_n0625_inv3_SW0  (
    .I0(\coordinator/m_dram/ReadOperation_325 ),
    .I1(\coordinator/m_dram/I2C_signal/sck_fall_359 ),
    .I2(\coordinator/m_dram/cnt [3]),
    .I3(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .I4(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I5(\coordinator/m_dram/_n0331_inv32 ),
    .O(N72)
  );
  LUT6 #(
    .INIT ( 64'h2F2A2A2AFF2A2A2A ))
  \coordinator/m_dram/state_FSM_FFd1-In  (
    .I0(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .I1(\coordinator/m_dram/I2C_signal/sda_rise_355 ),
    .I2(\coordinator/m_dram/I2C_signal/sck_high_357 ),
    .I3(N21),
    .I4(\coordinator/m_dram/state_FSM_FFd1-In2 ),
    .I5(\coordinator/m_dram/I2C_signal/sda_fall_356 ),
    .O(\coordinator/m_dram/state_FSM_FFd1-In_250 )
  );
  LUT6 #(
    .INIT ( 64'h2F2A2A2AFF2A2A2A ))
  \coordinator/m_iram/state_FSM_FFd1-In  (
    .I0(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I1(\coordinator/m_iram/I2C_signal/sda_rise_232 ),
    .I2(\coordinator/m_iram/I2C_signal/sck_high_234 ),
    .I3(N25),
    .I4(\coordinator/m_iram/_n0407_inv2 ),
    .I5(\coordinator/m_iram/I2C_signal/sda_fall_233 ),
    .O(\coordinator/m_iram/state_FSM_FFd1-In_97 )
  );
  LUT6 #(
    .INIT ( 64'h00A002A002A002A0 ))
  \carboncore/decoder/reg_sel_B<2>1  (
    .I0(\coordinator/m_iram/idataout [12]),
    .I1(\coordinator/m_iram/idataout [10]),
    .I2(\coordinator/m_iram/idataout [11]),
    .I3(\coordinator/m_iram/idataout [13]),
    .I4(\coordinator/m_iram/idataout [8]),
    .I5(\coordinator/m_iram/idataout [9]),
    .O(\carboncore/sel_B [1])
  );
  LUT5 #(
    .INIT ( 32'h44F44444 ))
  \coordinator/m_iram/WROperation_rstpot_F  (
    .I0(\coordinator/m_iram/_n0529_inv1_545 ),
    .I1(\coordinator/m_iram/WROperation_184 ),
    .I2(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I3(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I4(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .O(N82)
  );
  LUT6 #(
    .INIT ( 64'h0151ABFBFEAE5404 ))
  \carboncore/alu/Madd_res_Madd_lut<6>  (
    .I0(\carboncore/sel_A [1]),
    .I1(DI[6]),
    .I2(\carboncore/sel_A [0]),
    .I3(\carboncore/acc/reg_acc_6_436 ),
    .I4(\carboncore/pc/reg_pc_6_35 ),
    .I5(\carboncore/alu/B [6]),
    .O(\carboncore/alu/Madd_res_Madd_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h0151ABFBFEAE5404 ))
  \carboncore/alu/Madd_res_Madd_lut<5>  (
    .I0(\carboncore/sel_A [1]),
    .I1(DI[5]),
    .I2(\carboncore/sel_A [0]),
    .I3(\carboncore/acc/reg_acc_5_435 ),
    .I4(\carboncore/pc/reg_pc_5_36 ),
    .I5(\carboncore/alu/B [5]),
    .O(\carboncore/alu/Madd_res_Madd_lut [5])
  );
  LUT6 #(
    .INIT ( 64'h0151ABFBFEAE5404 ))
  \carboncore/alu/Madd_res_Madd_lut<4>  (
    .I0(\carboncore/sel_A [1]),
    .I1(DI[4]),
    .I2(\carboncore/sel_A [0]),
    .I3(\carboncore/acc/reg_acc_4_434 ),
    .I4(\carboncore/pc/reg_pc_4_37 ),
    .I5(\carboncore/alu/B [4]),
    .O(\carboncore/alu/Madd_res_Madd_lut [4])
  );
  LUT6 #(
    .INIT ( 64'h0151ABFBFEAE5404 ))
  \carboncore/alu/Madd_res_Madd_lut<3>  (
    .I0(\carboncore/sel_A [1]),
    .I1(DI[3]),
    .I2(\carboncore/sel_A [0]),
    .I3(\carboncore/acc/reg_acc_3_433 ),
    .I4(\carboncore/pc/reg_pc_3_38 ),
    .I5(\carboncore/alu/B [3]),
    .O(\carboncore/alu/Madd_res_Madd_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h0151ABFBFEAE5404 ))
  \carboncore/alu/Madd_res_Madd_lut<2>  (
    .I0(\carboncore/sel_A [1]),
    .I1(DI[2]),
    .I2(\carboncore/sel_A [0]),
    .I3(\carboncore/acc/reg_acc_2_432 ),
    .I4(\carboncore/pc/reg_pc_2_39 ),
    .I5(\carboncore/alu/B [2]),
    .O(\carboncore/alu/Madd_res_Madd_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h0151ABFBFEAE5404 ))
  \carboncore/alu/Madd_res_Madd_lut<1>  (
    .I0(\carboncore/sel_A [1]),
    .I1(DI[1]),
    .I2(\carboncore/sel_A [0]),
    .I3(\carboncore/acc/reg_acc_1_431 ),
    .I4(\carboncore/pc/reg_pc_1_40 ),
    .I5(\carboncore/alu/B [1]),
    .O(\carboncore/alu/Madd_res_Madd_lut [1])
  );
  LUT6 #(
    .INIT ( 64'h0151ABFBFEAE5404 ))
  \carboncore/alu/Madd_res_Madd_lut<0>  (
    .I0(\carboncore/sel_A [1]),
    .I1(DI[0]),
    .I2(\carboncore/sel_A [0]),
    .I3(\carboncore/acc/reg_acc_0_430 ),
    .I4(\carboncore/pc/reg_pc_0_41 ),
    .I5(\carboncore/alu/B [0]),
    .O(\carboncore/alu/Madd_res_Madd_lut [0])
  );
  LUT5 #(
    .INIT ( 32'h28888888 ))
  \carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<3>2  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/pc/reg_pc_3_38 ),
    .I2(\carboncore/pc/reg_pc_0_41 ),
    .I3(\carboncore/pc/reg_pc_1_40 ),
    .I4(\carboncore/pc/reg_pc_2_39 ),
    .O(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h2888888888888888 ))
  \carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<4>1  (
    .I0(EN_IBUF_2),
    .I1(\carboncore/pc/reg_pc_4_37 ),
    .I2(\carboncore/pc/reg_pc_3_38 ),
    .I3(\carboncore/pc/reg_pc_0_41 ),
    .I4(\carboncore/pc/reg_pc_1_40 ),
    .I5(\carboncore/pc/reg_pc_2_39 ),
    .O(\carboncore/pc_plus_1/pc[7]_GND_14_o_mux_3_OUT<4> )
  );
  LUT4 #(
    .INIT ( 16'hA2AA ))
  \coordinator/m_dram/MemWea_rstpot_G  (
    .I0(\coordinator/m_dram/MemWea_326 ),
    .I1(\coordinator/m_dram/I2C_signal/sck_high_357 ),
    .I2(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I3(\coordinator/m_dram/I2C_signal/sda_rise_355 ),
    .O(N81)
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0F0F0F0F080 ))
  \coordinator/m_dram/_n0544_inv4  (
    .I0(\coordinator/m_dram/I2C_signal/sda_fall_356 ),
    .I1(\coordinator/m_dram/I2C_signal/sck_high_357 ),
    .I2(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I3(\coordinator/m_dram/_n0544_inv2_559 ),
    .I4(N90),
    .I5(\coordinator/m_dram/ReadOperation_GND_57_o_AND_89_o ),
    .O(\coordinator/m_dram/_n0544_inv4_560 )
  );
  LUT6 #(
    .INIT ( 64'hEFFFFFFFFFFFFFFF ))
  \coordinator/m_dram/_n0641_inv_SW1  (
    .I0(\coordinator/m_dram/state_FSM_FFd1_329 ),
    .I1(\coordinator/m_dram/cnt [0]),
    .I2(\coordinator/m_dram/state_FSM_FFd3_328 ),
    .I3(\coordinator/m_dram/state_FSM_FFd2_249 ),
    .I4(\coordinator/m_dram/state_FSM_FFd1-In1 ),
    .I5(\coordinator/m_dram/state_FSM_FFd1-In2 ),
    .O(N94)
  );
  LUT6 #(
    .INIT ( 64'h00000000000000C4 ))
  \coordinator/m_dram/_n0641_inv  (
    .I0(\coordinator/m_dram/I2C_signal/sck_rise_358 ),
    .I1(\coordinator/m_dram/WriteOperation_324 ),
    .I2(\coordinator/m_dram/cnt [3]),
    .I3(\coordinator/m_dram/ReadOperation_cnt[3]_AND_79_o ),
    .I4(\coordinator/m_dram/ReadOperation_GND_57_o_AND_89_o ),
    .I5(N94),
    .O(\coordinator/m_dram/_n0641_inv_282 )
  );
  LUT6 #(
    .INIT ( 64'hFFDFFFFFFFFFFFFF ))
  \coordinator/m_iram/state_FSM_FFd3-In4_SW1  (
    .I0(\coordinator/m_iram/I2C_signal/sck_fall_236 ),
    .I1(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I2(\coordinator/m_iram/cnt [0]),
    .I3(\coordinator/m_iram/cnt [4]),
    .I4(\coordinator/m_iram/cnt [3]),
    .I5(\coordinator/m_iram/state_FSM_FFd3-In4_568 ),
    .O(N96)
  );
  LUT6 #(
    .INIT ( 64'h000000C05F5F00C0 ))
  \coordinator/m_iram/state_FSM_FFd3-In4  (
    .I0(\coordinator/m_iram/I2C_signal/sda_rise_232 ),
    .I1(\coordinator/m_iram/I2C_signal/sda_fall_233 ),
    .I2(\coordinator/m_iram/I2C_signal/sck_high_234 ),
    .I3(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I4(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .I5(N96),
    .O(\coordinator/m_iram/state_FSM_FFd3-In5_569 )
  );
  LUT6 #(
    .INIT ( 64'hFFEFFEEE11011000 ))
  \carboncore/alu/Mmux_A11  (
    .I0(\carboncore/decoder/_n0074 ),
    .I1(\carboncore/decoder/_n0082 ),
    .I2(\carboncore/sel_A [0]),
    .I3(\carboncore/acc/reg_acc_0_430 ),
    .I4(DI[0]),
    .I5(\carboncore/pc/reg_pc_0_41 ),
    .O(\carboncore/alu/A [0])
  );
  LUT6 #(
    .INIT ( 64'hFFEFFEEE11011000 ))
  \carboncore/alu/Mmux_A21  (
    .I0(\carboncore/decoder/_n0074 ),
    .I1(\carboncore/decoder/_n0082 ),
    .I2(\carboncore/sel_A [0]),
    .I3(\carboncore/acc/reg_acc_1_431 ),
    .I4(DI[1]),
    .I5(\carboncore/pc/reg_pc_1_40 ),
    .O(\carboncore/alu/A [1])
  );
  LUT6 #(
    .INIT ( 64'hFFEFFEEE11011000 ))
  \carboncore/alu/Mmux_A31  (
    .I0(\carboncore/decoder/_n0074 ),
    .I1(\carboncore/decoder/_n0082 ),
    .I2(\carboncore/sel_A [0]),
    .I3(\carboncore/acc/reg_acc_2_432 ),
    .I4(DI[2]),
    .I5(\carboncore/pc/reg_pc_2_39 ),
    .O(\carboncore/alu/A [2])
  );
  LUT6 #(
    .INIT ( 64'hFFEFFEEE11011000 ))
  \carboncore/alu/Mmux_A41  (
    .I0(\carboncore/decoder/_n0074 ),
    .I1(\carboncore/decoder/_n0082 ),
    .I2(\carboncore/sel_A [0]),
    .I3(\carboncore/acc/reg_acc_3_433 ),
    .I4(DI[3]),
    .I5(\carboncore/pc/reg_pc_3_38 ),
    .O(\carboncore/alu/A [3])
  );
  LUT6 #(
    .INIT ( 64'hFFEFFEEE11011000 ))
  \carboncore/alu/Mmux_A51  (
    .I0(\carboncore/decoder/_n0074 ),
    .I1(\carboncore/decoder/_n0082 ),
    .I2(\carboncore/sel_A [0]),
    .I3(\carboncore/acc/reg_acc_4_434 ),
    .I4(DI[4]),
    .I5(\carboncore/pc/reg_pc_4_37 ),
    .O(\carboncore/alu/A [4])
  );
  LUT6 #(
    .INIT ( 64'hFFEFFEEE11011000 ))
  \carboncore/alu/Mmux_A61  (
    .I0(\carboncore/decoder/_n0074 ),
    .I1(\carboncore/decoder/_n0082 ),
    .I2(\carboncore/sel_A [0]),
    .I3(\carboncore/acc/reg_acc_5_435 ),
    .I4(DI[5]),
    .I5(\carboncore/pc/reg_pc_5_36 ),
    .O(\carboncore/alu/A [5])
  );
  LUT6 #(
    .INIT ( 64'hFFEFFEEE11011000 ))
  \carboncore/alu/Mmux_A71  (
    .I0(\carboncore/decoder/_n0074 ),
    .I1(\carboncore/decoder/_n0082 ),
    .I2(\carboncore/sel_A [0]),
    .I3(\carboncore/acc/reg_acc_6_436 ),
    .I4(DI[6]),
    .I5(\carboncore/pc/reg_pc_6_35 ),
    .O(\carboncore/alu/A [6])
  );
  LUT6 #(
    .INIT ( 64'h0C5DFFFFFFFFFFFF ))
  \coordinator/m_dram/_n0410_inv4_SW0  (
    .I0(\coordinator/m_dram/WROperation_323 ),
    .I1(\coordinator/m_dram/I2C_signal/sck_rise_358 ),
    .I2(\coordinator/m_dram/cnt [3]),
    .I3(\coordinator/m_dram/cnt [0]),
    .I4(\coordinator/m_dram/state_FSM_FFd1-In2 ),
    .I5(\coordinator/m_dram/WriteOperation_PWR_16_o_MUX_142_o<7>1_377 ),
    .O(N84)
  );
  LUT6 #(
    .INIT ( 64'h000C000000080000 ))
  \coordinator/m_dram/_n0544_inv4_SW0  (
    .I0(\coordinator/m_dram/WriteOperation_324 ),
    .I1(\coordinator/m_dram/I2C_signal/sck_fall_359 ),
    .I2(\coordinator/m_dram/cnt [2]),
    .I3(\coordinator/m_dram/cnt [1]),
    .I4(\coordinator/m_dram/cnt [3]),
    .I5(\coordinator/m_dram/cnt [0]),
    .O(N90)
  );
  BUFGP   GCLK_BUFGP (
    .I(GCLK),
    .O(GCLK_BUFGP_0)
  );
  BUFG   \coordinator/m_clk_gen/clkD_BUFG  (
    .O(\coordinator/m_clk_gen/clkD_BUFG_61 ),
    .I(\coordinator/m_clk_gen/clkD_620 )
  );
  INV   \coordinator/m_dram_controller/Mcount_count_xor<0>11_INV_0  (
    .I(\coordinator/m_dram_controller/count [0]),
    .O(Result[0])
  );
  INV   \coordinator/m_iram/Iram_IO_Convert/oe_inv1_INV_0  (
    .I(\coordinator/m_iram/oe_188 ),
    .O(\coordinator/m_iram/Iram_IO_Convert/oe_inv )
  );
  INV   \coordinator/m_dram/Dram_IO_Convert/oe_inv1_INV_0  (
    .I(\coordinator/m_dram/oe_327 ),
    .O(\coordinator/m_dram/Dram_IO_Convert/oe_inv )
  );
  INV   \coordinator/m_dram/iicing_inv1_INV_0  (
    .I(IICING_IBUF_3),
    .O(\coordinator/m_dram/iicing_inv )
  );
  INV   \coordinator/m_decoder/END_inv1_INV_0  (
    .I(EN_IBUF_2),
    .O(\coordinator/m_decoder/END_inv )
  );
  INV   \coordinator/m_clk_gen/Mcount_count_xor<0>11_INV_0  (
    .I(\coordinator/m_clk_gen/count [0]),
    .O(\coordinator/m_clk_gen/Result [0])
  );
  MUXF7   \coordinator/m_iram/_n0678_inv1  (
    .I0(N0),
    .I1(N99),
    .S(\coordinator/m_iram/_n0407_inv1 ),
    .O(\coordinator/m_iram/_n0678_inv )
  );
  LUT6 #(
    .INIT ( 64'h0000080000000000 ))
  \coordinator/m_iram/_n0678_inv1_G  (
    .I0(\coordinator/m_iram/WriteOperation_185 ),
    .I1(\coordinator/m_iram/ReadOperation_GND_62_o_AND_108_o1 ),
    .I2(\coordinator/m_iram/ReadOperation_186 ),
    .I3(\coordinator/m_iram/state_FSM_FFd3_205 ),
    .I4(\coordinator/m_iram/state_FSM_FFd1_206 ),
    .I5(\coordinator/m_iram/state_FSM_FFd2_96 ),
    .O(N99)
  );
  IramRegisterFile   \coordinator/m_iram/IramMap  (
    .clka(GCLK_BUFGP_0),
    .wea({\coordinator/m_iram/WriteEna_207 }),
    .addra({\coordinator/m_iram/RAMAddress [7], \coordinator/m_iram/RAMAddress [6], \coordinator/m_iram/RAMAddress [5], 
\coordinator/m_iram/RAMAddress [4], \coordinator/m_iram/RAMAddress [3], \coordinator/m_iram/RAMAddress [2], \coordinator/m_iram/RAMAddress [1], 
\coordinator/m_iram/RAMAddress [0]}),
    .dina({\coordinator/m_iram/RAMValueIn [15], \coordinator/m_iram/RAMValueIn [14], \coordinator/m_iram/RAMValueIn [13], 
\coordinator/m_iram/RAMValueIn [12], \coordinator/m_iram/RAMValueIn [11], \coordinator/m_iram/RAMValueIn [10], \coordinator/m_iram/RAMValueIn [9], 
\coordinator/m_iram/RAMValueIn [8], \coordinator/m_iram/RAMValueIn [7], \coordinator/m_iram/RAMValueIn [6], \coordinator/m_iram/RAMValueIn [5], 
\coordinator/m_iram/RAMValueIn [4], \coordinator/m_iram/RAMValueIn [3], \coordinator/m_iram/RAMValueIn [2], \coordinator/m_iram/RAMValueIn [1], 
\coordinator/m_iram/RAMValueIn [0]}),
    .douta({\coordinator/m_iram/ReadRegisterValue [15], \coordinator/m_iram/ReadRegisterValue [14], \coordinator/m_iram/ReadRegisterValue [13], 
\coordinator/m_iram/ReadRegisterValue [12], \coordinator/m_iram/ReadRegisterValue [11], \coordinator/m_iram/ReadRegisterValue [10], 
\coordinator/m_iram/ReadRegisterValue [9], \coordinator/m_iram/ReadRegisterValue [8], \coordinator/m_iram/ReadRegisterValue [7], 
\coordinator/m_iram/ReadRegisterValue [6], \coordinator/m_iram/ReadRegisterValue [5], \coordinator/m_iram/ReadRegisterValue [4], 
\coordinator/m_iram/ReadRegisterValue [3], \coordinator/m_iram/ReadRegisterValue [2], \coordinator/m_iram/ReadRegisterValue [1], 
\coordinator/m_iram/ReadRegisterValue [0]})
  );
  DramRegisterFile   \coordinator/m_dram/DramMap  (
    .clka(GCLK_BUFGP_0),
    .wea({\coordinator/m_dram/WriteEna_330 }),
    .addra({\coordinator/m_dram/RAMAddress [7], \coordinator/m_dram/RAMAddress [6], \coordinator/m_dram/RAMAddress [5], 
\coordinator/m_dram/RAMAddress [4], \coordinator/m_dram/RAMAddress [3], \coordinator/m_dram/RAMAddress [2], \coordinator/m_dram/RAMAddress [1], 
\coordinator/m_dram/RAMAddress [0]}),
    .dina({\coordinator/m_dram/RAMValueIn [7], \coordinator/m_dram/RAMValueIn [6], \coordinator/m_dram/RAMValueIn [5], 
\coordinator/m_dram/RAMValueIn [4], \coordinator/m_dram/RAMValueIn [3], \coordinator/m_dram/RAMValueIn [2], \coordinator/m_dram/RAMValueIn [1], 
\coordinator/m_dram/RAMValueIn [0]}),
    .douta({\coordinator/m_dram/ReadRegisterValue [7], \coordinator/m_dram/ReadRegisterValue [6], \coordinator/m_dram/ReadRegisterValue [5], 
\coordinator/m_dram/ReadRegisterValue [4], \coordinator/m_dram/ReadRegisterValue [3], \coordinator/m_dram/ReadRegisterValue [2], 
\coordinator/m_dram/ReadRegisterValue [1], \coordinator/m_dram/ReadRegisterValue [0]})
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
