SIM ?= icarus
TOPLEVEL_LANG ?= VERILOG
PROJECT_DIR :=$(shell pwd)
# Verilog source files
VERILOG_SOURCES := $(PROJECT_DIR)/dut.v
or:
        $(MAKE) sim MODULE=test TOPLEVEL=test
include $(shell cocotb-config --makefiles)/Makefile.sim
