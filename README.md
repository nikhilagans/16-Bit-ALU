# 16-Bit-ALU

## Overview
This project implements a 16-bit Arithmetic Logic Unit (ALU) in SystemVerilog as part of a larger custom CPU design.

The ALU performs arithmetic, logical, and shift operations based on a 4-bit control signal. It also generates Negative, Zero, and Positive (NZP) condition codes from the result, which are used by the CPU's branch logic for conditional branching.

---

## Features
- 16-bit datapath
- Combinational RTL (`always_comb`)
- 4-bit ALU control
- Eight arithmetic, logical, and shift operations
- NZP (Negative, Zero, Positive) condition-code generation
- SystemVerilog simulation testbench

---

## Supported Operations
 - '0000' -> NOT A
 - '0001' -> AND
 - '0010' -> ADD
 - '0011' -> SUBTRACT
 - '0100' -> OR
 - '0101' -> XOR
 - '0110' -> SHIFT LEFT (A)
 - '0111' -> SHIFT RIGHT (A)

---

## Program Structure

src/
- ALU.sv

tb/ 
- ALU_tb.sv

---

## Example Simulation 

Example:

A: 5

B: 4

ADD: 9 

SUBTRACT: 1 

SHIFT LEFT: 10

---

## Simulation Waveform

The waveform below shows the ALU being tested across its supported
operations using different 3-bit opcode values.

![ALU Simulation Waveform](image/alu-waveform.png)

---

## Test Bench Results

The testbench verifies the expected output for each ALU operation.

![ALU Testbench Output](image/alu-testbench-output.png)
## Improvements
- Carry flag
- Overflow detection
- Parameterized ALU width
- FPGA implementation















