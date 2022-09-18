# Makefile

# defaults
SIM ?= icarus
TOPLEVEL_LANG ?= verilog

VERILOG_SOURCES += $(PWD)/pdm_core.v
# use VHDL_SOURCES for VHDL files

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
TOPLEVEL = pdm_core

# MODULE is the basename of the Python test file
MODULE = pdm_core_tb

# Use COMPILE_ARGS to send module parameters or defines to vvp
# Eg uncomment this to dump waveforms
COMPILE_ARGS=-DCOCOTB_SIM_WAVEFORMS

# Verbosity of logging
export COCOTB_LOG_LEVEL=INFO

# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim