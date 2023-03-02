`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2023 05:48:07 PM
// Design Name: 
// Module Name: DataToAddress7bit
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


module DataToAddress7bit(
 input  wire       iClk,
    input  wire[7:0]  iMBR,
    output wire[11:0] oDataAddress
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
    rData2 = rMem[iMBR[7:4]];   //MSB
    rData1 = rMem[iMBR[3:0]];   //LSB
  end
    
  assign oDataAddress[11:6] = rData2;
  assign oDataAddress[5:0] = rData1;
  
    
    
endmodule