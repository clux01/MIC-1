-makelib xcelium_lib/xpm -sv \
  "C:/Vivado/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Vivado/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../clk_wiz_100_to_6MHz/clk_wiz_100_to_6MHz_clk_wiz.v" \
  "../../../../clk_wiz_100_to_6MHz/clk_wiz_100_to_6MHz.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

