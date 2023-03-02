-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Jan 12 15:57:45 2023
-- Host        : DESKTOP-OIDFPBB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {C:/Users/emile/OneDrive/Unief/Erasmus/Courses/ECE
--               Project/files/mic-1-project/verilog/top-level/top_level_basys3.runs/VGA_IP_0_synth_1/VGA_IP_0_sim_netlist.vhdl}
-- Design      : VGA_IP_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity VGA_IP_0_H_Counter is
  port (
    w_enable_V_Counter : out STD_LOGIC;
    \r_HCntCrr_reg[8]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    oHS : out STD_LOGIC;
    oClk25 : in STD_LOGIC;
    iRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of VGA_IP_0_H_Counter : entity is "H_Counter";
end VGA_IP_0_H_Counter;

architecture STRUCTURE of VGA_IP_0_H_Counter is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal VGA_Timings_1_oCountH : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \oGreen[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \r_HCntCrr[9]_i_2_n_0\ : STD_LOGIC;
  signal \r_HCntCrr[9]_i_4_n_0\ : STD_LOGIC;
  signal \r_HCntCrr[9]_i_5_n_0\ : STD_LOGIC;
  signal r_enable_V_Counter_i_1_n_0 : STD_LOGIC;
  signal w_HCntNxt : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal w_Rst : STD_LOGIC;
  signal \^w_enable_v_counter\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \oGreen[0]_INST_0_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_HCntCrr[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_HCntCrr[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_HCntCrr[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_HCntCrr[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_HCntCrr[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_HCntCrr[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_HCntCrr[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_HCntCrr[9]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_HCntCrr[9]_i_5\ : label is "soft_lutpair3";
begin
  Q(0) <= \^q\(0);
  w_enable_V_Counter <= \^w_enable_v_counter\;
\oGreen[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEAAAAAAAA"
    )
        port map (
      I0 => VGA_Timings_1_oCountH(8),
      I1 => VGA_Timings_1_oCountH(2),
      I2 => VGA_Timings_1_oCountH(3),
      I3 => VGA_Timings_1_oCountH(1),
      I4 => \oGreen[0]_INST_0_i_4_n_0\,
      I5 => VGA_Timings_1_oCountH(7),
      O => \r_HCntCrr_reg[8]_0\
    );
\oGreen[0]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => VGA_Timings_1_oCountH(5),
      I1 => VGA_Timings_1_oCountH(4),
      I2 => VGA_Timings_1_oCountH(0),
      I3 => VGA_Timings_1_oCountH(6),
      O => \oGreen[0]_INST_0_i_4_n_0\
    );
oHS_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBBBBBFFFFFFFFF"
    )
        port map (
      I0 => VGA_Timings_1_oCountH(8),
      I1 => \^q\(0),
      I2 => VGA_Timings_1_oCountH(4),
      I3 => VGA_Timings_1_oCountH(5),
      I4 => VGA_Timings_1_oCountH(6),
      I5 => VGA_Timings_1_oCountH(7),
      O => oHS
    );
\r_HCntCrr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VGA_Timings_1_oCountH(0),
      O => w_HCntNxt(0)
    );
\r_HCntCrr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => VGA_Timings_1_oCountH(0),
      I1 => VGA_Timings_1_oCountH(1),
      O => w_HCntNxt(1)
    );
\r_HCntCrr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => VGA_Timings_1_oCountH(1),
      I1 => VGA_Timings_1_oCountH(0),
      I2 => VGA_Timings_1_oCountH(2),
      O => w_HCntNxt(2)
    );
\r_HCntCrr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => VGA_Timings_1_oCountH(2),
      I1 => VGA_Timings_1_oCountH(0),
      I2 => VGA_Timings_1_oCountH(1),
      I3 => VGA_Timings_1_oCountH(3),
      O => w_HCntNxt(3)
    );
\r_HCntCrr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => VGA_Timings_1_oCountH(3),
      I1 => VGA_Timings_1_oCountH(1),
      I2 => VGA_Timings_1_oCountH(0),
      I3 => VGA_Timings_1_oCountH(2),
      I4 => VGA_Timings_1_oCountH(4),
      O => w_HCntNxt(4)
    );
\r_HCntCrr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => VGA_Timings_1_oCountH(4),
      I1 => VGA_Timings_1_oCountH(2),
      I2 => VGA_Timings_1_oCountH(0),
      I3 => VGA_Timings_1_oCountH(1),
      I4 => VGA_Timings_1_oCountH(3),
      I5 => VGA_Timings_1_oCountH(5),
      O => w_HCntNxt(5)
    );
\r_HCntCrr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => VGA_Timings_1_oCountH(5),
      I1 => \r_HCntCrr[9]_i_4_n_0\,
      I2 => VGA_Timings_1_oCountH(6),
      O => w_HCntNxt(6)
    );
\r_HCntCrr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => VGA_Timings_1_oCountH(6),
      I1 => \r_HCntCrr[9]_i_4_n_0\,
      I2 => VGA_Timings_1_oCountH(5),
      I3 => VGA_Timings_1_oCountH(7),
      O => w_HCntNxt(7)
    );
\r_HCntCrr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => VGA_Timings_1_oCountH(7),
      I1 => VGA_Timings_1_oCountH(5),
      I2 => \r_HCntCrr[9]_i_4_n_0\,
      I3 => VGA_Timings_1_oCountH(6),
      I4 => VGA_Timings_1_oCountH(8),
      O => w_HCntNxt(8)
    );
\r_HCntCrr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => \r_HCntCrr[9]_i_4_n_0\,
      I1 => \r_HCntCrr[9]_i_5_n_0\,
      I2 => \^q\(0),
      I3 => VGA_Timings_1_oCountH(8),
      I4 => iRst,
      O => w_Rst
    );
\r_HCntCrr[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7777777F"
    )
        port map (
      I0 => \^q\(0),
      I1 => VGA_Timings_1_oCountH(8),
      I2 => VGA_Timings_1_oCountH(7),
      I3 => VGA_Timings_1_oCountH(5),
      I4 => VGA_Timings_1_oCountH(6),
      O => \r_HCntCrr[9]_i_2_n_0\
    );
\r_HCntCrr[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => VGA_Timings_1_oCountH(8),
      I1 => VGA_Timings_1_oCountH(6),
      I2 => \r_HCntCrr[9]_i_4_n_0\,
      I3 => VGA_Timings_1_oCountH(5),
      I4 => VGA_Timings_1_oCountH(7),
      I5 => \^q\(0),
      O => w_HCntNxt(9)
    );
\r_HCntCrr[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => VGA_Timings_1_oCountH(3),
      I1 => VGA_Timings_1_oCountH(1),
      I2 => VGA_Timings_1_oCountH(0),
      I3 => VGA_Timings_1_oCountH(2),
      I4 => VGA_Timings_1_oCountH(4),
      O => \r_HCntCrr[9]_i_4_n_0\
    );
\r_HCntCrr[9]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => VGA_Timings_1_oCountH(6),
      I1 => VGA_Timings_1_oCountH(5),
      I2 => VGA_Timings_1_oCountH(7),
      O => \r_HCntCrr[9]_i_5_n_0\
    );
\r_HCntCrr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => oClk25,
      CE => \r_HCntCrr[9]_i_2_n_0\,
      D => w_HCntNxt(0),
      Q => VGA_Timings_1_oCountH(0),
      R => w_Rst
    );
\r_HCntCrr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => oClk25,
      CE => \r_HCntCrr[9]_i_2_n_0\,
      D => w_HCntNxt(1),
      Q => VGA_Timings_1_oCountH(1),
      R => w_Rst
    );
\r_HCntCrr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => oClk25,
      CE => \r_HCntCrr[9]_i_2_n_0\,
      D => w_HCntNxt(2),
      Q => VGA_Timings_1_oCountH(2),
      R => w_Rst
    );
\r_HCntCrr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => oClk25,
      CE => \r_HCntCrr[9]_i_2_n_0\,
      D => w_HCntNxt(3),
      Q => VGA_Timings_1_oCountH(3),
      R => w_Rst
    );
\r_HCntCrr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => oClk25,
      CE => \r_HCntCrr[9]_i_2_n_0\,
      D => w_HCntNxt(4),
      Q => VGA_Timings_1_oCountH(4),
      R => w_Rst
    );
\r_HCntCrr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => oClk25,
      CE => \r_HCntCrr[9]_i_2_n_0\,
      D => w_HCntNxt(5),
      Q => VGA_Timings_1_oCountH(5),
      R => w_Rst
    );
\r_HCntCrr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => oClk25,
      CE => \r_HCntCrr[9]_i_2_n_0\,
      D => w_HCntNxt(6),
      Q => VGA_Timings_1_oCountH(6),
      R => w_Rst
    );
\r_HCntCrr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => oClk25,
      CE => \r_HCntCrr[9]_i_2_n_0\,
      D => w_HCntNxt(7),
      Q => VGA_Timings_1_oCountH(7),
      R => w_Rst
    );
\r_HCntCrr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => oClk25,
      CE => \r_HCntCrr[9]_i_2_n_0\,
      D => w_HCntNxt(8),
      Q => VGA_Timings_1_oCountH(8),
      R => w_Rst
    );
\r_HCntCrr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => oClk25,
      CE => \r_HCntCrr[9]_i_2_n_0\,
      D => w_HCntNxt(9),
      Q => \^q\(0),
      R => w_Rst
    );
r_enable_V_Counter_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5300000003000000"
    )
        port map (
      I0 => iRst,
      I1 => \r_HCntCrr[9]_i_4_n_0\,
      I2 => \r_HCntCrr[9]_i_5_n_0\,
      I3 => \^q\(0),
      I4 => VGA_Timings_1_oCountH(8),
      I5 => \^w_enable_v_counter\,
      O => r_enable_V_Counter_i_1_n_0
    );
r_enable_V_Counter_reg: unisim.vcomponents.FDRE
     port map (
      C => oClk25,
      CE => '1',
      D => r_enable_V_Counter_i_1_n_0,
      Q => \^w_enable_v_counter\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity VGA_IP_0_VGA_IP_clk_wiz_0_0_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of VGA_IP_0_VGA_IP_clk_wiz_0_0_clk_wiz : entity is "VGA_IP_clk_wiz_0_0_clk_wiz";
end VGA_IP_0_VGA_IP_clk_wiz_0_0_clk_wiz;

architecture STRUCTURE of VGA_IP_0_VGA_IP_clk_wiz_0_0_clk_wiz is
  signal clk_in1_VGA_IP_clk_wiz_0_0 : STD_LOGIC;
  signal clk_out1_VGA_IP_clk_wiz_0_0 : STD_LOGIC;
  signal clkfbout_VGA_IP_clk_wiz_0_0 : STD_LOGIC;
  signal clkfbout_buf_VGA_IP_clk_wiz_0_0 : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_ibufg : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkin1_ibufg : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkin1_ibufg : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of clkin1_ibufg : label is "AUTO";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_VGA_IP_clk_wiz_0_0,
      O => clkfbout_buf_VGA_IP_clk_wiz_0_0
    );
clkin1_ibufg: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE",
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_in1,
      O => clk_in1_VGA_IP_clk_wiz_0_0
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out1_VGA_IP_clk_wiz_0_0,
      O => clk_out1
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 9.125000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 36.500000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_VGA_IP_clk_wiz_0_0,
      CLKFBOUT => clkfbout_VGA_IP_clk_wiz_0_0,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1_VGA_IP_clk_wiz_0_0,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk_out1_VGA_IP_clk_wiz_0_0,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => NLW_mmcm_adv_inst_LOCKED_UNCONNECTED,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity VGA_IP_0_V_Counter is
  port (
    oGreen : out STD_LOGIC_VECTOR ( 0 to 0 );
    oVS : out STD_LOGIC;
    oGreen_0_sp_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    iRst : in STD_LOGIC;
    oClk25 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of VGA_IP_0_V_Counter : entity is "V_Counter";
end VGA_IP_0_V_Counter;

architecture STRUCTURE of VGA_IP_0_V_Counter is
  signal VGA_Timings_1_oCountV : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \oGreen[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oGreen[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal oGreen_0_sn_1 : STD_LOGIC;
  signal oVS_INST_0_i_1_n_0 : STD_LOGIC;
  signal \r_VCntCrr[9]_i_1_n_0\ : STD_LOGIC;
  signal \r_VCntCrr[9]_i_3_n_0\ : STD_LOGIC;
  signal \r_VCntCrr[9]_i_4_n_0\ : STD_LOGIC;
  signal \r_VCntCrr[9]_i_5_n_0\ : STD_LOGIC;
  signal \r_VCntCrr[9]_i_6_n_0\ : STD_LOGIC;
  signal w_VCntNxt : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \oGreen[0]_INST_0_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of oVS_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_VCntCrr[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_VCntCrr[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_VCntCrr[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_VCntCrr[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_VCntCrr[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_VCntCrr[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_VCntCrr[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_VCntCrr[9]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_VCntCrr[9]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_VCntCrr[9]_i_5\ : label is "soft_lutpair6";
begin
  oGreen_0_sn_1 <= oGreen_0_sp_1;
\oGreen[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077777707"
    )
        port map (
      I0 => oGreen_0_sn_1,
      I1 => Q(0),
      I2 => VGA_Timings_1_oCountV(5),
      I3 => \oGreen[0]_INST_0_i_2_n_0\,
      I4 => \oGreen[0]_INST_0_i_3_n_0\,
      I5 => VGA_Timings_1_oCountV(9),
      O => oGreen(0)
    );
\oGreen[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555557"
    )
        port map (
      I0 => VGA_Timings_1_oCountV(8),
      I1 => VGA_Timings_1_oCountV(3),
      I2 => VGA_Timings_1_oCountV(2),
      I3 => VGA_Timings_1_oCountV(0),
      I4 => VGA_Timings_1_oCountV(4),
      I5 => VGA_Timings_1_oCountV(1),
      O => \oGreen[0]_INST_0_i_2_n_0\
    );
\oGreen[0]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => VGA_Timings_1_oCountV(6),
      I1 => VGA_Timings_1_oCountV(7),
      O => \oGreen[0]_INST_0_i_3_n_0\
    );
oVS_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => VGA_Timings_1_oCountV(1),
      I1 => VGA_Timings_1_oCountV(2),
      I2 => VGA_Timings_1_oCountV(3),
      I3 => oVS_INST_0_i_1_n_0,
      O => oVS
    );
oVS_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => VGA_Timings_1_oCountV(9),
      I1 => VGA_Timings_1_oCountV(8),
      I2 => VGA_Timings_1_oCountV(6),
      I3 => VGA_Timings_1_oCountV(7),
      I4 => VGA_Timings_1_oCountV(5),
      I5 => VGA_Timings_1_oCountV(4),
      O => oVS_INST_0_i_1_n_0
    );
\r_VCntCrr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VGA_Timings_1_oCountV(0),
      O => w_VCntNxt(0)
    );
\r_VCntCrr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => VGA_Timings_1_oCountV(0),
      I1 => VGA_Timings_1_oCountV(1),
      O => w_VCntNxt(1)
    );
\r_VCntCrr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => VGA_Timings_1_oCountV(1),
      I1 => VGA_Timings_1_oCountV(0),
      I2 => VGA_Timings_1_oCountV(2),
      O => w_VCntNxt(2)
    );
\r_VCntCrr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => VGA_Timings_1_oCountV(2),
      I1 => VGA_Timings_1_oCountV(0),
      I2 => VGA_Timings_1_oCountV(1),
      I3 => VGA_Timings_1_oCountV(3),
      O => w_VCntNxt(3)
    );
\r_VCntCrr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => VGA_Timings_1_oCountV(3),
      I1 => VGA_Timings_1_oCountV(1),
      I2 => VGA_Timings_1_oCountV(0),
      I3 => VGA_Timings_1_oCountV(2),
      I4 => VGA_Timings_1_oCountV(4),
      O => w_VCntNxt(4)
    );
\r_VCntCrr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => VGA_Timings_1_oCountV(4),
      I1 => VGA_Timings_1_oCountV(2),
      I2 => VGA_Timings_1_oCountV(0),
      I3 => VGA_Timings_1_oCountV(1),
      I4 => VGA_Timings_1_oCountV(3),
      I5 => VGA_Timings_1_oCountV(5),
      O => w_VCntNxt(5)
    );
\r_VCntCrr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_VCntCrr[9]_i_6_n_0\,
      I1 => VGA_Timings_1_oCountV(6),
      O => w_VCntNxt(6)
    );
\r_VCntCrr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => VGA_Timings_1_oCountV(6),
      I1 => \r_VCntCrr[9]_i_6_n_0\,
      I2 => VGA_Timings_1_oCountV(7),
      O => w_VCntNxt(7)
    );
\r_VCntCrr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => VGA_Timings_1_oCountV(7),
      I1 => \r_VCntCrr[9]_i_6_n_0\,
      I2 => VGA_Timings_1_oCountV(6),
      I3 => VGA_Timings_1_oCountV(8),
      O => w_VCntNxt(8)
    );
\r_VCntCrr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF8F0"
    )
        port map (
      I0 => VGA_Timings_1_oCountV(9),
      I1 => E(0),
      I2 => \r_VCntCrr[9]_i_3_n_0\,
      I3 => \r_VCntCrr[9]_i_4_n_0\,
      I4 => \r_VCntCrr[9]_i_5_n_0\,
      O => \r_VCntCrr[9]_i_1_n_0\
    );
\r_VCntCrr[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => VGA_Timings_1_oCountV(8),
      I1 => VGA_Timings_1_oCountV(6),
      I2 => \r_VCntCrr[9]_i_6_n_0\,
      I3 => VGA_Timings_1_oCountV(7),
      I4 => VGA_Timings_1_oCountV(9),
      O => w_VCntNxt(9)
    );
\r_VCntCrr[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => E(0),
      I1 => VGA_Timings_1_oCountV(9),
      I2 => VGA_Timings_1_oCountV(3),
      I3 => VGA_Timings_1_oCountV(2),
      I4 => VGA_Timings_1_oCountV(1),
      I5 => iRst,
      O => \r_VCntCrr[9]_i_3_n_0\
    );
\r_VCntCrr[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => VGA_Timings_1_oCountV(4),
      I1 => VGA_Timings_1_oCountV(7),
      I2 => VGA_Timings_1_oCountV(8),
      I3 => VGA_Timings_1_oCountV(6),
      I4 => VGA_Timings_1_oCountV(5),
      O => \r_VCntCrr[9]_i_4_n_0\
    );
\r_VCntCrr[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => VGA_Timings_1_oCountV(0),
      I1 => VGA_Timings_1_oCountV(2),
      I2 => VGA_Timings_1_oCountV(1),
      I3 => VGA_Timings_1_oCountV(9),
      I4 => VGA_Timings_1_oCountV(3),
      O => \r_VCntCrr[9]_i_5_n_0\
    );
\r_VCntCrr[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => VGA_Timings_1_oCountV(4),
      I1 => VGA_Timings_1_oCountV(2),
      I2 => VGA_Timings_1_oCountV(0),
      I3 => VGA_Timings_1_oCountV(1),
      I4 => VGA_Timings_1_oCountV(3),
      I5 => VGA_Timings_1_oCountV(5),
      O => \r_VCntCrr[9]_i_6_n_0\
    );
\r_VCntCrr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => oClk25,
      CE => E(0),
      D => w_VCntNxt(0),
      Q => VGA_Timings_1_oCountV(0),
      R => \r_VCntCrr[9]_i_1_n_0\
    );
\r_VCntCrr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => oClk25,
      CE => E(0),
      D => w_VCntNxt(1),
      Q => VGA_Timings_1_oCountV(1),
      R => \r_VCntCrr[9]_i_1_n_0\
    );
\r_VCntCrr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => oClk25,
      CE => E(0),
      D => w_VCntNxt(2),
      Q => VGA_Timings_1_oCountV(2),
      R => \r_VCntCrr[9]_i_1_n_0\
    );
\r_VCntCrr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => oClk25,
      CE => E(0),
      D => w_VCntNxt(3),
      Q => VGA_Timings_1_oCountV(3),
      R => \r_VCntCrr[9]_i_1_n_0\
    );
\r_VCntCrr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => oClk25,
      CE => E(0),
      D => w_VCntNxt(4),
      Q => VGA_Timings_1_oCountV(4),
      R => \r_VCntCrr[9]_i_1_n_0\
    );
\r_VCntCrr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => oClk25,
      CE => E(0),
      D => w_VCntNxt(5),
      Q => VGA_Timings_1_oCountV(5),
      R => \r_VCntCrr[9]_i_1_n_0\
    );
\r_VCntCrr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => oClk25,
      CE => E(0),
      D => w_VCntNxt(6),
      Q => VGA_Timings_1_oCountV(6),
      R => \r_VCntCrr[9]_i_1_n_0\
    );
\r_VCntCrr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => oClk25,
      CE => E(0),
      D => w_VCntNxt(7),
      Q => VGA_Timings_1_oCountV(7),
      R => \r_VCntCrr[9]_i_1_n_0\
    );
\r_VCntCrr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => oClk25,
      CE => E(0),
      D => w_VCntNxt(8),
      Q => VGA_Timings_1_oCountV(8),
      R => \r_VCntCrr[9]_i_1_n_0\
    );
\r_VCntCrr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => oClk25,
      CE => E(0),
      D => w_VCntNxt(9),
      Q => VGA_Timings_1_oCountV(9),
      R => \r_VCntCrr[9]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity VGA_IP_0_VGA_IP_clk_wiz_0_0 is
  port (
    clk_out1 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of VGA_IP_0_VGA_IP_clk_wiz_0_0 : entity is "VGA_IP_clk_wiz_0_0";
end VGA_IP_0_VGA_IP_clk_wiz_0_0;

architecture STRUCTURE of VGA_IP_0_VGA_IP_clk_wiz_0_0 is
begin
inst: entity work.VGA_IP_0_VGA_IP_clk_wiz_0_0_clk_wiz
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity VGA_IP_0_VGA_Timings is
  port (
    oGreen : out STD_LOGIC_VECTOR ( 0 to 0 );
    oHS : out STD_LOGIC;
    oVS : out STD_LOGIC;
    oClk25 : in STD_LOGIC;
    iRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of VGA_IP_0_VGA_Timings : entity is "VGA_Timings";
end VGA_IP_0_VGA_Timings;

architecture STRUCTURE of VGA_IP_0_VGA_Timings is
  signal H_Counter_inst_n_1 : STD_LOGIC;
  signal VGA_Timings_1_oCountH : STD_LOGIC_VECTOR ( 9 to 9 );
  signal w_enable_V_Counter : STD_LOGIC;
begin
H_Counter_inst: entity work.VGA_IP_0_H_Counter
     port map (
      Q(0) => VGA_Timings_1_oCountH(9),
      iRst => iRst,
      oClk25 => oClk25,
      oHS => oHS,
      \r_HCntCrr_reg[8]_0\ => H_Counter_inst_n_1,
      w_enable_V_Counter => w_enable_V_Counter
    );
V_Counter_inst: entity work.VGA_IP_0_V_Counter
     port map (
      E(0) => w_enable_V_Counter,
      Q(0) => VGA_Timings_1_oCountH(9),
      iRst => iRst,
      oClk25 => oClk25,
      oGreen(0) => oGreen(0),
      oGreen_0_sp_1 => H_Counter_inst_n_1,
      oVS => oVS
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity VGA_IP_0_VGA_IP_VGA_Timings_1_0 is
  port (
    oGreen : out STD_LOGIC_VECTOR ( 0 to 0 );
    oHS : out STD_LOGIC;
    oVS : out STD_LOGIC;
    oClk25 : in STD_LOGIC;
    iRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of VGA_IP_0_VGA_IP_VGA_Timings_1_0 : entity is "VGA_IP_VGA_Timings_1_0";
end VGA_IP_0_VGA_IP_VGA_Timings_1_0;

architecture STRUCTURE of VGA_IP_0_VGA_IP_VGA_Timings_1_0 is
begin
inst: entity work.VGA_IP_0_VGA_Timings
     port map (
      iRst => iRst,
      oClk25 => oClk25,
      oGreen(0) => oGreen(0),
      oHS => oHS,
      oVS => oVS
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity VGA_IP_0_VGA_IP is
  port (
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
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of VGA_IP_0_VGA_IP : entity is "VGA_IP.hwdef";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of VGA_IP_0_VGA_IP : entity is "VGA_IP";
end VGA_IP_0_VGA_IP;

architecture STRUCTURE of VGA_IP_0_VGA_IP is
  signal \<const0>\ : STD_LOGIC;
  signal \^oclk25\ : STD_LOGIC;
  signal \^ogreen\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of VGA_Timings_1 : label is "VGA_Timings,Vivado 2022.2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of iClk : signal is "xilinx.com:signal:clock:1.0 CLK.ICLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of iClk : signal is "XIL_INTERFACENAME CLK.ICLK, CLK_DOMAIN VGA_IP_iClk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of oClk25 : signal is "xilinx.com:signal:clock:1.0 CLK.OCLK25 CLK";
  attribute X_INTERFACE_PARAMETER of oClk25 : signal is "XIL_INTERFACENAME CLK.OCLK25, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  oBlue(3) <= \^ogreen\(0);
  oBlue(2) <= \^ogreen\(0);
  oBlue(1) <= \^ogreen\(0);
  oBlue(0) <= \^ogreen\(0);
  oClk25 <= \^oclk25\;
  oGreen(3) <= \^ogreen\(0);
  oGreen(2) <= \^ogreen\(0);
  oGreen(1) <= \^ogreen\(0);
  oGreen(0) <= \^ogreen\(0);
  oRed(3) <= \<const0>\;
  oRed(2) <= \<const0>\;
  oRed(1) <= \<const0>\;
  oRed(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VGA_Timings_1: entity work.VGA_IP_0_VGA_IP_VGA_Timings_1_0
     port map (
      iRst => iRst,
      oClk25 => \^oclk25\,
      oGreen(0) => \^ogreen\(0),
      oHS => oHS,
      oVS => oVS
    );
clk_wiz_0: entity work.VGA_IP_0_VGA_IP_clk_wiz_0_0
     port map (
      clk_in1 => iClk,
      clk_out1 => \^oclk25\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity VGA_IP_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of VGA_IP_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of VGA_IP_0 : entity is "VGA_IP_0,VGA_IP,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of VGA_IP_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of VGA_IP_0 : entity is "IPI";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of VGA_IP_0 : entity is "VGA_IP,Vivado 2022.2";
end VGA_IP_0;

architecture STRUCTURE of VGA_IP_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_oRed_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "VGA_IP.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of iClk : signal is "xilinx.com:signal:clock:1.0 CLK.ICLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of iClk : signal is "XIL_INTERFACENAME CLK.ICLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of oClk25 : signal is "xilinx.com:signal:clock:1.0 CLK.OCLK25 CLK";
  attribute X_INTERFACE_PARAMETER of oClk25 : signal is "XIL_INTERFACENAME CLK.OCLK25, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
  oRed(3) <= \<const0>\;
  oRed(2) <= \<const0>\;
  oRed(1) <= \<const0>\;
  oRed(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.VGA_IP_0_VGA_IP
     port map (
      iCPP(31 downto 0) => B"00000000000000000000000000000000",
      iClk => iClk,
      iData(31 downto 0) => B"00000000000000000000000000000000",
      iH(31 downto 0) => B"00000000000000000000000000000000",
      iLV(31 downto 0) => B"00000000000000000000000000000000",
      iMAR(31 downto 0) => B"00000000000000000000000000000000",
      iMBR(7 downto 0) => B"00000000",
      iMDR(31 downto 0) => B"00000000000000000000000000000000",
      iOPC(31 downto 0) => B"00000000000000000000000000000000",
      iPC(31 downto 0) => B"00000000000000000000000000000000",
      iRst => iRst,
      iSP(31 downto 0) => B"00000000000000000000000000000000",
      iSwUpdate => '0',
      iTOS(31 downto 0) => B"00000000000000000000000000000000",
      iUpdate => '0',
      oBlue(3 downto 0) => oBlue(3 downto 0),
      oClk25 => oClk25,
      oGreen(3 downto 0) => oGreen(3 downto 0),
      oHS => oHS,
      oRed(3 downto 0) => NLW_inst_oRed_UNCONNECTED(3 downto 0),
      oVS => oVS
    );
end STRUCTURE;
