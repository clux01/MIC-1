vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../ipstatic" "+incdir+../../../../clk_wiz_100_to_6MHz" \
"C:/Vivado/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93  \
"C:/Vivado/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic" "+incdir+../../../../clk_wiz_100_to_6MHz" \
"../../../../clk_wiz_100_to_6MHz/clk_wiz_100_to_6MHz_clk_wiz.v" \
"../../../../clk_wiz_100_to_6MHz/clk_wiz_100_to_6MHz.v" \

vlog -work xil_defaultlib \
"glbl.v"

