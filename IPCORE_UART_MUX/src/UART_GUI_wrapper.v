//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Tue Nov 22 12:45:09 2022
//Host        : DESKTOP-DEBHL7D running 64-bit major release  (build 9200)
//Command     : generate_target UART_GUI_wrapper.bd
//Design      : UART_GUI_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module UART_GUI_wrapper
   (GUI_UART_rxd,
    GUI_UART_txd,
    MIC_UART_rxd,
    MIC_UART_txd,
    SEL,
    clk,
    output_written,
    reg000_addr_reg,
    reg001_dada_in,
    reg002_global_en,
    reg003_write_en,
    reg004_gen_purp_reg1,
    reg005_gen_purp_reg2,
    reg006_gen_purp_reg3,
    reg007_gen_purp_reg4,
    reset);
  output GUI_UART_rxd;
  input GUI_UART_txd;
  input MIC_UART_rxd;
  output MIC_UART_txd;
  input [0:0]SEL;
  input clk;
  output [255:0]output_written;
  output [31:0]reg000_addr_reg;
  output [31:0]reg001_dada_in;
  output [31:0]reg002_global_en;
  output [31:0]reg003_write_en;
  output [31:0]reg004_gen_purp_reg1;
  output [31:0]reg005_gen_purp_reg2;
  output [31:0]reg006_gen_purp_reg3;
  output [31:0]reg007_gen_purp_reg4;
  input reset;

  wire GUI_UART_rxd;
  wire GUI_UART_txd;
  wire MIC_UART_rxd;
  wire MIC_UART_txd;
  wire [0:0]SEL;
  wire clk;
  wire [255:0]output_written;
  wire [31:0]reg000_addr_reg;
  wire [31:0]reg001_dada_in;
  wire [31:0]reg002_global_en;
  wire [31:0]reg003_write_en;
  wire [31:0]reg004_gen_purp_reg1;
  wire [31:0]reg005_gen_purp_reg2;
  wire [31:0]reg006_gen_purp_reg3;
  wire [31:0]reg007_gen_purp_reg4;
  wire reset;

  UART_GUI UART_GUI_i
       (.GUI_UART_rxd(GUI_UART_rxd),
        .GUI_UART_txd(GUI_UART_txd),
        .MIC_UART_rxd(MIC_UART_rxd),
        .MIC_UART_txd(MIC_UART_txd),
        .SEL(SEL),
        .clk(clk),
        .output_written(output_written),
        .reg000_addr_reg(reg000_addr_reg),
        .reg001_dada_in(reg001_dada_in),
        .reg002_global_en(reg002_global_en),
        .reg003_write_en(reg003_write_en),
        .reg004_gen_purp_reg1(reg004_gen_purp_reg1),
        .reg005_gen_purp_reg2(reg005_gen_purp_reg2),
        .reg006_gen_purp_reg3(reg006_gen_purp_reg3),
        .reg007_gen_purp_reg4(reg007_gen_purp_reg4),
        .reset(reset));
endmodule
