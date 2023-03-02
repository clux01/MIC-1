vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/IP006_lib
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap IP006_lib questa_lib/msim/IP006_lib
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work IP006_lib  -93  \
"../../../ip/IP006_uart_reg32_0_1/IP006_lib/hdl/busdef_pkg.vhd" \
"../../../ip/IP006_uart_reg32_0_1/IP006_lib/hdl/arbiter10a_rtl1.vhd" \
"../../../ip/IP006_uart_reg32_0_1/IP006_lib/hdl/bus_bridge_32_fsm.vhd" \
"../../../ip/IP006_uart_reg32_0_1/IP006_lib/hdl/buscmd_b32_fsm.vhd" \
"../../../ip/IP006_uart_reg32_0_1/IP006_lib/hdl/busdef_pkg_body.vhd" \
"../../../ip/IP006_uart_reg32_0_1/IP006_lib/hdl/delay.vhd" \
"../../../ip/IP006_uart_reg32_0_1/IP006_lib/hdl/delay_e_vector.vhd" \
"../../../ip/IP006_uart_reg32_0_1/IP006_lib/hdl/delay_mbus32_struct.vhd" \
"../../../ip/IP006_uart_reg32_0_1/IP006_lib/hdl/delay_sbus32_struct.vhd" \
"../../../ip/IP006_uart_reg32_0_1/IP006_lib/hdl/register_array_b1.vhd" \
"../../../ip/IP006_uart_reg32_0_1/IP006_lib/hdl/syn2_vec.vhd" \
"../../../ip/IP006_uart_reg32_0_1/IP006_lib/hdl/uart_rx_fsm.vhd" \
"../../../ip/IP006_uart_reg32_0_1/IP006_lib/hdl/uart_tx_fsm.vhd" \
"../../../ip/IP006_uart_reg32_0_1/IP006_lib/hdl/uart_top_struct.vhd" \
"../../../ip/IP006_uart_reg32_0_1/IP006_lib/hdl/uart_bridge_32_struct.vhd" \
"../../../ip/IP006_uart_reg32_0_1/IP006_lib/hdl/ip006_uart_reg32_struct.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../ip/IP006_uart_reg32_0_1/sim/IP006_uart_reg32_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

