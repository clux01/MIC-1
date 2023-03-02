onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc "  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.clk_wiz_100_to_6MHz xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {clk_wiz_100_to_6MHz.udo}

run 1000ns

quit -force
