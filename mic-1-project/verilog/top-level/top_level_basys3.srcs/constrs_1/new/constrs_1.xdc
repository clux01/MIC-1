set_property IOSTANDARD LVCMOS33 [get_ports LEDR]
set_property IOSTANDARD LVCMOS33 [get_ports LEDG]
set_property IOSTANDARD LVCMOS33 [get_ports BTN1]
set_property IOSTANDARD LVCMOS33 [get_ports BTN2]
set_property IOSTANDARD LVCMOS33 [get_ports BTN3]
set_property IOSTANDARD LVCMOS33 [get_ports BTN]
set_property IOSTANDARD LVCMOS33 [get_ports CLK]
set_property IOSTANDARD LVCMOS33 [get_ports LED1]
set_property IOSTANDARD LVCMOS33 [get_ports LED3]
set_property IOSTANDARD LVCMOS33 [get_ports LED2]
set_property IOSTANDARD LVCMOS33 [get_ports LED4]
set_property IOSTANDARD LVCMOS33 [get_ports LED5]
set_property PACKAGE_PIN L1 [get_ports LEDG]
set_property PACKAGE_PIN P1 [get_ports LEDR]
set_property PACKAGE_PIN U16 [get_ports LED5]
set_property PACKAGE_PIN E19 [get_ports LED4]
set_property PACKAGE_PIN U19 [get_ports LED3]
set_property PACKAGE_PIN V19 [get_ports LED2]
set_property PACKAGE_PIN W18 [get_ports LED1]
set_property PACKAGE_PIN W5 [get_ports CLK]
set_property PACKAGE_PIN U17 [get_ports BTN]
set_property PACKAGE_PIN T17 [get_ports BTN3]
set_property PACKAGE_PIN U18 [get_ports BTN2]
set_property PACKAGE_PIN W19 [get_ports BTN1]

set_property PACKAGE_PIN R2 [get_ports sel_uart]
set_property IOSTANDARD LVCMOS33 [get_ports sel_uart]

set_property PACKAGE_PIN A18 [get_ports RX_GUI]
set_property PACKAGE_PIN B18 [get_ports TX_GUI]
set_property PACKAGE_PIN T1 [get_ports SEL_GUI_UART]
set_property PACKAGE_PIN T18 [get_ports reset_n]
set_property IOSTANDARD LVCMOS33 [get_ports RX_GUI]
set_property IOSTANDARD LVCMOS33 [get_ports SEL_GUI_UART]
set_property IOSTANDARD LVCMOS33 [get_ports TX_GUI]
set_property IOSTANDARD LVCMOS33 [get_ports reset_n]

set_property IOSTANDARD LVCMOS33 [get_ports oHS]
set_property IOSTANDARD LVCMOS33 [get_ports oVS]
set_property IOSTANDARD LVCMOS33 [get_ports {oBlue[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oBlue[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oBlue[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oBlue[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oGreen[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oGreen[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oGreen[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oGreen[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oRed[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oRed[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oRed[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oRed[0]}]

set_property PACKAGE_PIN G19 [get_ports {oRed[0]}]
set_property PACKAGE_PIN H19 [get_ports {oRed[1]}]
set_property PACKAGE_PIN J19 [get_ports {oRed[2]}]
set_property PACKAGE_PIN N19 [get_ports {oRed[3]}]
set_property PACKAGE_PIN J17 [get_ports {oGreen[0]}]
set_property PACKAGE_PIN H17 [get_ports {oGreen[1]}]
set_property PACKAGE_PIN G17 [get_ports {oGreen[2]}]
set_property PACKAGE_PIN D17 [get_ports {oGreen[3]}]
set_property PACKAGE_PIN N18 [get_ports {oBlue[0]}]
set_property PACKAGE_PIN L18 [get_ports {oBlue[1]}]
set_property PACKAGE_PIN K18 [get_ports {oBlue[2]}]
set_property PACKAGE_PIN J18 [get_ports {oBlue[3]}]
set_property PACKAGE_PIN P19 [get_ports oHS]
set_property PACKAGE_PIN R19 [get_ports oVS]

set_property IOSTANDARD LVCMOS33 [get_ports RESETVGA]
set_property PACKAGE_PIN V16 [get_ports RESETVGA]
set_property IOSTANDARD LVCMOS33 [get_ports UPDATEVGA]
set_property PACKAGE_PIN V17 [get_ports UPDATEVGA]

set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]