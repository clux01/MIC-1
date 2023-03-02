`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2022 05:10:18 PM
// Design Name: 
// Module Name: DataToAddress
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


module DataToAddress(
    input  wire       iClk,
    input  wire[31:0] iData,
    output wire[47:0] oDataAddress
    );
    
  // define the memory
  reg [10:0] rMem  [15:0];
  
  // Initial contents of the memory
  initial
  begin
    $readmemb("data_to_address.mem", rMem);
  end
  
  reg [5:0] rData8;
  reg [5:0] rData7;
  reg [5:0] rData6;
  reg [5:0] rData5;
  reg [5:0] rData4;
  reg [5:0] rData3;
  reg [5:0] rData2;
  reg [5:0] rData1;
   
  always @(posedge iClk)
  begin
    rData8 = rMem[iData[31:28]]; //MSB
    rData7 = rMem[iData[27:24]];
    rData6 = rMem[iData[23:20]];
    rData5 = rMem[iData[19:16]];
    rData4 = rMem[iData[15:12]];
    rData3 = rMem[iData[11:8]];
    rData2 = rMem[iData[7:4]];
    rData1 = rMem[iData[3:0]];   //LSB
  end
    
  assign oDataAddress[47:42] = rData8;
  assign oDataAddress[41:36] = rData7;
  assign oDataAddress[35:30] = rData6;
  assign oDataAddress[29:24] = rData5;
  assign oDataAddress[23:18] = rData4;
  assign oDataAddress[17:12] = rData3;
  assign oDataAddress[11:6] = rData2;
  assign oDataAddress[5:0] = rData1;
  
    
    
endmodule
