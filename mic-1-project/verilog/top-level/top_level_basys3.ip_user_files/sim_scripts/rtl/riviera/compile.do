vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic" "+incdir+../../../../clk_wiz_100_to_6MHz" \
"C:/Vivado/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  \
"C:/Vivado/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" "+incdir+../../../../clk_wiz_100_to_6MHz" \
"../../../../clk_wiz_100_to_6MHz/clk_wiz_100_to_6MHz_clk_wiz.v" \
"../../../../clk_wiz_100_to_6MHz/clk_wiz_100_to_6MHz.v" \

vlog -work xil_defaultlib \
"glbl.v"

