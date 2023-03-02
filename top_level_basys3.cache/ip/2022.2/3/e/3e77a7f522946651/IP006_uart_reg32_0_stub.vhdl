-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Jan 12 16:32:41 2023
-- Host        : DESKTOP-OIDFPBB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ IP006_uart_reg32_0_stub.vhdl
-- Design      : IP006_uart_reg32_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    reg100 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg101 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg102 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg103 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg104 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg105 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg106 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg107 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg108 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg109 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg10A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg10B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg10C : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg10D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg10E : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg10F : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reset_s : in STD_LOGIC;
    uartA_rxd : in STD_LOGIC;
    uartB_rxd : in STD_LOGIC;
    input_read : out STD_LOGIC_VECTOR ( 255 downto 0 );
    output_read : out STD_LOGIC_VECTOR ( 255 downto 0 );
    output_written : out STD_LOGIC_VECTOR ( 255 downto 0 );
    reg000 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg001 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg002 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg003 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg004 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg005 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg006 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg007 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg008 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg009 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg00A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg00B : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg00C : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg00D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg00E : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg00F : out STD_LOGIC_VECTOR ( 31 downto 0 );
    uartA_txd : out STD_LOGIC;
    uartB_txd : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reg100[31:0],reg101[31:0],reg102[31:0],reg103[31:0],reg104[31:0],reg105[31:0],reg106[31:0],reg107[31:0],reg108[31:0],reg109[31:0],reg10A[31:0],reg10B[31:0],reg10C[31:0],reg10D[31:0],reg10E[31:0],reg10F[31:0],reset_s,uartA_rxd,uartB_rxd,input_read[255:0],output_read[255:0],output_written[255:0],reg000[31:0],reg001[31:0],reg002[31:0],reg003[31:0],reg004[31:0],reg005[31:0],reg006[31:0],reg007[31:0],reg008[31:0],reg009[31:0],reg00A[31:0],reg00B[31:0],reg00C[31:0],reg00D[31:0],reg00E[31:0],reg00F[31:0],uartA_txd,uartB_txd";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "IP006_uart_reg32,Vivado 2022.2";
begin
end;
