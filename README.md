# fourbit_fulladder
 four bit Full Adder design and functional verification using Verilog HDL, Icarus Verilog, and GTKWave.
# 4-Bit Adder Using Verilog HDL

## Overview

This project implements a 4-bit binary adder using Verilog HDL. It adds two 4-bit numbers and an input carry, producing a 4-bit sum and a carry-out.

## Features

- Adds two 4-bit binary numbers.
- Supports carry input (`cin`).
- Produces a 4-bit sum (`s`).
- Generates a carry output (`cout`).
- Includes a testbench for functional simulation.

## Design Equation

`{cout, s} = a + b + cin`

## Inputs and Outputs

| Signal | Direction | Width  | Description          |
| ------ | --------- | ------ | -------------------- |
| a      | Input     | 4 bits | First binary number  |
| b      | Input     | 4 bits | Second binary number |
| cin    | Input     | 1 bit  | Input carry          |
| s      | Output    | 4 bits | Sum                  |
| cout   | Output    | 1 bit  | Carry-out            |

## Files

- `adder4bit.v` — Verilog design module.
- `adder4bit_tb.v` — Testbench for simulation.
- `README.md` — Project documentation.

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Visual Studio Code

## How to Simulate

Compile the design and testbench:

```bash
iverilog -o adder_sim adder4bit.v adder4bit_tb.v
```

Run the simulation:

```bash
vvp adder_sim
```

Open the waveform:

```bash
gtkwave wave.vcd
```

## Test Cases

The testbench checks:
## Test Cases

The testbench checks the following input combinations:
## Test Cases

The testbench checks the following input combinations:

- **Test 1:** A = 3, B = 1, Cin = 0 → Sum = 4, Cout = 0
- **Test 2:** A = 5, B = 7, Cin = 0 → Sum = 12, Cout = 0
- **Test 3:** A = 15, B = 1, Cin = 0 → Sum = 0, Cout = 1
- **Test 4:** A = 7, B = 4, Cin = 1 → Sum = 12, Cout = 0

**Note:** The sum is a 4-bit output. When the total is 16, the sum becomes 0 and the carry-out becomes 1.


**Note:** The sum is a 4-bit output, so when the total is 16, `cout = 1` and `sum = 0`.




## Learning Outcomes

- Understanding combinational logic.
- Learning Verilog continuous assignments.
- Understanding binary addition and carry propagation.
- Practicing simulation and waveform analysis.

## Author

Harsha

## Purpose

Educational project for learning digital design and building a foundation in VLSI.
