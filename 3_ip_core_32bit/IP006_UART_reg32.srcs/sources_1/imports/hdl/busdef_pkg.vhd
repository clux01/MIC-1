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
constant reg000_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg001_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg002_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg003_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg004_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg005_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg006_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg007_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg008_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg009_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg00A_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg00B_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg00C_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg00D_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg00E_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg00F_c: std_logic_vector(31 downto 0) := X"00000000";

constant reg010_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg011_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg012_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg013_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg014_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg015_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg016_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg017_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg018_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg019_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg01A_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg01B_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg01C_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg01D_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg01E_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg01F_c: std_logic_vector(31 downto 0) := X"00000000";

constant reg020_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg021_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg022_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg023_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg024_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg025_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg026_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg027_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg028_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg029_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg02A_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg02B_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg02C_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg02D_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg02E_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg02F_c: std_logic_vector(31 downto 0) := X"00000000";

constant reg030_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg031_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg032_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg033_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg034_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg035_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg036_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg037_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg038_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg039_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg03A_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg03B_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg03C_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg03D_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg03E_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg03F_c: std_logic_vector(31 downto 0) := X"00000000";

constant reg040_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg041_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg042_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg043_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg044_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg045_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg046_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg047_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg048_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg049_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg04A_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg04B_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg04C_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg04D_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg04E_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg04F_c: std_logic_vector(31 downto 0) := X"00000000";

constant reg050_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg051_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg052_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg053_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg054_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg055_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg056_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg057_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg058_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg059_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg05A_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg05B_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg05C_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg05D_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg05E_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg05F_c: std_logic_vector(31 downto 0) := X"00000000";

constant reg060_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg061_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg062_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg063_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg064_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg065_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg066_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg067_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg068_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg069_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg06A_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg06B_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg06C_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg06D_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg06E_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg06F_c: std_logic_vector(31 downto 0) := X"00000000";

constant reg070_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg071_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg072_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg073_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg074_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg075_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg076_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg077_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg078_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg079_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg07A_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg07B_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg07C_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg07D_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg07E_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg07F_c: std_logic_vector(31 downto 0) := X"00000000";

constant reg080_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg081_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg082_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg083_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg084_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg085_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg086_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg087_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg088_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg089_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg08A_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg08B_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg08C_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg08D_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg08E_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg08F_c: std_logic_vector(31 downto 0) := X"00000000";

constant reg090_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg091_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg092_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg093_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg094_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg095_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg096_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg097_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg098_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg099_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg09A_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg09B_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg09C_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg09D_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg09E_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg09F_c: std_logic_vector(31 downto 0) := X"00000000";

constant reg0A0_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0A1_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0A2_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0A3_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0A4_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0A5_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0A6_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0A7_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0A8_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0A9_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0AA_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0AB_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0AC_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0AD_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0AE_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0AF_c: std_logic_vector(31 downto 0) := X"00000000";

constant reg0B0_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0B1_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0B2_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0B3_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0B4_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0B5_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0B6_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0B7_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0B8_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0B9_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0BA_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0BB_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0BC_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0BD_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0BE_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0BF_c: std_logic_vector(31 downto 0) := X"00000000";

constant reg0C0_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0C1_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0C2_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0C3_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0C4_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0C5_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0C6_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0C7_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0C8_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0C9_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0CA_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0CB_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0CC_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0CD_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0CE_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0CF_c: std_logic_vector(31 downto 0) := X"00000000";

constant reg0D0_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0D1_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0D2_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0D3_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0D4_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0D5_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0D6_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0D7_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0D8_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0D9_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0DA_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0DB_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0DC_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0DD_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0DE_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0DF_c: std_logic_vector(31 downto 0) := X"00000000";

constant reg0E0_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0E1_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0E2_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0E3_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0E4_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0E5_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0E6_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0E7_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0E8_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0E9_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0EA_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0EB_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0EC_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0ED_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0EE_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0EF_c: std_logic_vector(31 downto 0) := X"00000000";

constant reg0F0_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0F1_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0F2_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0F3_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0F4_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0F5_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0F6_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0F7_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0F8_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0F9_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0FA_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0FB_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0FC_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0FD_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0FE_c: std_logic_vector(31 downto 0) := X"00000000";
constant reg0FF_c: std_logic_vector(31 downto 0) := X"00000000";


constant init_val32_c: std_logic_vector(256*32-1 downto 0) :=
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
