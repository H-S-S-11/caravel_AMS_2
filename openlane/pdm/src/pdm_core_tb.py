import cocotb
from cocotb.triggers import Timer, FallingEdge
from cocotb.clock import Clock

import random

clock_period = 10
bitwidth = 8

async def reset_dut(reset, duration_ns, active_low=True):
    reset.value = 1-int(active_low)
    await Timer(duration_ns, units="ns")
    reset.value = int(active_low)
    reset._log.debug("Reset complete")

async def measure_pdm(dut, tclk, input_val, n_cycles=256, tolerance=1):

    dut._log.debug("Reset")
    await reset_dut(dut.reset_n, 2*tclk, active_low=True)
    
    dut.pdm_input.value = input_val
    dut._log.debug("Setting input to %s", input_val)
    await FallingEdge(dut.clk)

    count_ones = 0
    for n in range(0, n_cycles):
        await FallingEdge(dut.clk)
        count_ones += dut.pdm_out.value
    
    normalised_count = int(count_ones*(2**bitwidth)/n_cycles)
    error = abs(input_val-normalised_count)

    dut._log.info("count_ones=%s in %s cycles (normalised to %s), input=%s, errror=%s",
        count_ones, n_cycles, normalised_count, input_val, error)

    # If n_cycles isn't a neat multiple then allow +- 1 pulse
    assert (normalised_count<=input_val+tolerance \
        and normalised_count>=input_val-tolerance), \
        f"Input is {input_val} but  output was high for {count_ones} out of {n_cycles} cycles"

@cocotb.test()
async def testbench(dut):
    
    c = Clock(dut.clk, clock_period, "ns")
    await cocotb.start(c.start())

    write_en    = dut.write_en    
    write_en.value  = 1 

    for n in range(0, 100):
        await measure_pdm(dut, clock_period, n, n_cycles=256, tolerance=1)

    random.seed()
    for n in range(0, 100):
        await measure_pdm(dut, clock_period,
            random.randrange(2**bitwidth), n_cycles=random.randrange(20, 500),
            tolerance=5)    # Need a highher tolerance here because of the random number of cycles   

    #await Timer(25, units="ns")
    #dut._log.info("pdm_out is %s", dut.pdm_out.value)