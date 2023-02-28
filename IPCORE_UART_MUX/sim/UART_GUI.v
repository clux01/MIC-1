//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Tue Nov 22 12:45:09 2022
//Host        : DESKTOP-DEBHL7D running 64-bit major release  (build 9200)
//Command     : generate_target UART_GUI.bd
//Design      : UART_GUI
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "UART_GUI,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=UART_GUI,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "UART_GUI.hwdef" *) 
module UART_GUI
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 GUI_UART " *) output GUI_UART_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 GUI_UART " *) input GUI_UART_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 MIC_UART " *) input MIC_UART_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 MIC_UART " *) output MIC_UART_txd;
  input [0:0]SEL;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET reset, CLK_DOMAIN UART_GUI_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  output [255:0]output_written;
  output [31:0]reg000_addr_reg;
  output [31:0]reg001_dada_in;
  output [31:0]reg002_global_en;
  output [31:0]reg003_write_en;
  output [31:0]reg004_gen_purp_reg1;
  output [31:0]reg005_gen_purp_reg2;
  output [31:0]reg006_gen_purp_reg3;
  output [31:0]reg007_gen_purp_reg4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;

  wire Conn_RxD;
  wire Conn_TxD;
  wire [255:0]IP006_uart_reg32_0_output_written;
  wire [31:0]IP006_uart_reg32_0_reg000;
  wire [31:0]IP006_uart_reg32_0_reg001;
  wire [31:0]IP006_uart_reg32_0_reg002;
  wire [31:0]IP006_uart_reg32_0_reg003;
  wire [31:0]IP006_uart_reg32_0_reg004;
  wire [31:0]IP006_uart_reg32_0_reg005;
  wire [31:0]IP006_uart_reg32_0_reg006;
  wire [31:0]IP006_uart_reg32_0_reg007;
  wire MUX_DEMUX_0_MIC_UART_RxD;
  wire MUX_DEMUX_0_MIC_UART_TxD;
  wire MUX_DEMUX_0_UART_IP_RxD;
  wire MUX_DEMUX_0_UART_IP_TxD;
  wire [0:0]SEL_0_1;
  wire clk_0_1;
  wire reset_s_0_1;

  assign Conn_TxD = GUI_UART_txd;
  assign GUI_UART_rxd = Conn_RxD;
  assign MIC_UART_txd = MUX_DEMUX_0_MIC_UART_TxD;
  assign MUX_DEMUX_0_MIC_UART_RxD = MIC_UART_rxd;
  assign SEL_0_1 = SEL[0];
  assign clk_0_1 = clk;
  assign output_written[255:0] = IP006_uart_reg32_0_output_written;
  assign reg000_addr_reg[31:0] = IP006_uart_reg32_0_reg000;
  assign reg001_dada_in[31:0] = IP006_uart_reg32_0_reg001;
  assign reg002_global_en[31:0] = IP006_uart_reg32_0_reg002;
  assign reg003_write_en[31:0] = IP006_uart_reg32_0_reg003;
  assign reg004_gen_purp_reg1[31:0] = IP006_uart_reg32_0_reg004;
  assign reg005_gen_purp_reg2[31:0] = IP006_uart_reg32_0_reg005;
  assign reg006_gen_purp_reg3[31:0] = IP006_uart_reg32_0_reg006;
  assign reg007_gen_purp_reg4[31:0] = IP006_uart_reg32_0_reg007;
  assign reset_s_0_1 = reset;
  UART_GUI_IP006_uart_reg32_0_0 IP006_uart_reg32_0
       (.clk(clk_0_1),
        .output_written(IP006_uart_reg32_0_output_written),
        .reg000(IP006_uart_reg32_0_reg000),
        .reg001(IP006_uart_reg32_0_reg001),
        .reg002(IP006_uart_reg32_0_reg002),
        .reg003(IP006_uart_reg32_0_reg003),
        .reg004(IP006_uart_reg32_0_reg004),
        .reg005(IP006_uart_reg32_0_reg005),
        .reg006(IP006_uart_reg32_0_reg006),
        .reg007(IP006_uart_reg32_0_reg007),
        .reg100(IP006_uart_reg32_0_reg000),
        .reg101(IP006_uart_reg32_0_reg001),
        .reg102(IP006_uart_reg32_0_reg002),
        .reg103(IP006_uart_reg32_0_reg003),
        .reg104(IP006_uart_reg32_0_reg004),
        .reg105(IP006_uart_reg32_0_reg005),
        .reg106(IP006_uart_reg32_0_reg006),
        .reg107(IP006_uart_reg32_0_reg007),
        .reg108({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .reg109({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .reg10A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .reg10B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .reg10C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .reg10D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .reg10E({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .reg10F({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .reset_s(reset_s_0_1),
        .uartA_rxd(MUX_DEMUX_0_UART_IP_TxD),
        .uartA_txd(MUX_DEMUX_0_UART_IP_RxD),
        .uartB_rxd(1'b0));
  UART_GUI_MUX_DEMUX_0_1 MUX_DEMUX_0
       (.RX_GUI(Conn_RxD),
        .RX_MIC(MUX_DEMUX_0_MIC_UART_TxD),
        .RX_UART(MUX_DEMUX_0_UART_IP_TxD),
        .SEL(SEL_0_1),
        .TX_GUI(Conn_TxD),
        .TX_MIC(MUX_DEMUX_0_MIC_UART_RxD),
        .TX_UART(MUX_DEMUX_0_UART_IP_RxD));
endmodule
