vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../ipstatic/VGA_0_2/src/VGA_clk_wiz_0_0" "+incdir+../../../../top_level_basys3.srcs/sources_1/ip/VGA_0_2/src/VGA_clk_wiz_0_0" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic/VGA_0_2/src/VGA_clk_wiz_0_0" "+incdir+../../../../top_level_basys3.srcs/sources_1/ip/VGA_0_2/src/VGA_clk_wiz_0_0" \
"../../../ip/VGA_0_2/src/VGA_clk_wiz_0_0/VGA_clk_wiz_0_0_clk_wiz.v" \
"../../../ip/VGA_0_2/src/VGA_clk_wiz_0_0/VGA_clk_wiz_0_0.v" \
"../../../ip/VGA_0_2/src/H_Counter.v" \
"../../../ip/VGA_0_2/src/V_Counter.v" \
"../../../ip/VGA_0_2/src/VGA_Timings.v" \
"../../../ip/VGA_0_2/sim/VGA_VGA_Timings_1_0.v" \
"../../../ip/VGA_0_2/src/VGA_Pattern.v" \
"../../../ip/VGA_0_2/sim/VGA_VGA_Pattern_1_0.v" \
"../../../ip/VGA_0_2/src/ScreenBufferMem.v" \
"../../../ip/VGA_0_2/sim/VGA_ScreenBufferMem_0_0.v" \
"../../../ip/VGA_0_2/src/DataToAddress.v" \
"../../../ip/VGA_0_2/sim/VGA_DataToAddress_0_0.v" \
"../../../ip/VGA_0_2/sim/VGA_DataToAddress_1_0.v" \
"../../../ip/VGA_0_2/sim/VGA_DataToAddress_2_0.v" \
"../../../ip/VGA_0_2/sim/VGA_DataToAddress_3_0.v" \
"../../../ip/VGA_0_2/sim/VGA_DataToAddress_4_0.v" \
"../../../ip/VGA_0_2/sim/VGA_DataToAddress_5_0.v" \
"../../../ip/VGA_0_2/sim/VGA_DataToAddress_6_0.v" \
"../../../ip/VGA_0_2/sim/VGA_DataToAddress_7_0.v" \
"../../../ip/VGA_0_2/sim/VGA_DataToAddress_8_0.v" \
"../../../ip/VGA_0_2/sim/VGA_DataToAddress_9_0.v" \
"../../../ip/VGA_0_2/src/AsciiCharsMem.v" \
"../../../ip/VGA_0_2/sim/VGA_AsciiCharsMem_0_0.v" \
"../../../ip/VGA_0_2/src/DataToAddress7bit.v" \
"../../../ip/VGA_0_2/sim/VGA_DataToAddress7bit_0_0.v" \
"../../../ip/VGA_0_2/src/num_capture_4bit.v" \
"../../../ip/VGA_0_2/sim/VGA_num_capture_4bit_0_1.v" \
"../../../ip/VGA_0_2/sim/VGA.v" \
"../../../ip/VGA_0_2/sim/VGA_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

