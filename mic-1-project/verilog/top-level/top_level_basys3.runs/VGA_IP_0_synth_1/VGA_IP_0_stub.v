// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Jan 12 15:57:45 2023
// Host        : DESKTOP-OIDFPBB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {C:/Users/emile/OneDrive/Unief/Erasmus/Courses/ECE
//               Project/files/mic-1-project/verilog/top-level/top_level_basys3.runs/VGA_IP_0_synth_1/VGA_IP_0_stub.v}
// Design      : VGA_IP_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "VGA_IP,Vivado 2022.2" *)
module VGA_IP_0(iCPP, iClk, iData, iH, iLV, iMAR, iMBR, iMDR, iOPC, iPC, 
  iRst, iSP, iSwUpdate, iTOS, iUpdate, oBlue, oClk25, oGreen, oHS, oRed, oVS)
/* synthesis syn_black_box black_box_pad_pin="iCPP[31:0],iClk,iData[31:0],iH[31:0],iLV[31:0],iMAR[31:0],iMBR[7:0],iMDR[31:0],iOPC[31:0],iPC[31:0],iRst,iSP[31:0],iSwUpdate,iTOS[31:0],iUpdate,oBlue[3:0],oClk25,oGreen[3:0],oHS,oRed[3:0],oVS" */;
  input [31:0]iCPP;
  input iClk;
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
  input iUpdate;
  output [3:0]oBlue;
  output oClk25;
  output [3:0]oGreen;
  output oHS;
  output [3:0]oRed;
  output oVS;
endmodule
