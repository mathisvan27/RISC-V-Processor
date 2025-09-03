TOPLEVEL_LANG ?= verilog
VERILOG_SOURCES = $(PWD)/ALU.sv
TOPLEVEL = alu
MODULE = test   # name of my cocotb testbench

SIM = verilator

# Enable VCD waveform dump
EXTRA_ARGS += --trace

include $(shell cocotb-config --makefiles)/Makefile.sim