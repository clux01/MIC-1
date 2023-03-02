// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Jan 12 15:57:45 2023
// Host        : DESKTOP-OIDFPBB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {C:/Users/emile/OneDrive/Unief/Erasmus/Courses/ECE
//               Project/files/mic-1-project/verilog/top-level/top_level_basys3.runs/VGA_IP_0_synth_1/VGA_IP_0_sim_netlist.v}
// Design      : VGA_IP_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "VGA_IP_0,VGA_IP,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "IPI" *) 
(* X_CORE_INFO = "VGA_IP,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module VGA_IP_0
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
    iUpdate,
    oBlue,
    oClk25,
    oGreen,
    oHS,
    oRed,
    oVS);
  input [31:0]iCPP;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ICLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ICLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input iClk;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.OCLK25 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.OCLK25, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) output oClk25;
  output [3:0]oGreen;
  output oHS;
  output [3:0]oRed;
  output oVS;

  wire \<const0> ;
  (* IBUF_LOW_PWR *) wire iClk;
  wire iRst;
  wire [3:0]oBlue;
  wire oClk25;
  wire [3:0]oGreen;
  wire oHS;
  wire oVS;
  wire [3:0]NLW_inst_oRed_UNCONNECTED;

  assign oRed[3] = \<const0> ;
  assign oRed[2] = \<const0> ;
  assign oRed[1] = \<const0> ;
  assign oRed[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* HW_HANDOFF = "VGA_IP.hwdef" *) 
  VGA_IP_0_VGA_IP inst
       (.iCPP({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .iClk(iClk),
        .iData({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .iH({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .iLV({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .iMAR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .iMBR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .iMDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .iOPC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .iPC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .iRst(iRst),
        .iSP({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .iSwUpdate(1'b0),
        .iTOS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .iUpdate(1'b0),
        .oBlue(oBlue),
        .oClk25(oClk25),
        .oGreen(oGreen),
        .oHS(oHS),
        .oRed(NLW_inst_oRed_UNCONNECTED[3:0]),
        .oVS(oVS));
endmodule

(* ORIG_REF_NAME = "H_Counter" *) 
module VGA_IP_0_H_Counter
   (w_enable_V_Counter,
    \r_HCntCrr_reg[8]_0 ,
    Q,
    oHS,
    oClk25,
    iRst);
  output w_enable_V_Counter;
  output \r_HCntCrr_reg[8]_0 ;
  output [0:0]Q;
  output oHS;
  input oClk25;
  input iRst;

  wire [0:0]Q;
  wire [8:0]VGA_Timings_1_oCountH;
  wire iRst;
  wire oClk25;
  wire \oGreen[0]_INST_0_i_4_n_0 ;
  wire oHS;
  wire \r_HCntCrr[9]_i_2_n_0 ;
  wire \r_HCntCrr[9]_i_4_n_0 ;
  wire \r_HCntCrr[9]_i_5_n_0 ;
  wire \r_HCntCrr_reg[8]_0 ;
  wire r_enable_V_Counter_i_1_n_0;
  wire [9:0]w_HCntNxt;
  wire w_Rst;
  wire w_enable_V_Counter;

  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    \oGreen[0]_INST_0_i_1 
       (.I0(VGA_Timings_1_oCountH[8]),
        .I1(VGA_Timings_1_oCountH[2]),
        .I2(VGA_Timings_1_oCountH[3]),
        .I3(VGA_Timings_1_oCountH[1]),
        .I4(\oGreen[0]_INST_0_i_4_n_0 ),
        .I5(VGA_Timings_1_oCountH[7]),
        .O(\r_HCntCrr_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \oGreen[0]_INST_0_i_4 
       (.I0(VGA_Timings_1_oCountH[5]),
        .I1(VGA_Timings_1_oCountH[4]),
        .I2(VGA_Timings_1_oCountH[0]),
        .I3(VGA_Timings_1_oCountH[6]),
        .O(\oGreen[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBBBBBBFFFFFFFFF)) 
    oHS_INST_0
       (.I0(VGA_Timings_1_oCountH[8]),
        .I1(Q),
        .I2(VGA_Timings_1_oCountH[4]),
        .I3(VGA_Timings_1_oCountH[5]),
        .I4(VGA_Timings_1_oCountH[6]),
        .I5(VGA_Timings_1_oCountH[7]),
        .O(oHS));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_HCntCrr[0]_i_1 
       (.I0(VGA_Timings_1_oCountH[0]),
        .O(w_HCntNxt[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_HCntCrr[1]_i_1 
       (.I0(VGA_Timings_1_oCountH[0]),
        .I1(VGA_Timings_1_oCountH[1]),
        .O(w_HCntNxt[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_HCntCrr[2]_i_1 
       (.I0(VGA_Timings_1_oCountH[1]),
        .I1(VGA_Timings_1_oCountH[0]),
        .I2(VGA_Timings_1_oCountH[2]),
        .O(w_HCntNxt[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_HCntCrr[3]_i_1 
       (.I0(VGA_Timings_1_oCountH[2]),
        .I1(VGA_Timings_1_oCountH[0]),
        .I2(VGA_Timings_1_oCountH[1]),
        .I3(VGA_Timings_1_oCountH[3]),
        .O(w_HCntNxt[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_HCntCrr[4]_i_1 
       (.I0(VGA_Timings_1_oCountH[3]),
        .I1(VGA_Timings_1_oCountH[1]),
        .I2(VGA_Timings_1_oCountH[0]),
        .I3(VGA_Timings_1_oCountH[2]),
        .I4(VGA_Timings_1_oCountH[4]),
        .O(w_HCntNxt[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_HCntCrr[5]_i_1 
       (.I0(VGA_Timings_1_oCountH[4]),
        .I1(VGA_Timings_1_oCountH[2]),
        .I2(VGA_Timings_1_oCountH[0]),
        .I3(VGA_Timings_1_oCountH[1]),
        .I4(VGA_Timings_1_oCountH[3]),
        .I5(VGA_Timings_1_oCountH[5]),
        .O(w_HCntNxt[5]));
  LUT3 #(
    .INIT(8'hD2)) 
    \r_HCntCrr[6]_i_1 
       (.I0(VGA_Timings_1_oCountH[5]),
        .I1(\r_HCntCrr[9]_i_4_n_0 ),
        .I2(VGA_Timings_1_oCountH[6]),
        .O(w_HCntNxt[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \r_HCntCrr[7]_i_1 
       (.I0(VGA_Timings_1_oCountH[6]),
        .I1(\r_HCntCrr[9]_i_4_n_0 ),
        .I2(VGA_Timings_1_oCountH[5]),
        .I3(VGA_Timings_1_oCountH[7]),
        .O(w_HCntNxt[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \r_HCntCrr[8]_i_1 
       (.I0(VGA_Timings_1_oCountH[7]),
        .I1(VGA_Timings_1_oCountH[5]),
        .I2(\r_HCntCrr[9]_i_4_n_0 ),
        .I3(VGA_Timings_1_oCountH[6]),
        .I4(VGA_Timings_1_oCountH[8]),
        .O(w_HCntNxt[8]));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    \r_HCntCrr[9]_i_1 
       (.I0(\r_HCntCrr[9]_i_4_n_0 ),
        .I1(\r_HCntCrr[9]_i_5_n_0 ),
        .I2(Q),
        .I3(VGA_Timings_1_oCountH[8]),
        .I4(iRst),
        .O(w_Rst));
  LUT5 #(
    .INIT(32'h7777777F)) 
    \r_HCntCrr[9]_i_2 
       (.I0(Q),
        .I1(VGA_Timings_1_oCountH[8]),
        .I2(VGA_Timings_1_oCountH[7]),
        .I3(VGA_Timings_1_oCountH[5]),
        .I4(VGA_Timings_1_oCountH[6]),
        .O(\r_HCntCrr[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \r_HCntCrr[9]_i_3 
       (.I0(VGA_Timings_1_oCountH[8]),
        .I1(VGA_Timings_1_oCountH[6]),
        .I2(\r_HCntCrr[9]_i_4_n_0 ),
        .I3(VGA_Timings_1_oCountH[5]),
        .I4(VGA_Timings_1_oCountH[7]),
        .I5(Q),
        .O(w_HCntNxt[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \r_HCntCrr[9]_i_4 
       (.I0(VGA_Timings_1_oCountH[3]),
        .I1(VGA_Timings_1_oCountH[1]),
        .I2(VGA_Timings_1_oCountH[0]),
        .I3(VGA_Timings_1_oCountH[2]),
        .I4(VGA_Timings_1_oCountH[4]),
        .O(\r_HCntCrr[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r_HCntCrr[9]_i_5 
       (.I0(VGA_Timings_1_oCountH[6]),
        .I1(VGA_Timings_1_oCountH[5]),
        .I2(VGA_Timings_1_oCountH[7]),
        .O(\r_HCntCrr[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_HCntCrr_reg[0] 
       (.C(oClk25),
        .CE(\r_HCntCrr[9]_i_2_n_0 ),
        .D(w_HCntNxt[0]),
        .Q(VGA_Timings_1_oCountH[0]),
        .R(w_Rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_HCntCrr_reg[1] 
       (.C(oClk25),
        .CE(\r_HCntCrr[9]_i_2_n_0 ),
        .D(w_HCntNxt[1]),
        .Q(VGA_Timings_1_oCountH[1]),
        .R(w_Rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_HCntCrr_reg[2] 
       (.C(oClk25),
        .CE(\r_HCntCrr[9]_i_2_n_0 ),
        .D(w_HCntNxt[2]),
        .Q(VGA_Timings_1_oCountH[2]),
        .R(w_Rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_HCntCrr_reg[3] 
       (.C(oClk25),
        .CE(\r_HCntCrr[9]_i_2_n_0 ),
        .D(w_HCntNxt[3]),
        .Q(VGA_Timings_1_oCountH[3]),
        .R(w_Rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_HCntCrr_reg[4] 
       (.C(oClk25),
        .CE(\r_HCntCrr[9]_i_2_n_0 ),
        .D(w_HCntNxt[4]),
        .Q(VGA_Timings_1_oCountH[4]),
        .R(w_Rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_HCntCrr_reg[5] 
       (.C(oClk25),
        .CE(\r_HCntCrr[9]_i_2_n_0 ),
        .D(w_HCntNxt[5]),
        .Q(VGA_Timings_1_oCountH[5]),
        .R(w_Rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_HCntCrr_reg[6] 
       (.C(oClk25),
        .CE(\r_HCntCrr[9]_i_2_n_0 ),
        .D(w_HCntNxt[6]),
        .Q(VGA_Timings_1_oCountH[6]),
        .R(w_Rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_HCntCrr_reg[7] 
       (.C(oClk25),
        .CE(\r_HCntCrr[9]_i_2_n_0 ),
        .D(w_HCntNxt[7]),
        .Q(VGA_Timings_1_oCountH[7]),
        .R(w_Rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_HCntCrr_reg[8] 
       (.C(oClk25),
        .CE(\r_HCntCrr[9]_i_2_n_0 ),
        .D(w_HCntNxt[8]),
        .Q(VGA_Timings_1_oCountH[8]),
        .R(w_Rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_HCntCrr_reg[9] 
       (.C(oClk25),
        .CE(\r_HCntCrr[9]_i_2_n_0 ),
        .D(w_HCntNxt[9]),
        .Q(Q),
        .R(w_Rst));
  LUT6 #(
    .INIT(64'h5300000003000000)) 
    r_enable_V_Counter_i_1
       (.I0(iRst),
        .I1(\r_HCntCrr[9]_i_4_n_0 ),
        .I2(\r_HCntCrr[9]_i_5_n_0 ),
        .I3(Q),
        .I4(VGA_Timings_1_oCountH[8]),
        .I5(w_enable_V_Counter),
        .O(r_enable_V_Counter_i_1_n_0));
  FDRE r_enable_V_Counter_reg
       (.C(oClk25),
        .CE(1'b1),
        .D(r_enable_V_Counter_i_1_n_0),
        .Q(w_enable_V_Counter),
        .R(1'b0));
endmodule

(* HW_HANDOFF = "VGA_IP.hwdef" *) (* ORIG_REF_NAME = "VGA_IP" *) 
module VGA_IP_0_VGA_IP
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
    iUpdate,
    oBlue,
    oClk25,
    oGreen,
    oHS,
    oRed,
    oVS);
  input [31:0]iCPP;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ICLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ICLK, CLK_DOMAIN VGA_IP_iClk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input iClk;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.OCLK25 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.OCLK25, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output oClk25;
  output [3:0]oGreen;
  output oHS;
  output [3:0]oRed;
  output oVS;

  wire \<const0> ;
  wire iClk;
  wire iRst;
  wire oClk25;
  wire [0:0]\^oGreen ;
  wire oHS;
  wire oVS;

  assign oBlue[3] = \^oGreen [0];
  assign oBlue[2] = \^oGreen [0];
  assign oBlue[1] = \^oGreen [0];
  assign oBlue[0] = \^oGreen [0];
  assign oGreen[3] = \^oGreen [0];
  assign oGreen[2] = \^oGreen [0];
  assign oGreen[1] = \^oGreen [0];
  assign oGreen[0] = \^oGreen [0];
  assign oRed[3] = \<const0> ;
  assign oRed[2] = \<const0> ;
  assign oRed[1] = \<const0> ;
  assign oRed[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* X_CORE_INFO = "VGA_Timings,Vivado 2022.2" *) 
  VGA_IP_0_VGA_IP_VGA_Timings_1_0 VGA_Timings_1
       (.iRst(iRst),
        .oClk25(oClk25),
        .oGreen(\^oGreen ),
        .oHS(oHS),
        .oVS(oVS));
  VGA_IP_0_VGA_IP_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(iClk),
        .clk_out1(oClk25));
endmodule

(* ORIG_REF_NAME = "VGA_IP_VGA_Timings_1_0" *) 
module VGA_IP_0_VGA_IP_VGA_Timings_1_0
   (oGreen,
    oHS,
    oVS,
    oClk25,
    iRst);
  output [0:0]oGreen;
  output oHS;
  output oVS;
  input oClk25;
  input iRst;

  wire iRst;
  wire oClk25;
  wire [0:0]oGreen;
  wire oHS;
  wire oVS;

  VGA_IP_0_VGA_Timings inst
       (.iRst(iRst),
        .oClk25(oClk25),
        .oGreen(oGreen),
        .oHS(oHS),
        .oVS(oVS));
endmodule

(* ORIG_REF_NAME = "VGA_IP_clk_wiz_0_0" *) 
module VGA_IP_0_VGA_IP_clk_wiz_0_0
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;

  VGA_IP_0_VGA_IP_clk_wiz_0_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1));
endmodule

(* ORIG_REF_NAME = "VGA_IP_clk_wiz_0_0_clk_wiz" *) 
module VGA_IP_0_VGA_IP_clk_wiz_0_0_clk_wiz
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_VGA_IP_clk_wiz_0_0;
  wire clk_out1;
  wire clk_out1_VGA_IP_clk_wiz_0_0;
  wire clkfbout_VGA_IP_clk_wiz_0_0;
  wire clkfbout_buf_VGA_IP_clk_wiz_0_0;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_VGA_IP_clk_wiz_0_0),
        .O(clkfbout_buf_VGA_IP_clk_wiz_0_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .CCIO_EN("TRUE"),
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_VGA_IP_clk_wiz_0_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_VGA_IP_clk_wiz_0_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(9.125000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(36.500000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_VGA_IP_clk_wiz_0_0),
        .CLKFBOUT(clkfbout_VGA_IP_clk_wiz_0_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_VGA_IP_clk_wiz_0_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_VGA_IP_clk_wiz_0_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

(* ORIG_REF_NAME = "VGA_Timings" *) 
module VGA_IP_0_VGA_Timings
   (oGreen,
    oHS,
    oVS,
    oClk25,
    iRst);
  output [0:0]oGreen;
  output oHS;
  output oVS;
  input oClk25;
  input iRst;

  wire H_Counter_inst_n_1;
  wire [9:9]VGA_Timings_1_oCountH;
  wire iRst;
  wire oClk25;
  wire [0:0]oGreen;
  wire oHS;
  wire oVS;
  wire w_enable_V_Counter;

  VGA_IP_0_H_Counter H_Counter_inst
       (.Q(VGA_Timings_1_oCountH),
        .iRst(iRst),
        .oClk25(oClk25),
        .oHS(oHS),
        .\r_HCntCrr_reg[8]_0 (H_Counter_inst_n_1),
        .w_enable_V_Counter(w_enable_V_Counter));
  VGA_IP_0_V_Counter V_Counter_inst
       (.E(w_enable_V_Counter),
        .Q(VGA_Timings_1_oCountH),
        .iRst(iRst),
        .oClk25(oClk25),
        .oGreen(oGreen),
        .oGreen_0_sp_1(H_Counter_inst_n_1),
        .oVS(oVS));
endmodule

(* ORIG_REF_NAME = "V_Counter" *) 
module VGA_IP_0_V_Counter
   (oGreen,
    oVS,
    oGreen_0_sp_1,
    Q,
    E,
    iRst,
    oClk25);
  output [0:0]oGreen;
  output oVS;
  input oGreen_0_sp_1;
  input [0:0]Q;
  input [0:0]E;
  input iRst;
  input oClk25;

  wire [0:0]E;
  wire [0:0]Q;
  wire [9:0]VGA_Timings_1_oCountV;
  wire iRst;
  wire oClk25;
  wire [0:0]oGreen;
  wire \oGreen[0]_INST_0_i_2_n_0 ;
  wire \oGreen[0]_INST_0_i_3_n_0 ;
  wire oGreen_0_sn_1;
  wire oVS;
  wire oVS_INST_0_i_1_n_0;
  wire \r_VCntCrr[9]_i_1_n_0 ;
  wire \r_VCntCrr[9]_i_3_n_0 ;
  wire \r_VCntCrr[9]_i_4_n_0 ;
  wire \r_VCntCrr[9]_i_5_n_0 ;
  wire \r_VCntCrr[9]_i_6_n_0 ;
  wire [9:0]w_VCntNxt;

  assign oGreen_0_sn_1 = oGreen_0_sp_1;
  LUT6 #(
    .INIT(64'h0000000077777707)) 
    \oGreen[0]_INST_0 
       (.I0(oGreen_0_sn_1),
        .I1(Q),
        .I2(VGA_Timings_1_oCountV[5]),
        .I3(\oGreen[0]_INST_0_i_2_n_0 ),
        .I4(\oGreen[0]_INST_0_i_3_n_0 ),
        .I5(VGA_Timings_1_oCountV[9]),
        .O(oGreen));
  LUT6 #(
    .INIT(64'h5555555555555557)) 
    \oGreen[0]_INST_0_i_2 
       (.I0(VGA_Timings_1_oCountV[8]),
        .I1(VGA_Timings_1_oCountV[3]),
        .I2(VGA_Timings_1_oCountV[2]),
        .I3(VGA_Timings_1_oCountV[0]),
        .I4(VGA_Timings_1_oCountV[4]),
        .I5(VGA_Timings_1_oCountV[1]),
        .O(\oGreen[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \oGreen[0]_INST_0_i_3 
       (.I0(VGA_Timings_1_oCountV[6]),
        .I1(VGA_Timings_1_oCountV[7]),
        .O(\oGreen[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    oVS_INST_0
       (.I0(VGA_Timings_1_oCountV[1]),
        .I1(VGA_Timings_1_oCountV[2]),
        .I2(VGA_Timings_1_oCountV[3]),
        .I3(oVS_INST_0_i_1_n_0),
        .O(oVS));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    oVS_INST_0_i_1
       (.I0(VGA_Timings_1_oCountV[9]),
        .I1(VGA_Timings_1_oCountV[8]),
        .I2(VGA_Timings_1_oCountV[6]),
        .I3(VGA_Timings_1_oCountV[7]),
        .I4(VGA_Timings_1_oCountV[5]),
        .I5(VGA_Timings_1_oCountV[4]),
        .O(oVS_INST_0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \r_VCntCrr[0]_i_1 
       (.I0(VGA_Timings_1_oCountV[0]),
        .O(w_VCntNxt[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_VCntCrr[1]_i_1 
       (.I0(VGA_Timings_1_oCountV[0]),
        .I1(VGA_Timings_1_oCountV[1]),
        .O(w_VCntNxt[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_VCntCrr[2]_i_1 
       (.I0(VGA_Timings_1_oCountV[1]),
        .I1(VGA_Timings_1_oCountV[0]),
        .I2(VGA_Timings_1_oCountV[2]),
        .O(w_VCntNxt[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_VCntCrr[3]_i_1 
       (.I0(VGA_Timings_1_oCountV[2]),
        .I1(VGA_Timings_1_oCountV[0]),
        .I2(VGA_Timings_1_oCountV[1]),
        .I3(VGA_Timings_1_oCountV[3]),
        .O(w_VCntNxt[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_VCntCrr[4]_i_1 
       (.I0(VGA_Timings_1_oCountV[3]),
        .I1(VGA_Timings_1_oCountV[1]),
        .I2(VGA_Timings_1_oCountV[0]),
        .I3(VGA_Timings_1_oCountV[2]),
        .I4(VGA_Timings_1_oCountV[4]),
        .O(w_VCntNxt[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_VCntCrr[5]_i_1 
       (.I0(VGA_Timings_1_oCountV[4]),
        .I1(VGA_Timings_1_oCountV[2]),
        .I2(VGA_Timings_1_oCountV[0]),
        .I3(VGA_Timings_1_oCountV[1]),
        .I4(VGA_Timings_1_oCountV[3]),
        .I5(VGA_Timings_1_oCountV[5]),
        .O(w_VCntNxt[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \r_VCntCrr[6]_i_1 
       (.I0(\r_VCntCrr[9]_i_6_n_0 ),
        .I1(VGA_Timings_1_oCountV[6]),
        .O(w_VCntNxt[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \r_VCntCrr[7]_i_1 
       (.I0(VGA_Timings_1_oCountV[6]),
        .I1(\r_VCntCrr[9]_i_6_n_0 ),
        .I2(VGA_Timings_1_oCountV[7]),
        .O(w_VCntNxt[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \r_VCntCrr[8]_i_1 
       (.I0(VGA_Timings_1_oCountV[7]),
        .I1(\r_VCntCrr[9]_i_6_n_0 ),
        .I2(VGA_Timings_1_oCountV[6]),
        .I3(VGA_Timings_1_oCountV[8]),
        .O(w_VCntNxt[8]));
  LUT5 #(
    .INIT(32'hF8FFF8F0)) 
    \r_VCntCrr[9]_i_1 
       (.I0(VGA_Timings_1_oCountV[9]),
        .I1(E),
        .I2(\r_VCntCrr[9]_i_3_n_0 ),
        .I3(\r_VCntCrr[9]_i_4_n_0 ),
        .I4(\r_VCntCrr[9]_i_5_n_0 ),
        .O(\r_VCntCrr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \r_VCntCrr[9]_i_2 
       (.I0(VGA_Timings_1_oCountV[8]),
        .I1(VGA_Timings_1_oCountV[6]),
        .I2(\r_VCntCrr[9]_i_6_n_0 ),
        .I3(VGA_Timings_1_oCountV[7]),
        .I4(VGA_Timings_1_oCountV[9]),
        .O(w_VCntNxt[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \r_VCntCrr[9]_i_3 
       (.I0(E),
        .I1(VGA_Timings_1_oCountV[9]),
        .I2(VGA_Timings_1_oCountV[3]),
        .I3(VGA_Timings_1_oCountV[2]),
        .I4(VGA_Timings_1_oCountV[1]),
        .I5(iRst),
        .O(\r_VCntCrr[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_VCntCrr[9]_i_4 
       (.I0(VGA_Timings_1_oCountV[4]),
        .I1(VGA_Timings_1_oCountV[7]),
        .I2(VGA_Timings_1_oCountV[8]),
        .I3(VGA_Timings_1_oCountV[6]),
        .I4(VGA_Timings_1_oCountV[5]),
        .O(\r_VCntCrr[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \r_VCntCrr[9]_i_5 
       (.I0(VGA_Timings_1_oCountV[0]),
        .I1(VGA_Timings_1_oCountV[2]),
        .I2(VGA_Timings_1_oCountV[1]),
        .I3(VGA_Timings_1_oCountV[9]),
        .I4(VGA_Timings_1_oCountV[3]),
        .O(\r_VCntCrr[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \r_VCntCrr[9]_i_6 
       (.I0(VGA_Timings_1_oCountV[4]),
        .I1(VGA_Timings_1_oCountV[2]),
        .I2(VGA_Timings_1_oCountV[0]),
        .I3(VGA_Timings_1_oCountV[1]),
        .I4(VGA_Timings_1_oCountV[3]),
        .I5(VGA_Timings_1_oCountV[5]),
        .O(\r_VCntCrr[9]_i_6_n_0 ));
  FDRE \r_VCntCrr_reg[0] 
       (.C(oClk25),
        .CE(E),
        .D(w_VCntNxt[0]),
        .Q(VGA_Timings_1_oCountV[0]),
        .R(\r_VCntCrr[9]_i_1_n_0 ));
  FDRE \r_VCntCrr_reg[1] 
       (.C(oClk25),
        .CE(E),
        .D(w_VCntNxt[1]),
        .Q(VGA_Timings_1_oCountV[1]),
        .R(\r_VCntCrr[9]_i_1_n_0 ));
  FDRE \r_VCntCrr_reg[2] 
       (.C(oClk25),
        .CE(E),
        .D(w_VCntNxt[2]),
        .Q(VGA_Timings_1_oCountV[2]),
        .R(\r_VCntCrr[9]_i_1_n_0 ));
  FDRE \r_VCntCrr_reg[3] 
       (.C(oClk25),
        .CE(E),
        .D(w_VCntNxt[3]),
        .Q(VGA_Timings_1_oCountV[3]),
        .R(\r_VCntCrr[9]_i_1_n_0 ));
  FDRE \r_VCntCrr_reg[4] 
       (.C(oClk25),
        .CE(E),
        .D(w_VCntNxt[4]),
        .Q(VGA_Timings_1_oCountV[4]),
        .R(\r_VCntCrr[9]_i_1_n_0 ));
  FDRE \r_VCntCrr_reg[5] 
       (.C(oClk25),
        .CE(E),
        .D(w_VCntNxt[5]),
        .Q(VGA_Timings_1_oCountV[5]),
        .R(\r_VCntCrr[9]_i_1_n_0 ));
  FDRE \r_VCntCrr_reg[6] 
       (.C(oClk25),
        .CE(E),
        .D(w_VCntNxt[6]),
        .Q(VGA_Timings_1_oCountV[6]),
        .R(\r_VCntCrr[9]_i_1_n_0 ));
  FDRE \r_VCntCrr_reg[7] 
       (.C(oClk25),
        .CE(E),
        .D(w_VCntNxt[7]),
        .Q(VGA_Timings_1_oCountV[7]),
        .R(\r_VCntCrr[9]_i_1_n_0 ));
  FDRE \r_VCntCrr_reg[8] 
       (.C(oClk25),
        .CE(E),
        .D(w_VCntNxt[8]),
        .Q(VGA_Timings_1_oCountV[8]),
        .R(\r_VCntCrr[9]_i_1_n_0 ));
  FDRE \r_VCntCrr_reg[9] 
       (.C(oClk25),
        .CE(E),
        .D(w_VCntNxt[9]),
        .Q(VGA_Timings_1_oCountV[9]),
        .R(\r_VCntCrr[9]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
