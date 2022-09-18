# User config
set script_dir [file dirname [file normalize [info script]]]


set ::env(DESIGN_NAME) "pdm_core"

set ::env(VERILOG_FILES) "$::env(DESIGN_DIR)/src/pdm_core.v"

set ::env(FP_PIN_ORDER_CFG) $::env(DESIGN_DIR)/pin_order.cfg

# clock
set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_NET) "pdm_core.clk"
set ::env(CLOCK_PERIOD) "10"

# absolute die size
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 200 200"
# Not used since we have absolute sizing but density about 5% more than util 
set ::env(FP_CORE_UTIL) 60
set ::env(PL_TARGET_DENSITY) 0.65
set ::env(PL_BASIC_PLACEMENT) {1}

# Hold min. margin
set ::env(PL_RESIZER_HOLD_SLACK_MARGIN) 0.8 
set ::env(GLB_RESIZER_HOLD_SLACK_MARGIN) 0.8

# ------ Advanced config ----- 

# Need to find a way to apply a different fanout check in STA compared to synth (because of antenna diode)
set ::env(SYNTH_MAX_FANOUT) 5
set ::env(SYNTH_BUFFERING) 1

# Could set to 1 for complex designs
set ::env(SYNTH_NO_FLAT) {0}

# don't use power rings or met5
# This is because this macro will be inserted in a top level (user_project_wrapper) 
# where the PDN is planned on metal 5. So, to avoid having shorts between routes
# in this macro and the top level metal 5 stripes, we have to restrict routes to metal4.  
set ::env(DESIGN_IS_CORE) 0
set ::env(RT_MAX_LAYER) {met4}

# Clock buffers on output ports, macro will be hand placed
set ::env(PL_RESIZER_BUFFER_OUTPUT_PORTS) 1

# allow use of specific sky130 cells
set ::env(SYNTH_READ_BLACKBOX_LIB) 1
# use alternative efabless decap cells to solve LI density issue
set ::env(DECAP_CELL) "\
    sky130_fd_sc_hd__decap_3 \
    sky130_fd_sc_hd__decap_4 \
    sky130_fd_sc_hd__decap_6 \
    sky130_fd_sc_hd__decap_8 \
    sky130_ef_sc_hd__decap_12"

# connect to first digital rails
set ::env(VDD_NETS) [list {vccd1}]
set ::env(GND_NETS) [list {vssd1}]

# save some time
set ::env(RUN_KLAYOUT_XOR) 0
set ::env(RUN_KLAYOUT_DRC) 0
set ::env(ROUTING_CORES) 4

set ::env(DIODE_INSERTION_STRATEGY) 4
# If you're going to use multiple power domains, then disable cvc run.
set ::env(RUN_CVC) 1
