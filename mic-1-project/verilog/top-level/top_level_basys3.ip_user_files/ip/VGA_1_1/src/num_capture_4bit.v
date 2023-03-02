`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2021 02:01:05 PM
// Design Name: 
// Module Name: num_capture_4bit
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


module num_capture_4bit

    (
    input wire iClk, iRst, iSwUpdate, //change to switch
    input wire[47:0] iCPP, iH, 
                     iLV, iMAR, 
                     iMDR, iOPC, 
                     iPC, iSP,
                     iTOS, iData,
    input wire[11:0] iMBR,
    
    output wire[9:0] oAddr,
    output wire[11:0] oData,
    output wire oWe
    );
    reg [11:0]  rNum_Curr, rNum_Next;
    reg         rWeN, rWe;
    reg [9:0]   rAddr_Next, rAddr_Curr;
    
    
    //State Definition
    localparam sInit     = 4'b0000;
    localparam sIdle     = 4'b0001;
    localparam sUpdate0  = 4'b0010;
    localparam sUpdate1  = 4'b0011;    
    localparam sUpdate2  = 4'b0100;
    localparam sUpdate3  = 4'b0101;
    localparam sUpdate4  = 4'b0110;
    localparam sUpdate5  = 4'b0111;
    localparam sUpdate6  = 4'b1000;
    localparam sUpdate7  = 4'b1001;
    localparam sUpdate8  = 4'b1010;
    localparam sUpdate9  = 4'b1011;
    localparam sUpdate10 = 4'b1100;
    localparam sRst      = 4'b1101;


    
    reg[4:0] rFSM_Curr, wFSM_Next;
    
    //State Register without reset
    
    always @(posedge iClk)
    begin
        rFSM_Curr <= wFSM_Next;
    end

    //Next State Logic
    always @(posedge iClk)
    begin
        case (rFSM_Curr)
        
            sRst     :   wFSM_Next <= sInit;
        
            sInit    :   if (rAddr_Curr < 497)
                            wFSM_Next <= sInit;
                         else
                            wFSM_Next <= sIdle;
            
            sIdle    :   if (iSwUpdate == 1)
                            wFSM_Next <= sUpdate0;
                         else if (iRst == 1)
                            wFSM_Next <= sRst;
                         else
                            wFSM_Next <= sIdle;                    
     
            sUpdate0 :   if (rAddr_Curr == 97) //End of HEX line
                            wFSM_Next <= sUpdate1;
                         else 
                            wFSM_Next <= sUpdate0;
                            
            sUpdate1 :   if (rAddr_Curr == 137) //End of HEX line
                            wFSM_Next <= sUpdate2;
                         else 
                            wFSM_Next <= sUpdate1;   
                                   
            sUpdate2 :   if (rAddr_Curr == 177) //End of HEX line
                            wFSM_Next <= sUpdate3;
                         else 
                            wFSM_Next <= sUpdate2;
                            
            sUpdate3 :   if (rAddr_Curr == 217) //End of HEX line
                            wFSM_Next <= sUpdate4;
                         else 
                            wFSM_Next <= sUpdate3;  
                             
            sUpdate4 :   if (rAddr_Curr == 257) //End of HEX line
                            wFSM_Next <= sUpdate5;
                         else 
                            wFSM_Next <= sUpdate4; 
                             
            sUpdate5 :   if (rAddr_Curr == 297) //End of HEX line
                            wFSM_Next <= sUpdate6;
                         else 
                            wFSM_Next <= sUpdate5; 
                    
            sUpdate6 :   if (rAddr_Curr == 337) //End of HEX line
                            wFSM_Next <= sUpdate7;
                         else 
                            wFSM_Next <= sUpdate6; 
                                            
            sUpdate7 :   if (rAddr_Curr == 377) //End of HEX line
                            wFSM_Next <= sUpdate8;
                         else 
                            wFSM_Next <= sUpdate7; 
                            
            sUpdate8 :   if (rAddr_Curr == 417) //End of HEX line
                            wFSM_Next <= sUpdate9;
                         else 
                            wFSM_Next <= sUpdate8; 
                            
            sUpdate9 :   if (rAddr_Curr == 457) //End of HEX line
                            wFSM_Next <= sUpdate10;
                         else 
                            wFSM_Next <= sUpdate9; 
                            
            sUpdate10 :   if (rAddr_Curr == 497) //End of HEX line
                            wFSM_Next <= sIdle;
                         else 
                            wFSM_Next <= sUpdate10; 
                            
            default  :   wFSM_Next <= sIdle;
  
        endcase
    end 
    
    
    //Output Logic
    //only in function of states 
   always @(posedge iClk)
    begin
        case (rFSM_Curr)
        
            sRst     :   rAddr_Next <= 0;
            
            //Only delete the data not the static values
            sInit    :   if (rAddr_Curr < 91)
                            rAddr_Next <= 91;
                         else if (rAddr_Curr == 98)
                            rAddr_Next <= 131;
                         else if (rAddr_Curr == 138)
                            rAddr_Next <= 171;
                         else if (rAddr_Curr == 178)
                            rAddr_Next <= 211;
                         else if (rAddr_Curr == 218)
                            rAddr_Next <= 251;
                         else if (rAddr_Curr == 258)
                            rAddr_Next <= 291;
                         else if (rAddr_Curr == 298)
                            rAddr_Next <= 331;
                         else if (rAddr_Curr == 338)
                            rAddr_Next <= 371;
                         else if (rAddr_Curr == 378)
                            rAddr_Next <= 411;
                         else if (rAddr_Curr == 418)
                            rAddr_Next <= 451;
                         else if (rAddr_Curr == 458)
                            rAddr_Next <= 491;
                         else
                            rAddr_Next = rAddr_Curr + 1;
            
            sIdle    :   rAddr_Next <= 0; 
            
            sUpdate0 :   if (rAddr_Curr < 91)
                            rAddr_Next <= 91;
                         else 
                            rAddr_Next <= rAddr_Curr + 1;                            
                            
            sUpdate1 :   if (rAddr_Curr < 131)
                            rAddr_Next <= 131;
                         else 
                            rAddr_Next <= rAddr_Curr + 1; 
            
            sUpdate2 :   if (rAddr_Curr < 171)
                            rAddr_Next <= 171;
                         else 
                            rAddr_Next <= rAddr_Curr + 1;                            
                            
            sUpdate3 :   if (rAddr_Curr < 211)
                            rAddr_Next <= 211;
                         else 
                            rAddr_Next <= rAddr_Curr + 1; 
                            
            sUpdate4 :   if (rAddr_Curr < 251)
                            rAddr_Next <= 251;
                         else 
                            rAddr_Next <= rAddr_Curr + 1;
            
            sUpdate5 :   if (rAddr_Curr < 291)
                            rAddr_Next <= 291;
                         else 
                            rAddr_Next <= rAddr_Curr + 1;                            
                            
            sUpdate6 :   if (rAddr_Curr < 331)
                            rAddr_Next <= 331;
                         else 
                            rAddr_Next <= rAddr_Curr + 1; 
            
            sUpdate7 :   if (rAddr_Curr < 371)
                            rAddr_Next <= 371;
                         else 
                            rAddr_Next <= rAddr_Curr + 1;                            
                            
            sUpdate8 :   if (rAddr_Curr < 411)
                            rAddr_Next <= 411;
                         else
                            rAddr_Next <= rAddr_Curr + 1; 

            sUpdate9 :   if (rAddr_Curr < 451)
                            rAddr_Next <= 451;
                         else
                            rAddr_Next <= rAddr_Curr + 1;
                            
            sUpdate10 :   if (rAddr_Curr < 491)
                            rAddr_Next <= 491;
                         else
                            rAddr_Next <= rAddr_Curr + 1;
                                                        
            default  :   rAddr_Next <= rAddr_Curr;
            
        endcase
     end
    
    
always @(posedge iClk)
    begin
        case (rFSM_Curr)
            
            sRst     :   rNum_Next <= 448;      
                    
            sInit    :   rNum_Next <= 448;
                
            sIdle    :   rNum_Next <= 0;
            
            sUpdate0 :   if (rAddr_Curr < 91)
                            rNum_Next <= {1'b0, iCPP[47:42], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 91)
                            rNum_Next <= {1'b0, iCPP[41:36], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 92)
                            rNum_Next <= {1'b0, iCPP[35:30], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 93)
                            rNum_Next <= {1'b0, iCPP[29:24], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 94)
                            rNum_Next <= {1'b0, iCPP[23:18], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 95)
                            rNum_Next <= {1'b0, iCPP[17:12], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 96)
                            rNum_Next <= {1'b0, iCPP[11:6], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 97)
                            rNum_Next <= {1'b0, iCPP[5:0], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
        
            sUpdate1 :   if (rAddr_Curr < 131)
                            rNum_Next <= {1'b0, iH[47:42], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 131)
                            rNum_Next <= {1'b0, iH[41:36], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 132)
                            rNum_Next <= {1'b0, iH[35:30], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 133)
                            rNum_Next <= {1'b0, iH[29:24], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 134)
                            rNum_Next <= {1'b0, iH[23:18], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 135)
                            rNum_Next <= {1'b0, iH[17:12], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 136)
                            rNum_Next <= {1'b0, iH[11:6], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 137)
                            rNum_Next <= {1'b0, iH[5:0], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
            
            sUpdate2 :   if (rAddr_Curr < 171)
                            rNum_Next <= {1'b0, iLV[47:42], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 171)
                            rNum_Next <= {1'b0, iLV[41:36], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 172)
                            rNum_Next <= {1'b0, iLV[35:30], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 173)
                            rNum_Next <= {1'b0, iLV[29:24], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 174)
                            rNum_Next <= {1'b0, iLV[23:18], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 175)
                            rNum_Next <= {1'b0, iLV[17:12], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 176)
                            rNum_Next <= {1'b0, iLV[11:6], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 177)
                            rNum_Next <= {1'b0, iLV[5:0], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
        
            sUpdate3 :   if (rAddr_Curr < 211)
                            rNum_Next <= {1'b0, iMAR[47:42], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 211)
                            rNum_Next <= {1'b0, iMAR[41:36], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 212)
                            rNum_Next <= {1'b0, iMAR[35:30], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 213)
                            rNum_Next <= {1'b0, iMAR[29:24], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 214)
                            rNum_Next <= {1'b0, iMAR[23:18], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 215)
                            rNum_Next <= {1'b0, iMAR[17:12], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 216)
                            rNum_Next <= {1'b0, iMAR[11:6], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 217)
                            rNum_Next <= {1'b0, iMAR[5:0], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem

            sUpdate4 :   if (rAddr_Curr == 256)
                            rNum_Next <= {1'b0, iMBR[11:6], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 257)
                            rNum_Next <= {1'b0, iMBR[5:0], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else
                            rNum_Next <= 0;
                                        
            sUpdate5 :   if (rAddr_Curr < 291)
                            rNum_Next <= {1'b0, iMDR[47:42], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 291)
                            rNum_Next <= {1'b0, iMDR[41:36], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 292)
                            rNum_Next <= {1'b0, iMDR[35:30], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 293)
                            rNum_Next <= {1'b0, iMDR[29:24], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 294)
                            rNum_Next <= {1'b0, iMDR[23:18], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 295)
                            rNum_Next <= {1'b0, iMDR[17:12], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 296)
                            rNum_Next <= {1'b0, iMDR[11:6], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 297)
                            rNum_Next <= {1'b0, iMDR[5:0], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
        
            sUpdate6 :   if (rAddr_Curr < 331)
                            rNum_Next <= {1'b0, iOPC[47:42], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 331)
                            rNum_Next <= {1'b0, iOPC[41:36], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 332)
                            rNum_Next <= {1'b0, iOPC[35:30], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 333)
                            rNum_Next <= {1'b0, iOPC[29:24], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 334)
                            rNum_Next <= {1'b0, iOPC[23:18], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 335)
                            rNum_Next <= {1'b0, iOPC[17:12], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 336)
                            rNum_Next <= {1'b0, iOPC[11:6], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 337)
                            rNum_Next <= {1'b0, iOPC[5:0], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
            
            sUpdate7 :   if (rAddr_Curr < 371)
                            rNum_Next <= {1'b0, iPC[47:42], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 371)
                            rNum_Next <= {1'b0, iPC[41:36], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 372)
                            rNum_Next <= {1'b0, iPC[35:30], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 373)
                            rNum_Next <= {1'b0, iPC[29:24], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 374)
                            rNum_Next <= {1'b0, iPC[23:18], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 375)
                            rNum_Next <= {1'b0, iPC[17:12], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 376)
                            rNum_Next <= {1'b0, iPC[11:6], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 377)
                            rNum_Next <= {1'b0, iPC[5:0], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
        
            sUpdate8 :   if (rAddr_Curr < 411)
                            rNum_Next <= {1'b0, iSP[47:42], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 411)
                            rNum_Next <= {1'b0, iSP[41:36], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 412)
                            rNum_Next <= {1'b0, iSP[35:30], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 413)
                            rNum_Next <= {1'b0, iSP[29:24], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 414)
                            rNum_Next <= {1'b0, iSP[23:18], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 415)
                            rNum_Next <= {1'b0, iSP[17:12], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 416)
                            rNum_Next <= {1'b0, iSP[11:6], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 417)
                            rNum_Next <= {1'b0, iSP[5:0], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                
            sUpdate9 :   if (rAddr_Curr < 451)
                            rNum_Next <= {1'b0, iTOS[47:42], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 451)
                            rNum_Next <= {1'b0, iTOS[41:36], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 452)
                            rNum_Next <= {1'b0, iTOS[35:30], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 453)
                            rNum_Next <= {1'b0, iTOS[29:24], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 454)
                            rNum_Next <= {1'b0, iTOS[23:18], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 455)
                            rNum_Next <= {1'b0, iTOS[17:12], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 456)
                            rNum_Next <= {1'b0, iTOS[11:6], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 457)
                            rNum_Next <= {1'b0, iTOS[5:0], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
							
            sUpdate10 :   if (rAddr_Curr < 491)
                            rNum_Next <= {1'b0, iData[47:42], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 491)
                            rNum_Next <= {1'b0, iData[41:36], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 492)
                            rNum_Next <= {1'b0, iData[35:30], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 493)
                            rNum_Next <= {1'b0, iData[29:24], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 494)
                            rNum_Next <= {1'b0, iData[23:18], 5'b00000};  //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 495)
                            rNum_Next <= {1'b0, iData[17:12], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 496)
                            rNum_Next <= {1'b0, iData[11:6], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem
                         else if (rAddr_Curr == 497)
                            rNum_Next <= {1'b0, iData[5:0], 5'b00000}; //Translate this to ASCII hex, then to address from chars.mem

            default  :   rNum_Next <= rNum_Curr;
        
    endcase
    end
    
    
    always @(posedge iClk)
    begin
        rAddr_Curr   <= rAddr_Next;
        rNum_Curr    <= rNum_Next;
    end
    
    assign oAddr = rAddr_Curr;
    assign oWe   = (rFSM_Curr == sIdle 
            || rFSM_Curr == sInit 
            || rFSM_Curr == sUpdate0 
            || rFSM_Curr == sUpdate1 
            || rFSM_Curr == sUpdate2 
            || rFSM_Curr == sUpdate3 
            || rFSM_Curr == sUpdate4
            || rFSM_Curr == sUpdate5 
            || rFSM_Curr == sUpdate6 
            || rFSM_Curr == sUpdate7 
            || rFSM_Curr == sUpdate8
            || rFSM_Curr == sUpdate9
            || rFSM_Curr == sUpdate10) ? 1 : 0;
    assign oData = rNum_Curr;              

endmodule