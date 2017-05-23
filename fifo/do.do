cd C:/Users/valip_000/Desktop/fifo
# reading C:\modeltech64_10.1c\win64/../modelsim.ini
vcom -reportprogress 300 -work work C:/Users/valip_000/Desktop/fifo/FIFO.vhd
# Model Technology ModelSim SE-64 vcom 10.1c Compiler 2012.07 Jul 27 2012
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Loading package std_logic_arith
# -- Loading package STD_LOGIC_SIGNED
# -- Compiling entity FIFO
# -- Compiling architecture fo of FIFO
vcom -reportprogress 300 -work work C:/Users/valip_000/Desktop/fifo/tb.vhd
# Model Technology ModelSim SE-64 vcom 10.1c Compiler 2012.07 Jul 27 2012
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Compiling entity testbench
# -- Compiling architecture fi of testbench
vsim -gui -novopt work.testbench
# vsim -gui -novopt work.testbench 
# Loading std.standard
# Refreshing C:/Users/valip_000/Desktop/fifo/work.testbench(fi)
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.testbench(fi)
# Refreshing C:/Users/valip_000/Desktop/fifo/work.fifo(fo)
# Loading ieee.std_logic_arith(body)
# Loading ieee.std_logic_signed(body)
# Loading work.fifo(fo)
add wave -position insertpoint sim:/testbench/*
run
run
run
run
run
run
run
run


