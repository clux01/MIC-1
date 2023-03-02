// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Dec  2 13:31:08 2022
// Host        : DESKTOP-SNAS2Q5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ IP006_uart_reg32_0_stub.v
// Design      : IP006_uart_reg32_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "IP006_uart_reg32,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reg100, reg101, reg102, reg103, reg104, reg105, 
  reg106, reg107, reg108, reg109, reg10A, reg10B, reg10C, reg10D, reg10E, reg10F, reset_s, uartA_rxd, 
  uartB_rxd, input_read, output_read, output_written, reg000, reg001, reg002, reg003, reg004, reg005, 
  reg006, reg007, reg008, reg009, reg00A, reg00B, reg00C, reg00D, reg00E, reg00F, uartA_txd, uartB_txd)
/* synthesis syn_black_box black_box_pad_pin="clk,reg100[31:0],reg101[31:0],reg102[31:0],reg103[31:0],reg104[31:0],reg105[31:0],reg106[31:0],reg107[31:0],reg108[31:0],reg109[31:0],reg10A[31:0],reg10B[31:0],reg10C[31:0],reg10D[31:0],reg10E[31:0],reg10F[31:0],reset_s,uartA_rxd,uartB_rxd,input_read[255:0],output_read[255:0],output_written[255:0],reg000[31:0],reg001[31:0],reg002[31:0],reg003[31:0],reg004[31:0],reg005[31:0],reg006[31:0],reg007[31:0],reg008[31:0],reg009[31:0],reg00A[31:0],reg00B[31:0],reg00C[31:0],reg00D[31:0],reg00E[31:0],reg00F[31:0],uartA_txd,uartB_txd" */;
  input clk;
  input [31:0]reg100;
  input [31:0]reg101;
  input [31:0]reg102;
  input [31:0]reg103;
  input [31:0]reg104;
  input [31:0]reg105;
  input [31:0]reg106;
  input [31:0]reg107;
  input [31:0]reg108;
  input [31:0]reg109;
  input [31:0]reg10A;
  input [31:0]reg10B;
  input [31:0]reg10C;
  input [31:0]reg10D;
  input [31:0]reg10E;
  input [31:0]reg10F;
  input reset_s;
  input uartA_rxd;
  input uartB_rxd;
  output [255:0]input_read;
  output [255:0]output_read;
  output [255:0]output_written;
  output [31:0]reg000;
  output [31:0]reg001;
  output [31:0]reg002;
  output [31:0]reg003;
  output [31:0]reg004;
  output [31:0]reg005;
  output [31:0]reg006;
  output [31:0]reg007;
  output [31:0]reg008;
  output [31:0]reg009;
  output [31:0]reg00A;
  output [31:0]reg00B;
  output [31:0]reg00C;
  output [31:0]reg00D;
  output [31:0]reg00E;
  output [31:0]reg00F;
  output uartA_txd;
  output uartB_txd;
endmodule
