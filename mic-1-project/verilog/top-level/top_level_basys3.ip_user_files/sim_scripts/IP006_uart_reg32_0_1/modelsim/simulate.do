onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc "  -L xpm -L IP006_lib -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.IP006_uart_reg32_0 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {IP006_uart_reg32_0.udo}

run 1000ns

quit -force
