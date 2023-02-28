`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 01:48:44 PM
// Design Name: 
// Module Name: H_Counter
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


module H_Counter
    #(parameter LIM = 800)
    (
    input iClk,
    input iRst,
    output wire enable_V_Counter,
    output wire[9:0] H_Count_Value
    );
    
    //signal declaration
    wire w_Rst;
    wire w_Cmp;
    reg[9:0] r_HCntCrr=0;
    reg r_enable_V_Counter;
    wire[9:0] w_HCntNxt;
    
    always@(posedge iClk)
    begin
    if (w_Rst == 1)
        begin
        r_HCntCrr <= 0;
        if (w_Cmp == 1)
            r_enable_V_Counter <= 1;
        else
            r_enable_V_Counter <= 0;
        end
    else if (r_HCntCrr < LIM)
        begin
        r_HCntCrr <= w_HCntNxt;
        r_enable_V_Counter <= 0; //disable v counter
        end
        
    end
   
    //comparator
    assign w_Cmp = (r_HCntCrr == (LIM-1));
    //internal reset
    assign w_Rst = iRst | w_Cmp;
    //increment
    assign w_HCntNxt = r_HCntCrr + 1;
    //output
    assign enable_V_Counter = r_enable_V_Counter;
    assign H_Count_Value = r_HCntCrr;

    
    
        
endmodule
