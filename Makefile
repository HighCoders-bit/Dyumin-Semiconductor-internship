SIM ?= icarus
TOPLEVEL_LANG ?= VERILOG
PWD :=$(shell pwd)
export PYTHONPATH := $(PWD)/../model:$(PYTHONPATH)
# Verilog source files
VERILOG_SOURCES := $(PWD)/dut.v
du:
${MAKE}sim MODULE=test 
TOPLEVEL=dut
include $(shell cocotb-config --makefiles)/Makefile.sim
