`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 11:25:20 PM
// Design Name: 
// Module Name: VGA_Pattern
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module VGA_Pattern
    #(
    //H total = 640 +16 +96 + 48 = 800
    parameter WIDTH = 640,
    parameter H_FP = 16,
    parameter H_PW = 96,
    parameter H_BP = 48,
    //V total = 480 + 10 + 2 + 33 =525
    parameter HEIGHT = 480,
    parameter V_FP = 10,
    parameter V_PW = 2,
    parameter V_BP = 33
    )
    
    (
    input  wire      iClk, iRst,
    input  wire[9:0] iCountH, iCountV,
    input  wire      iHS, iVS,
    input  wire[11:0] iDataA,
    input  wire[15:0] iDataB,
    
    output wire      oHS, oVS,
    output wire[3:0] oRed, oGreen, oBlue, //12bits RGB
    output wire[9:0] oAddrA,
    output wire[11:0] oAddrB
    );


    assign oAddrB   = iCountV % 32 + iDataA; 
    
    assign oAddrA   = (iCountH < WIDTH && iCountV < HEIGHT) ? (iCountH/16 + (iCountV/32)*40) : 599;
    
    assign oRed     = (iCountH > WIDTH || iCountV > HEIGHT ) ? 0  :
                      (iDataB[15 - iCountH % 16] == 1) ? 15 : 0 ; 
    assign oGreen   = (iCountH > WIDTH || iCountV > HEIGHT ) ? 0  : 15;
    assign oBlue    = (iCountH > WIDTH || iCountV > HEIGHT ) ? 0  : 15;
    
    assign oHS = iHS;
    assign oVS = iVS; 
    
endmodule
