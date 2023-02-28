//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Thu Jan 12 20:01:59 2023
//Host        : DESKTOP-OIDFPBB running 64-bit major release  (build 9200)
//Command     : generate_target VGA.bd
//Design      : VGA
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "VGA,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=VGA,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=17,numReposBlks=17,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=16,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "VGA.hwdef" *) 
module VGA
   (iCPP,
    iClk,
    iData,
    iH,
    iLV,
    iMAR,
    iMBR,
    iMDR,
    iOPC,
    iPC,
    iRst,
    iSP,
    iSwUpdate,
    iTOS,
    oBlue,
    oClk25,
    oGreen,
    oHS,
    oRed,
    oVS);
  input [31:0]iCPP;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ICLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ICLK, CLK_DOMAIN VGA_iClk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input iClk;
  input [31:0]iData;
  input [31:0]iH;
  input [31:0]iLV;
  input [31:0]iMAR;
  input [7:0]iMBR;
  input [31:0]iMDR;
  input [31:0]iOPC;
  input [31:0]iPC;
  input iRst;
  input [31:0]iSP;
  input iSwUpdate;
  input [31:0]iTOS;
  output [3:0]oBlue;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.OCLK25 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.OCLK25, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output oClk25;
  output [3:0]oGreen;
  output oHS;
  output [3:0]oRed;
  output oVS;

  wire [15:0]AsciiCharsMem_0_oData;
  wire [11:0]DataToAddress7bit_0_oDataAddress;
  wire [47:0]DataToAddress_0_oDataAddress;
  wire [47:0]DataToAddress_1_oDataAddress;
  wire [47:0]DataToAddress_2_oDataAddress;
  wire [47:0]DataToAddress_3_oDataAddress;
  wire [47:0]DataToAddress_4_oDataAddress;
  wire [47:0]DataToAddress_5_oDataAddress;
  wire [47:0]DataToAddress_6_oDataAddress;
  wire [47:0]DataToAddress_7_oDataAddress;
  wire [47:0]DataToAddress_8_oDataAddress;
  wire [47:0]DataToAddress_9_oDataAddress;
  wire [11:0]ScreenBufferMem_0_oDataA;
  wire [9:0]VGA_Pattern_1_oAddrA;
  wire [11:0]VGA_Pattern_1_oAddrB;
  wire [3:0]VGA_Pattern_1_oBlue;
  wire [3:0]VGA_Pattern_1_oGreen;
  wire VGA_Pattern_1_oHS;
  wire [3:0]VGA_Pattern_1_oRed;
  wire VGA_Pattern_1_oVS;
  wire [9:0]VGA_Timings_1_oCountH;
  wire [9:0]VGA_Timings_1_oCountV;
  wire VGA_Timings_1_oHS;
  wire VGA_Timings_1_oVS;
  wire clk_wiz_0_clk_out1;
  wire iClk;
  wire [31:0]iData_0_1;
  wire [31:0]iData_0_10;
  wire [31:0]iData_0_2;
  wire [31:0]iData_0_3;
  wire [31:0]iData_0_4;
  wire [31:0]iData_0_5;
  wire [31:0]iData_0_6;
  wire [31:0]iData_0_7;
  wire [31:0]iData_0_8;
  wire [31:0]iData_0_9;
  wire [7:0]iMBR_0_1;
  wire iRst_0_1;
  wire iSwUpdate_0_1;
  wire [9:0]num_capture_4bit_0_oAddr;
  wire [11:0]num_capture_4bit_0_oData;
  wire num_capture_4bit_0_oWe;

  assign iData_0_1 = iCPP[31:0];
  assign iData_0_10 = iData[31:0];
  assign iData_0_2 = iH[31:0];
  assign iData_0_3 = iLV[31:0];
  assign iData_0_4 = iMAR[31:0];
  assign iData_0_5 = iMDR[31:0];
  assign iData_0_6 = iOPC[31:0];
  assign iData_0_7 = iPC[31:0];
  assign iData_0_8 = iSP[31:0];
  assign iData_0_9 = iTOS[31:0];
  assign iMBR_0_1 = iMBR[7:0];
  assign iRst_0_1 = iRst;
  assign iSwUpdate_0_1 = iSwUpdate;
  assign oBlue[3:0] = VGA_Pattern_1_oBlue;
  assign oClk25 = clk_wiz_0_clk_out1;
  assign oGreen[3:0] = VGA_Pattern_1_oGreen;
  assign oHS = VGA_Pattern_1_oHS;
  assign oRed[3:0] = VGA_Pattern_1_oRed;
  assign oVS = VGA_Pattern_1_oVS;
  VGA_AsciiCharsMem_0_0 AsciiCharsMem_0
       (.iAddr(VGA_Pattern_1_oAddrB),
        .iClk(clk_wiz_0_clk_out1),
        .oData(AsciiCharsMem_0_oData));
  VGA_DataToAddress7bit_0_0 DataToAddress7bit_0
       (.iClk(clk_wiz_0_clk_out1),
        .iMBR(iMBR_0_1),
        .oDataAddress(DataToAddress7bit_0_oDataAddress));
  VGA_DataToAddress_0_0 DataToAddress_0
       (.iClk(clk_wiz_0_clk_out1),
        .iData(iData_0_1),
        .oDataAddress(DataToAddress_0_oDataAddress));
  VGA_DataToAddress_1_0 DataToAddress_1
       (.iClk(clk_wiz_0_clk_out1),
        .iData(iData_0_2),
        .oDataAddress(DataToAddress_1_oDataAddress));
  VGA_DataToAddress_2_0 DataToAddress_2
       (.iClk(clk_wiz_0_clk_out1),
        .iData(iData_0_3),
        .oDataAddress(DataToAddress_2_oDataAddress));
  VGA_DataToAddress_3_0 DataToAddress_3
       (.iClk(clk_wiz_0_clk_out1),
        .iData(iData_0_4),
        .oDataAddress(DataToAddress_3_oDataAddress));
  VGA_DataToAddress_4_0 DataToAddress_4
       (.iClk(clk_wiz_0_clk_out1),
        .iData(iData_0_5),
        .oDataAddress(DataToAddress_4_oDataAddress));
  VGA_DataToAddress_5_0 DataToAddress_5
       (.iClk(clk_wiz_0_clk_out1),
        .iData(iData_0_6),
        .oDataAddress(DataToAddress_5_oDataAddress));
  VGA_DataToAddress_6_0 DataToAddress_6
       (.iClk(clk_wiz_0_clk_out1),
        .iData(iData_0_7),
        .oDataAddress(DataToAddress_6_oDataAddress));
  VGA_DataToAddress_7_0 DataToAddress_7
       (.iClk(clk_wiz_0_clk_out1),
        .iData(iData_0_8),
        .oDataAddress(DataToAddress_7_oDataAddress));
  VGA_DataToAddress_8_0 DataToAddress_8
       (.iClk(clk_wiz_0_clk_out1),
        .iData(iData_0_9),
        .oDataAddress(DataToAddress_8_oDataAddress));
  VGA_DataToAddress_9_0 DataToAddress_9
       (.iClk(clk_wiz_0_clk_out1),
        .iData(iData_0_10),
        .oDataAddress(DataToAddress_9_oDataAddress));
  VGA_ScreenBufferMem_0_0 ScreenBufferMem_0
       (.iAddrA(VGA_Pattern_1_oAddrA),
        .iAddrB(num_capture_4bit_0_oAddr),
        .iClk(clk_wiz_0_clk_out1),
        .iDataB(num_capture_4bit_0_oData),
        .iWeB(num_capture_4bit_0_oWe),
        .oDataA(ScreenBufferMem_0_oDataA));
  VGA_VGA_Pattern_1_0 VGA_Pattern_1
       (.iClk(clk_wiz_0_clk_out1),
        .iCountH(VGA_Timings_1_oCountH),
        .iCountV(VGA_Timings_1_oCountV),
        .iDataA(ScreenBufferMem_0_oDataA),
        .iDataB(AsciiCharsMem_0_oData),
        .iHS(VGA_Timings_1_oHS),
        .iRst(iRst_0_1),
        .iVS(VGA_Timings_1_oVS),
        .oAddrA(VGA_Pattern_1_oAddrA),
        .oAddrB(VGA_Pattern_1_oAddrB),
        .oBlue(VGA_Pattern_1_oBlue),
        .oGreen(VGA_Pattern_1_oGreen),
        .oHS(VGA_Pattern_1_oHS),
        .oRed(VGA_Pattern_1_oRed),
        .oVS(VGA_Pattern_1_oVS));
  VGA_VGA_Timings_1_0 VGA_Timings_1
       (.iClk(clk_wiz_0_clk_out1),
        .iRst(iRst_0_1),
        .oCountH(VGA_Timings_1_oCountH),
        .oCountV(VGA_Timings_1_oCountV),
        .oHS(VGA_Timings_1_oHS),
        .oVS(VGA_Timings_1_oVS));
  VGA_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(iClk),
        .clk_out1(clk_wiz_0_clk_out1));
  VGA_num_capture_4bit_0_1 num_capture_4bit_0
       (.iCPP(DataToAddress_0_oDataAddress),
        .iClk(clk_wiz_0_clk_out1),
        .iData(DataToAddress_9_oDataAddress),
        .iH(DataToAddress_1_oDataAddress),
        .iLV(DataToAddress_2_oDataAddress),
        .iMAR(DataToAddress_3_oDataAddress),
        .iMBR(DataToAddress7bit_0_oDataAddress),
        .iMDR(DataToAddress_4_oDataAddress),
        .iOPC(DataToAddress_5_oDataAddress),
        .iPC(DataToAddress_6_oDataAddress),
        .iRst(iRst_0_1),
        .iSP(DataToAddress_7_oDataAddress),
        .iSwUpdate(iSwUpdate_0_1),
        .iTOS(DataToAddress_8_oDataAddress),
        .oAddr(num_capture_4bit_0_oAddr),
        .oData(num_capture_4bit_0_oData),
        .oWe(num_capture_4bit_0_oWe));
endmodule
