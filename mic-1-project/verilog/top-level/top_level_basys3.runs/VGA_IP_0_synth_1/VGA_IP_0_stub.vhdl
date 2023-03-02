-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Jan 12 15:57:45 2023
-- Host        : DESKTOP-OIDFPBB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {C:/Users/emile/OneDrive/Unief/Erasmus/Courses/ECE
--               Project/files/mic-1-project/verilog/top-level/top_level_basys3.runs/VGA_IP_0_synth_1/VGA_IP_0_stub.vhdl}
-- Design      : VGA_IP_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VGA_IP_0 is
  Port ( 
    iCPP : in STD_LOGIC_VECTOR ( 31 downto 0 );
    iClk : in STD_LOGIC;
    iData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    iH : in STD_LOGIC_VECTOR ( 31 downto 0 );
    iLV : in STD_LOGIC_VECTOR ( 31 downto 0 );
    iMAR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    iMBR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    iMDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    iOPC : in STD_LOGIC_VECTOR ( 31 downto 0 );
    iPC : in STD_LOGIC_VECTOR ( 31 downto 0 );
    iRst : in STD_LOGIC;
    iSP : in STD_LOGIC_VECTOR ( 31 downto 0 );
    iSwUpdate : in STD_LOGIC;
    iTOS : in STD_LOGIC_VECTOR ( 31 downto 0 );
    iUpdate : in STD_LOGIC;
    oBlue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    oClk25 : out STD_LOGIC;
    oGreen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    oHS : out STD_LOGIC;
    oRed : out STD_LOGIC_VECTOR ( 3 downto 0 );
    oVS : out STD_LOGIC
  );

end VGA_IP_0;

architecture stub of VGA_IP_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "iCPP[31:0],iClk,iData[31:0],iH[31:0],iLV[31:0],iMAR[31:0],iMBR[7:0],iMDR[31:0],iOPC[31:0],iPC[31:0],iRst,iSP[31:0],iSwUpdate,iTOS[31:0],iUpdate,oBlue[3:0],oClk25,oGreen[3:0],oHS,oRed[3:0],oVS";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "VGA_IP,Vivado 2022.2";
begin
end;
