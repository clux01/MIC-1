// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:VGA:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "IPI" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module VGA_0 (
  iCPP,
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
  oVS
);

input wire [31 : 0] iCPP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ICLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ICLK CLK" *)
input wire iClk;
input wire [31 : 0] iData;
input wire [31 : 0] iH;
input wire [31 : 0] iLV;
input wire [31 : 0] iMAR;
input wire [7 : 0] iMBR;
input wire [31 : 0] iMDR;
input wire [31 : 0] iOPC;
input wire [31 : 0] iPC;
input wire iRst;
input wire [31 : 0] iSP;
input wire iSwUpdate;
input wire [31 : 0] iTOS;
output wire [3 : 0] oBlue;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.OCLK25, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.OCLK25 CLK" *)
output wire oClk25;
output wire [3 : 0] oGreen;
output wire oHS;
output wire [3 : 0] oRed;
output wire oVS;

  VGA inst (
    .iCPP(iCPP),
    .iClk(iClk),
    .iData(iData),
    .iH(iH),
    .iLV(iLV),
    .iMAR(iMAR),
    .iMBR(iMBR),
    .iMDR(iMDR),
    .iOPC(iOPC),
    .iPC(iPC),
    .iRst(iRst),
    .iSP(iSP),
    .iSwUpdate(iSwUpdate),
    .iTOS(iTOS),
    .oBlue(oBlue),
    .oClk25(oClk25),
    .oGreen(oGreen),
    .oHS(oHS),
    .oRed(oRed),
    .oVS(oVS)
  );
endmodule
