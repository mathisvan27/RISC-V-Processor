import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock

@cocotb.test()
async def test_alu(dut):

    """TEST ALU ADDI"""


    cocotb.start_soon(Clock(dut.clk, 1, units = "us").start())

    #send a test

    dut.state = 2
    dut.rs1 = 24
    dut.imm12 = 10

    await Timer(1, units="ns")


    assert dut.rd.value == 14, f"NOT 19"

    print("14: PASS!")