`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2021 05:06:33 PM
// Design Name: 
// Module Name: VGA_Timings
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


module VGA_Timings

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
    input wire iClk, iRst,
    output wire oHS, oVS,

    output wire[9:0] oCountH, oCountV
    );

    wire w_enable_V_Counter;
    
    H_Counter #(.LIM(WIDTH+H_FP+H_PW+H_BP))
    H_Counter_inst 
    (.iClk(iClk),
    .iRst(iRst),
    .enable_V_Counter(w_enable_V_Counter),
    .H_Count_Value(oCountH));
    
    V_Counter #(.LIM(HEIGHT+V_FP+V_PW+V_BP))
    V_Counter_inst
    (.iClk(iClk),
    .iRst(iRst),
    .enable_V_Counter(w_enable_V_Counter),
    .V_Count_Value(oCountV));
 
    assign oHS = (oCountH >= (WIDTH+H_FP) && oCountH < (WIDTH+H_FP+H_PW))? 0 : 1;
    assign oVS = (oCountV >= (HEIGHT+V_FP) && oCountV < (HEIGHT+V_FP+V_PW))? 0 : 1;
    
endmodule