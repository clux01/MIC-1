`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 01:48:57 PM
// Design Name: 
// Module Name: V_Counter
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


module V_Counter 
    #(parameter LIM = 525)
    (
    input iClk,
    input iRst,
    input enable_V_Counter,
    output wire[9:0] V_Count_Value
    );
    //signal declaration
    wire w_Rst;
    wire w_Cmp;
    reg[9:0] r_VCntCrr;
    wire[9:0] w_VCntNxt;
    
    always@(posedge iClk)
    begin
    if (w_Rst == 1)
        r_VCntCrr <= 0;
    else if (enable_V_Counter == 1)
        begin
        if (r_VCntCrr < LIM)
            r_VCntCrr <= w_VCntNxt;
        else 
            r_VCntCrr <= 0; //reset horizontal counter
        end
    end
    
    //comparator
    assign w_Cmp = (r_VCntCrr == LIM);
    //internal reset
    assign w_Rst = iRst | w_Cmp;
    //increment
    assign w_VCntNxt = r_VCntCrr + 1;
    //output
    //assign enable_V_Counter = w_enable;
    assign V_Count_Value = r_VCntCrr;
    
endmodule
