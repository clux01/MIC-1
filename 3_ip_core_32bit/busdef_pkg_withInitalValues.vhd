--
-- VHDL Package Header dev_lib.busdef
--
-- Created:
--          by - net.UNKNOWN (KPERSM4268)
--          at - 08:52:37 10.03.2011
--
-- using Mentor Graphics HDL Designer(TM) 2010.2 (Build 21)
-- 
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


PACKAGE busdef IS
  
 -------------------------------------------------------------------------------------
 ------- default values --------------------------------------------------------------
 -------------------------------------------------------------------------------------
constant reg000_c: std_logic_vector(15 downto 0) := X"0000";
constant reg001_c: std_logic_vector(15 downto 0) := X"0010";
constant reg002_c: std_logic_vector(15 downto 0) := X"0020";
constant reg003_c: std_logic_vector(15 downto 0) := X"0030";
constant reg004_c: std_logic_vector(15 downto 0) := X"0040";
constant reg005_c: std_logic_vector(15 downto 0) := X"0050";
constant reg006_c: std_logic_vector(15 downto 0) := X"0060";
constant reg007_c: std_logic_vector(15 downto 0) := X"0070";
constant reg008_c: std_logic_vector(15 downto 0) := X"0080";
constant reg009_c: std_logic_vector(15 downto 0) := X"0090";
constant reg00A_c: std_logic_vector(15 downto 0) := X"00A0";
constant reg00B_c: std_logic_vector(15 downto 0) := X"00B0";
constant reg00C_c: std_logic_vector(15 downto 0) := X"00C0";
constant reg00D_c: std_logic_vector(15 downto 0) := X"00D0";
constant reg00E_c: std_logic_vector(15 downto 0) := X"00E0";
constant reg00F_c: std_logic_vector(15 downto 0) := X"00F0";

constant reg010_c: std_logic_vector(15 downto 0) := X"0100";
constant reg011_c: std_logic_vector(15 downto 0) := X"0110";
constant reg012_c: std_logic_vector(15 downto 0) := X"0120";
constant reg013_c: std_logic_vector(15 downto 0) := X"0130";
constant reg014_c: std_logic_vector(15 downto 0) := X"0140";
constant reg015_c: std_logic_vector(15 downto 0) := X"0150";
constant reg016_c: std_logic_vector(15 downto 0) := X"0160";
constant reg017_c: std_logic_vector(15 downto 0) := X"0170";
constant reg018_c: std_logic_vector(15 downto 0) := X"0180";
constant reg019_c: std_logic_vector(15 downto 0) := X"0190";
constant reg01A_c: std_logic_vector(15 downto 0) := X"01A0";
constant reg01B_c: std_logic_vector(15 downto 0) := X"01B0";
constant reg01C_c: std_logic_vector(15 downto 0) := X"01C0";
constant reg01D_c: std_logic_vector(15 downto 0) := X"01D0";
constant reg01E_c: std_logic_vector(15 downto 0) := X"01E0";
constant reg01F_c: std_logic_vector(15 downto 0) := X"01F0";

constant reg020_c: std_logic_vector(15 downto 0) := X"0200";
constant reg021_c: std_logic_vector(15 downto 0) := X"0210";
constant reg022_c: std_logic_vector(15 downto 0) := X"0220";
constant reg023_c: std_logic_vector(15 downto 0) := X"0230";
constant reg024_c: std_logic_vector(15 downto 0) := X"0240";
constant reg025_c: std_logic_vector(15 downto 0) := X"0250";
constant reg026_c: std_logic_vector(15 downto 0) := X"0260";
constant reg027_c: std_logic_vector(15 downto 0) := X"0270";
constant reg028_c: std_logic_vector(15 downto 0) := X"0280";
constant reg029_c: std_logic_vector(15 downto 0) := X"0290";
constant reg02A_c: std_logic_vector(15 downto 0) := X"02A0";
constant reg02B_c: std_logic_vector(15 downto 0) := X"02B0";
constant reg02C_c: std_logic_vector(15 downto 0) := X"02C0";
constant reg02D_c: std_logic_vector(15 downto 0) := X"02D0";
constant reg02E_c: std_logic_vector(15 downto 0) := X"02E0";
constant reg02F_c: std_logic_vector(15 downto 0) := X"02F0";

constant reg030_c: std_logic_vector(15 downto 0) := X"0300";
constant reg031_c: std_logic_vector(15 downto 0) := X"0310";
constant reg032_c: std_logic_vector(15 downto 0) := X"0320";
constant reg033_c: std_logic_vector(15 downto 0) := X"0330";
constant reg034_c: std_logic_vector(15 downto 0) := X"0340";
constant reg035_c: std_logic_vector(15 downto 0) := X"0350";
constant reg036_c: std_logic_vector(15 downto 0) := X"0360";
constant reg037_c: std_logic_vector(15 downto 0) := X"0370";
constant reg038_c: std_logic_vector(15 downto 0) := X"0380";
constant reg039_c: std_logic_vector(15 downto 0) := X"0390";
constant reg03A_c: std_logic_vector(15 downto 0) := X"03A0";
constant reg03B_c: std_logic_vector(15 downto 0) := X"03B0";
constant reg03C_c: std_logic_vector(15 downto 0) := X"03C0";
constant reg03D_c: std_logic_vector(15 downto 0) := X"03D0";
constant reg03E_c: std_logic_vector(15 downto 0) := X"03E0";
constant reg03F_c: std_logic_vector(15 downto 0) := X"03F0";

constant reg040_c: std_logic_vector(15 downto 0) := X"0400";
constant reg041_c: std_logic_vector(15 downto 0) := X"0410";
constant reg042_c: std_logic_vector(15 downto 0) := X"0420";
constant reg043_c: std_logic_vector(15 downto 0) := X"0430";
constant reg044_c: std_logic_vector(15 downto 0) := X"0440";
constant reg045_c: std_logic_vector(15 downto 0) := X"0450";
constant reg046_c: std_logic_vector(15 downto 0) := X"0460";
constant reg047_c: std_logic_vector(15 downto 0) := X"0470";
constant reg048_c: std_logic_vector(15 downto 0) := X"0480";
constant reg049_c: std_logic_vector(15 downto 0) := X"0490";
constant reg04A_c: std_logic_vector(15 downto 0) := X"04A0";
constant reg04B_c: std_logic_vector(15 downto 0) := X"04B0";
constant reg04C_c: std_logic_vector(15 downto 0) := X"04C0";
constant reg04D_c: std_logic_vector(15 downto 0) := X"04D0";
constant reg04E_c: std_logic_vector(15 downto 0) := X"04E0";
constant reg04F_c: std_logic_vector(15 downto 0) := X"04F0";

constant reg050_c: std_logic_vector(15 downto 0) := X"0500";
constant reg051_c: std_logic_vector(15 downto 0) := X"0510";
constant reg052_c: std_logic_vector(15 downto 0) := X"0520";
constant reg053_c: std_logic_vector(15 downto 0) := X"0530";
constant reg054_c: std_logic_vector(15 downto 0) := X"0540";
constant reg055_c: std_logic_vector(15 downto 0) := X"0550";
constant reg056_c: std_logic_vector(15 downto 0) := X"0560";
constant reg057_c: std_logic_vector(15 downto 0) := X"0570";
constant reg058_c: std_logic_vector(15 downto 0) := X"0580";
constant reg059_c: std_logic_vector(15 downto 0) := X"0590";
constant reg05A_c: std_logic_vector(15 downto 0) := X"05A0";
constant reg05B_c: std_logic_vector(15 downto 0) := X"05B0";
constant reg05C_c: std_logic_vector(15 downto 0) := X"05C0";
constant reg05D_c: std_logic_vector(15 downto 0) := X"05D0";
constant reg05E_c: std_logic_vector(15 downto 0) := X"05E0";
constant reg05F_c: std_logic_vector(15 downto 0) := X"05F0";

constant reg060_c: std_logic_vector(15 downto 0) := X"0600";
constant reg061_c: std_logic_vector(15 downto 0) := X"0610";
constant reg062_c: std_logic_vector(15 downto 0) := X"0620";
constant reg063_c: std_logic_vector(15 downto 0) := X"0630";
constant reg064_c: std_logic_vector(15 downto 0) := X"0640";
constant reg065_c: std_logic_vector(15 downto 0) := X"0650";
constant reg066_c: std_logic_vector(15 downto 0) := X"0660";
constant reg067_c: std_logic_vector(15 downto 0) := X"0670";
constant reg068_c: std_logic_vector(15 downto 0) := X"0680";
constant reg069_c: std_logic_vector(15 downto 0) := X"0690";
constant reg06A_c: std_logic_vector(15 downto 0) := X"06A0";
constant reg06B_c: std_logic_vector(15 downto 0) := X"06B0";
constant reg06C_c: std_logic_vector(15 downto 0) := X"06C0";
constant reg06D_c: std_logic_vector(15 downto 0) := X"06D0";
constant reg06E_c: std_logic_vector(15 downto 0) := X"06E0";
constant reg06F_c: std_logic_vector(15 downto 0) := X"06F0";

constant reg070_c: std_logic_vector(15 downto 0) := X"0700";
constant reg071_c: std_logic_vector(15 downto 0) := X"0710";
constant reg072_c: std_logic_vector(15 downto 0) := X"0720";
constant reg073_c: std_logic_vector(15 downto 0) := X"0730";
constant reg074_c: std_logic_vector(15 downto 0) := X"0740";
constant reg075_c: std_logic_vector(15 downto 0) := X"0750";
constant reg076_c: std_logic_vector(15 downto 0) := X"0760";
constant reg077_c: std_logic_vector(15 downto 0) := X"0770";
constant reg078_c: std_logic_vector(15 downto 0) := X"0780";
constant reg079_c: std_logic_vector(15 downto 0) := X"0790";
constant reg07A_c: std_logic_vector(15 downto 0) := X"07A0";
constant reg07B_c: std_logic_vector(15 downto 0) := X"07B0";
constant reg07C_c: std_logic_vector(15 downto 0) := X"07C0";
constant reg07D_c: std_logic_vector(15 downto 0) := X"07D0";
constant reg07E_c: std_logic_vector(15 downto 0) := X"07E0";
constant reg07F_c: std_logic_vector(15 downto 0) := X"07F0";

constant reg080_c: std_logic_vector(15 downto 0) := X"0800";
constant reg081_c: std_logic_vector(15 downto 0) := X"0810";
constant reg082_c: std_logic_vector(15 downto 0) := X"0820";
constant reg083_c: std_logic_vector(15 downto 0) := X"0830";
constant reg084_c: std_logic_vector(15 downto 0) := X"0840";
constant reg085_c: std_logic_vector(15 downto 0) := X"0850";
constant reg086_c: std_logic_vector(15 downto 0) := X"0860";
constant reg087_c: std_logic_vector(15 downto 0) := X"0870";
constant reg088_c: std_logic_vector(15 downto 0) := X"0880";
constant reg089_c: std_logic_vector(15 downto 0) := X"0890";
constant reg08A_c: std_logic_vector(15 downto 0) := X"08A0";
constant reg08B_c: std_logic_vector(15 downto 0) := X"08B0";
constant reg08C_c: std_logic_vector(15 downto 0) := X"08C0";
constant reg08D_c: std_logic_vector(15 downto 0) := X"08D0";
constant reg08E_c: std_logic_vector(15 downto 0) := X"08E0";
constant reg08F_c: std_logic_vector(15 downto 0) := X"08F0";

constant reg090_c: std_logic_vector(15 downto 0) := X"0900";
constant reg091_c: std_logic_vector(15 downto 0) := X"0910";
constant reg092_c: std_logic_vector(15 downto 0) := X"0920";
constant reg093_c: std_logic_vector(15 downto 0) := X"0930";
constant reg094_c: std_logic_vector(15 downto 0) := X"0940";
constant reg095_c: std_logic_vector(15 downto 0) := X"0950";
constant reg096_c: std_logic_vector(15 downto 0) := X"0960";
constant reg097_c: std_logic_vector(15 downto 0) := X"0970";
constant reg098_c: std_logic_vector(15 downto 0) := X"0980";
constant reg099_c: std_logic_vector(15 downto 0) := X"0990";
constant reg09A_c: std_logic_vector(15 downto 0) := X"09A0";
constant reg09B_c: std_logic_vector(15 downto 0) := X"09B0";
constant reg09C_c: std_logic_vector(15 downto 0) := X"09C0";
constant reg09D_c: std_logic_vector(15 downto 0) := X"09D0";
constant reg09E_c: std_logic_vector(15 downto 0) := X"09E0";
constant reg09F_c: std_logic_vector(15 downto 0) := X"09F0";

constant reg0A0_c: std_logic_vector(15 downto 0) := X"0A00";
constant reg0A1_c: std_logic_vector(15 downto 0) := X"0A10";
constant reg0A2_c: std_logic_vector(15 downto 0) := X"0A20";
constant reg0A3_c: std_logic_vector(15 downto 0) := X"0A30";
constant reg0A4_c: std_logic_vector(15 downto 0) := X"0A40";
constant reg0A5_c: std_logic_vector(15 downto 0) := X"0A50";
constant reg0A6_c: std_logic_vector(15 downto 0) := X"0A60";
constant reg0A7_c: std_logic_vector(15 downto 0) := X"0A70";
constant reg0A8_c: std_logic_vector(15 downto 0) := X"0A80";
constant reg0A9_c: std_logic_vector(15 downto 0) := X"0A90";
constant reg0AA_c: std_logic_vector(15 downto 0) := X"0AA0";
constant reg0AB_c: std_logic_vector(15 downto 0) := X"0AB0";
constant reg0AC_c: std_logic_vector(15 downto 0) := X"0AC0";
constant reg0AD_c: std_logic_vector(15 downto 0) := X"0AD0";
constant reg0AE_c: std_logic_vector(15 downto 0) := X"0AE0";
constant reg0AF_c: std_logic_vector(15 downto 0) := X"0AF0";

constant reg0B0_c: std_logic_vector(15 downto 0) := X"0B00";
constant reg0B1_c: std_logic_vector(15 downto 0) := X"0B10";
constant reg0B2_c: std_logic_vector(15 downto 0) := X"0B20";
constant reg0B3_c: std_logic_vector(15 downto 0) := X"0B30";
constant reg0B4_c: std_logic_vector(15 downto 0) := X"0B40";
constant reg0B5_c: std_logic_vector(15 downto 0) := X"0B50";
constant reg0B6_c: std_logic_vector(15 downto 0) := X"0B60";
constant reg0B7_c: std_logic_vector(15 downto 0) := X"0B70";
constant reg0B8_c: std_logic_vector(15 downto 0) := X"0B80";
constant reg0B9_c: std_logic_vector(15 downto 0) := X"0B90";
constant reg0BA_c: std_logic_vector(15 downto 0) := X"0BA0";
constant reg0BB_c: std_logic_vector(15 downto 0) := X"0BB0";
constant reg0BC_c: std_logic_vector(15 downto 0) := X"0BC0";
constant reg0BD_c: std_logic_vector(15 downto 0) := X"0BD0";
constant reg0BE_c: std_logic_vector(15 downto 0) := X"0BE0";
constant reg0BF_c: std_logic_vector(15 downto 0) := X"0BF0";

constant reg0C0_c: std_logic_vector(15 downto 0) := X"0C00";
constant reg0C1_c: std_logic_vector(15 downto 0) := X"0C10";
constant reg0C2_c: std_logic_vector(15 downto 0) := X"0C20";
constant reg0C3_c: std_logic_vector(15 downto 0) := X"0C30";
constant reg0C4_c: std_logic_vector(15 downto 0) := X"0C40";
constant reg0C5_c: std_logic_vector(15 downto 0) := X"0C50";
constant reg0C6_c: std_logic_vector(15 downto 0) := X"0C60";
constant reg0C7_c: std_logic_vector(15 downto 0) := X"0C70";
constant reg0C8_c: std_logic_vector(15 downto 0) := X"0C80";
constant reg0C9_c: std_logic_vector(15 downto 0) := X"0C90";
constant reg0CA_c: std_logic_vector(15 downto 0) := X"0CA0";
constant reg0CB_c: std_logic_vector(15 downto 0) := X"0CB0";
constant reg0CC_c: std_logic_vector(15 downto 0) := X"0CC0";
constant reg0CD_c: std_logic_vector(15 downto 0) := X"0CD0";
constant reg0CE_c: std_logic_vector(15 downto 0) := X"0CE0";
constant reg0CF_c: std_logic_vector(15 downto 0) := X"0CF0";

constant reg0D0_c: std_logic_vector(15 downto 0) := X"0D00";
constant reg0D1_c: std_logic_vector(15 downto 0) := X"0D10";
constant reg0D2_c: std_logic_vector(15 downto 0) := X"0D20";
constant reg0D3_c: std_logic_vector(15 downto 0) := X"0D30";
constant reg0D4_c: std_logic_vector(15 downto 0) := X"0D40";
constant reg0D5_c: std_logic_vector(15 downto 0) := X"0D50";
constant reg0D6_c: std_logic_vector(15 downto 0) := X"0D60";
constant reg0D7_c: std_logic_vector(15 downto 0) := X"0D70";
constant reg0D8_c: std_logic_vector(15 downto 0) := X"0D80";
constant reg0D9_c: std_logic_vector(15 downto 0) := X"0D90";
constant reg0DA_c: std_logic_vector(15 downto 0) := X"0DA0";
constant reg0DB_c: std_logic_vector(15 downto 0) := X"0DB0";
constant reg0DC_c: std_logic_vector(15 downto 0) := X"0DC0";
constant reg0DD_c: std_logic_vector(15 downto 0) := X"0DD0";
constant reg0DE_c: std_logic_vector(15 downto 0) := X"0DE0";
constant reg0DF_c: std_logic_vector(15 downto 0) := X"0DF0";

constant reg0E0_c: std_logic_vector(15 downto 0) := X"0E00";
constant reg0E1_c: std_logic_vector(15 downto 0) := X"0E10";
constant reg0E2_c: std_logic_vector(15 downto 0) := X"0E20";
constant reg0E3_c: std_logic_vector(15 downto 0) := X"0E30";
constant reg0E4_c: std_logic_vector(15 downto 0) := X"0E40";
constant reg0E5_c: std_logic_vector(15 downto 0) := X"0E50";
constant reg0E6_c: std_logic_vector(15 downto 0) := X"0E60";
constant reg0E7_c: std_logic_vector(15 downto 0) := X"0E70";
constant reg0E8_c: std_logic_vector(15 downto 0) := X"0E80";
constant reg0E9_c: std_logic_vector(15 downto 0) := X"0E90";
constant reg0EA_c: std_logic_vector(15 downto 0) := X"0EA0";
constant reg0EB_c: std_logic_vector(15 downto 0) := X"0EB0";
constant reg0EC_c: std_logic_vector(15 downto 0) := X"0EC0";
constant reg0ED_c: std_logic_vector(15 downto 0) := X"0ED0";
constant reg0EE_c: std_logic_vector(15 downto 0) := X"0EE0";
constant reg0EF_c: std_logic_vector(15 downto 0) := X"0EF0";

constant reg0F0_c: std_logic_vector(15 downto 0) := X"0F00";
constant reg0F1_c: std_logic_vector(15 downto 0) := X"0F10";
constant reg0F2_c: std_logic_vector(15 downto 0) := X"0F20";
constant reg0F3_c: std_logic_vector(15 downto 0) := X"0F30";
constant reg0F4_c: std_logic_vector(15 downto 0) := X"0F40";
constant reg0F5_c: std_logic_vector(15 downto 0) := X"0F50";
constant reg0F6_c: std_logic_vector(15 downto 0) := X"0F60";
constant reg0F7_c: std_logic_vector(15 downto 0) := X"0F70";
constant reg0F8_c: std_logic_vector(15 downto 0) := X"0F80";
constant reg0F9_c: std_logic_vector(15 downto 0) := X"0F90";
constant reg0FA_c: std_logic_vector(15 downto 0) := X"0FA0";
constant reg0FB_c: std_logic_vector(15 downto 0) := X"0FB0";
constant reg0FC_c: std_logic_vector(15 downto 0) := X"0FC0";
constant reg0FD_c: std_logic_vector(15 downto 0) := X"0FD0";
constant reg0FE_c: std_logic_vector(15 downto 0) := X"0FE0";
constant reg0FF_c: std_logic_vector(15 downto 0) := X"0FF0";


 constant init_val_c: std_logic_vector(256*16-1 downto 0) :=
reg0FF_c & reg0FE_c & reg0FD_c & reg0FC_c & reg0FB_c & reg0FA_c & reg0F9_c & reg0F8_c & reg0F7_c & reg0F6_c & reg0F5_c & reg0F4_c & reg0F3_c & reg0F2_c & reg0F1_c & reg0F0_c & 
reg0EF_c & reg0EE_c & reg0ED_c & reg0EC_c & reg0EB_c & reg0EA_c & reg0E9_c & reg0E8_c & reg0E7_c & reg0E6_c & reg0E5_c & reg0E4_c & reg0E3_c & reg0E2_c & reg0E1_c & reg0E0_c & 
reg0DF_c & reg0DE_c & reg0DD_c & reg0DC_c & reg0DB_c & reg0DA_c & reg0D9_c & reg0D8_c & reg0D7_c & reg0D6_c & reg0D5_c & reg0D4_c & reg0D3_c & reg0D2_c & reg0D1_c & reg0D0_c & 
reg0CF_c & reg0CE_c & reg0CD_c & reg0CC_c & reg0CB_c & reg0CA_c & reg0C9_c & reg0C8_c & reg0C7_c & reg0C6_c & reg0C5_c & reg0C4_c & reg0C3_c & reg0C2_c & reg0C1_c & reg0C0_c & 
reg0BF_c & reg0BE_c & reg0BD_c & reg0BC_c & reg0BB_c & reg0BA_c & reg0B9_c & reg0B8_c & reg0B7_c & reg0B6_c & reg0B5_c & reg0B4_c & reg0B3_c & reg0B2_c & reg0B1_c & reg0B0_c & 
reg0AF_c & reg0AE_c & reg0AD_c & reg0AC_c & reg0AB_c & reg0AA_c & reg0A9_c & reg0A8_c & reg0A7_c & reg0A6_c & reg0A5_c & reg0A4_c & reg0A3_c & reg0A2_c & reg0A1_c & reg0A0_c & 
reg09F_c & reg09E_c & reg09D_c & reg09C_c & reg09B_c & reg09A_c & reg099_c & reg098_c & reg097_c & reg096_c & reg095_c & reg094_c & reg093_c & reg092_c & reg091_c & reg090_c & 
reg08F_c & reg08E_c & reg08D_c & reg08C_c & reg08B_c & reg08A_c & reg089_c & reg088_c & reg087_c & reg086_c & reg085_c & reg084_c & reg083_c & reg082_c & reg081_c & reg080_c & 
reg07F_c & reg07E_c & reg07D_c & reg07C_c & reg07B_c & reg07A_c & reg079_c & reg078_c & reg077_c & reg076_c & reg075_c & reg074_c & reg073_c & reg072_c & reg071_c & reg070_c & 
reg06F_c & reg06E_c & reg06D_c & reg06C_c & reg06B_c & reg06A_c & reg069_c & reg068_c & reg067_c & reg066_c & reg065_c & reg064_c & reg063_c & reg062_c & reg061_c & reg060_c & 
reg05F_c & reg05E_c & reg05D_c & reg05C_c & reg05B_c & reg05A_c & reg059_c & reg058_c & reg057_c & reg056_c & reg055_c & reg054_c & reg053_c & reg052_c & reg051_c & reg050_c & 
reg04F_c & reg04E_c & reg04D_c & reg04C_c & reg04B_c & reg04A_c & reg049_c & reg048_c & reg047_c & reg046_c & reg045_c & reg044_c & reg043_c & reg042_c & reg041_c & reg040_c & 
reg03F_c & reg03E_c & reg03D_c & reg03C_c & reg03B_c & reg03A_c & reg039_c & reg038_c & reg037_c & reg036_c & reg035_c & reg034_c & reg033_c & reg032_c & reg031_c & reg030_c & 
reg02F_c & reg02E_c & reg02D_c & reg02C_c & reg02B_c & reg02A_c & reg029_c & reg028_c & reg027_c & reg026_c & reg025_c & reg024_c & reg023_c & reg022_c & reg021_c & reg020_c & 
reg01F_c & reg01E_c & reg01D_c & reg01C_c & reg01B_c & reg01A_c & reg019_c & reg018_c & reg017_c & reg016_c & reg015_c & reg014_c & reg013_c & reg012_c & reg011_c & reg010_c & 
reg00F_c & reg00E_c & reg00D_c & reg00C_c & reg00B_c & reg00A_c & reg009_c & reg008_c & reg007_c & reg006_c & reg005_c & reg004_c & reg003_c & reg002_c & reg001_c & reg000_c;

constant init_val32_c: std_logic_vector(256*32-1 downto 0) :=
reg0FF_c & x"0000" & reg0FE_c & x"0000" & reg0FD_c & x"0000" & reg0FC_c & x"0000" & reg0FB_c & x"0000" & reg0FA_c & x"0000" & reg0F9_c & x"0000" & reg0F8_c & x"0000" & 
reg0F7_c & x"0000" & reg0F6_c & x"0000" & reg0F5_c & x"0000" & reg0F4_c & x"0000" & reg0F3_c & x"0000" & reg0F2_c & x"0000" & reg0F1_c & x"0000" & reg0F0_c & x"0000" & 
reg0EF_c & x"0000" & reg0EE_c & x"0000" & reg0ED_c & x"0000" & reg0EC_c & x"0000" & reg0EB_c & x"0000" & reg0EA_c & x"0000" & reg0E9_c & x"0000" & reg0E8_c & x"0000" & 
reg0E7_c & x"0000" & reg0E6_c & x"0000" & reg0E5_c & x"0000" & reg0E4_c & x"0000" & reg0E3_c & x"0000" & reg0E2_c & x"0000" & reg0E1_c & x"0000" & reg0E0_c & x"0000" & 
reg0DF_c & x"0000" & reg0DE_c & x"0000" & reg0DD_c & x"0000" & reg0DC_c & x"0000" & reg0DB_c & x"0000" & reg0DA_c & x"0000" & reg0D9_c & x"0000" & reg0D8_c & x"0000" & 
reg0D7_c & x"0000" & reg0D6_c & x"0000" & reg0D5_c & x"0000" & reg0D4_c & x"0000" & reg0D3_c & x"0000" & reg0D2_c & x"0000" & reg0D1_c & x"0000" & reg0D0_c & x"0000" & 
reg0CF_c & x"0000" & reg0CE_c & x"0000" & reg0CD_c & x"0000" & reg0CC_c & x"0000" & reg0CB_c & x"0000" & reg0CA_c & x"0000" & reg0C9_c & x"0000" & reg0C8_c & x"0000" & 
reg0C7_c & x"0000" & reg0C6_c & x"0000" & reg0C5_c & x"0000" & reg0C4_c & x"0000" & reg0C3_c & x"0000" & reg0C2_c & x"0000" & reg0C1_c & x"0000" & reg0C0_c & x"0000" & 
reg0BF_c & x"0000" & reg0BE_c & x"0000" & reg0BD_c & x"0000" & reg0BC_c & x"0000" & reg0BB_c & x"0000" & reg0BA_c & x"0000" & reg0B9_c & x"0000" & reg0B8_c & x"0000" & 
reg0B7_c & x"0000" & reg0B6_c & x"0000" & reg0B5_c & x"0000" & reg0B4_c & x"0000" & reg0B3_c & x"0000" & reg0B2_c & x"0000" & reg0B1_c & x"0000" & reg0B0_c & x"0000" & 
reg0AF_c & x"0000" & reg0AE_c & x"0000" & reg0AD_c & x"0000" & reg0AC_c & x"0000" & reg0AB_c & x"0000" & reg0AA_c & x"0000" & reg0A9_c & x"0000" & reg0A8_c & x"0000" & 
reg0A7_c & x"0000" & reg0A6_c & x"0000" & reg0A5_c & x"0000" & reg0A4_c & x"0000" & reg0A3_c & x"0000" & reg0A2_c & x"0000" & reg0A1_c & x"0000" & reg0A0_c & x"0000" & 
reg09F_c & x"0000" & reg09E_c & x"0000" & reg09D_c & x"0000" & reg09C_c & x"0000" & reg09B_c & x"0000" & reg09A_c & x"0000" & reg099_c & x"0000" & reg098_c & x"0000" & 
reg097_c & x"0000" & reg096_c & x"0000" & reg095_c & x"0000" & reg094_c & x"0000" & reg093_c & x"0000" & reg092_c & x"0000" & reg091_c & x"0000" & reg090_c & x"0000" & 
reg08F_c & x"0000" & reg08E_c & x"0000" & reg08D_c & x"0000" & reg08C_c & x"0000" & reg08B_c & x"0000" & reg08A_c & x"0000" & reg089_c & x"0000" & reg088_c & x"0000" & 
reg087_c & x"0000" & reg086_c & x"0000" & reg085_c & x"0000" & reg084_c & x"0000" & reg083_c & x"0000" & reg082_c & x"0000" & reg081_c & x"0000" & reg080_c & x"0000" & 
reg07F_c & x"0000" & reg07E_c & x"0000" & reg07D_c & x"0000" & reg07C_c & x"0000" & reg07B_c & x"0000" & reg07A_c & x"0000" & reg079_c & x"0000" & reg078_c & x"0000" & 
reg077_c & x"0000" & reg076_c & x"0000" & reg075_c & x"0000" & reg074_c & x"0000" & reg073_c & x"0000" & reg072_c & x"0000" & reg071_c & x"0000" & reg070_c & x"0000" & 
reg06F_c & x"0000" & reg06E_c & x"0000" & reg06D_c & x"0000" & reg06C_c & x"0000" & reg06B_c & x"0000" & reg06A_c & x"0000" & reg069_c & x"0000" & reg068_c & x"0000" & 
reg067_c & x"0000" & reg066_c & x"0000" & reg065_c & x"0000" & reg064_c & x"0000" & reg063_c & x"0000" & reg062_c & x"0000" & reg061_c & x"0000" & reg060_c & x"0000" & 
reg05F_c & x"0000" & reg05E_c & x"0000" & reg05D_c & x"0000" & reg05C_c & x"0000" & reg05B_c & x"0000" & reg05A_c & x"0000" & reg059_c & x"0000" & reg058_c & x"0000" & 
reg057_c & x"0000" & reg056_c & x"0000" & reg055_c & x"0000" & reg054_c & x"0000" & reg053_c & x"0000" & reg052_c & x"0000" & reg051_c & x"0000" & reg050_c & x"0000" & 
reg04F_c & x"0000" & reg04E_c & x"0000" & reg04D_c & x"0000" & reg04C_c & x"0000" & reg04B_c & x"0000" & reg04A_c & x"0000" & reg049_c & x"0000" & reg048_c & x"0000" & 
reg047_c & x"0000" & reg046_c & x"0000" & reg045_c & x"0000" & reg044_c & x"0000" & reg043_c & x"0000" & reg042_c & x"0000" & reg041_c & x"0000" & reg040_c & x"0000" & 
reg03F_c & x"0000" & reg03E_c & x"0000" & reg03D_c & x"0000" & reg03C_c & x"0000" & reg03B_c & x"0000" & reg03A_c & x"0000" & reg039_c & x"0000" & reg038_c & x"0000" & 
reg037_c & x"0000" & reg036_c & x"0000" & reg035_c & x"0000" & reg034_c & x"0000" & reg033_c & x"0000" & reg032_c & x"0000" & reg031_c & x"0000" & reg030_c & x"0000" & 
reg02F_c & x"0000" & reg02E_c & x"0000" & reg02D_c & x"0000" & reg02C_c & x"0000" & reg02B_c & x"0000" & reg02A_c & x"0000" & reg029_c & x"0000" & reg028_c & x"0000" & 
reg027_c & x"0000" & reg026_c & x"0000" & reg025_c & x"0000" & reg024_c & x"0000" & reg023_c & x"0000" & reg022_c & x"0000" & reg021_c & x"0000" & reg020_c & x"0000" & 
reg01F_c & x"0000" & reg01E_c & x"0000" & reg01D_c & x"0000" & reg01C_c & x"0000" & reg01B_c & x"0000" & reg01A_c & x"0000" & reg019_c & x"0000" & reg018_c & x"0000" & 
reg017_c & x"0000" & reg016_c & x"0000" & reg015_c & x"0000" & reg014_c & x"0000" & reg013_c & x"0000" & reg012_c & x"0000" & reg011_c & x"0000" & reg010_c & x"0000" & 
reg00F_c & x"0000" & reg00E_c & x"0000" & reg00D_c & x"0000" & reg00C_c & x"0000" & reg00B_c & x"0000" & reg00A_c & x"0000" & reg009_c & x"0000" & reg008_c & x"0000" & 
reg007_c & x"0000" & reg006_c & x"0000" & reg005_c & x"0000" & reg004_c & x"0000" & reg003_c & x"0000" & reg002_c & x"0000" & reg001_c & x"0000" & reg000_c & x"0000";

  -------------------------------------------------------------------------------------
  -------multimaster bus definitions---------------------------------------------------
  -------------------------------------------------------------------------------------
  type mbus_o_t is record
    addr: std_logic_vector(15 downto 0);
    wdata: std_logic_vector(15 downto 0);
    we: std_logic;
    rd: std_logic;
    req: std_logic;
  end record;

  type mbus_i_t is record
    rdata: std_logic_vector(15 downto 0);
    ack: std_logic;
    grant: std_logic;
  end record;

  type sbus_i_t is record
    addr: std_logic_vector(15 downto 0);
    wdata: std_logic_vector(15 downto 0);
    we: std_logic;
    rd: std_logic;
  end record;

  type sbus_o_t is record
    rdata: std_logic_vector(15 downto 0);
    ack: std_logic;
  end record;

   constant mbus_null_c: mbus_o_t := ((others => '0'),(others => '0'),'0','0','0');
   constant sbus_null_c: sbus_o_t := ((others => '0'),'0');
   constant sbus_i_null_c: sbus_i_t := ((others => '0'),(others => '0'),'0','0');
   
---alternate bus definitions-------------------------------------
  type sbus32_o_t is record
    rdata: std_logic_vector(31 downto 0);
    ack: std_logic;
  end record;

  type sbus32_i_t is record
    addr: std_logic_vector(15 downto 0);
    wdata: std_logic_vector(31 downto 0);
    we: std_logic;
    rd: std_logic;
  end record;
  
    type mbus32_o_t is record
    addr: std_logic_vector(15 downto 0);
    wdata: std_logic_vector(31 downto 0);
    we: std_logic;
    rd: std_logic;
    req: std_logic;
  end record;

  type mbus32_i_t is record
    rdata: std_logic_vector(31 downto 0);
    ack: std_logic;
    grant: std_logic;
  end record;
  
  constant mbus_null32_c: mbus32_o_t := ((others => '0'),(others => '0'),'0','0','0');
   constant sbus_null32_c: sbus32_o_t := ((others => '0'),'0');


-------------------------------------------------------------------------------
-- Function and Procedure Declarations
-------------------------------------------------------------------------------
function log2(x : natural) return integer;

function twosc  (arg: std_logic_vector) return std_logic_vector;

function exps(arg: std_logic_vector; length:integer) return std_logic_vector;
function expu(arg: std_logic_vector; length:integer) return std_logic_vector;

function conv_real(arg: std_logic_vector) return real;

function conv_std_logic_vector(arg: real; size: integer) return std_logic_vector;
   
END busdef;
