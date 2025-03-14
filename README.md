# VHDL and Verilog Implementations of Flip-Flops and RAM Modules

## Overview
This repository contains implementations and testbenches for various digital design components using VHDL and Verilog. The modules include:

1. **D Flip-Flop using JK Flip-Flop**
2. **Dual Port RAM**
3. **JK Flip-Flop**
4. **Memory Unit**
5. **Single Port RAM**

Each module is structured into separate folders with relevant source files and testbenches.

## Description

### [D Flip-Flop using JK Flip-Flop](https://github.com/HanumanSagarBathula7392/Memory_and_FlipFlops/tree/master/D_FlipFlop)
This module implements a D Flip-Flop using a JK Flip-Flop. The JK Flip-Flop is configured to behave as a D Flip-Flop by using the D input and its complement.

- **Files:**
  - [`DFF_JKFF.vhd`](https://github.com/HanumanSagarBathula7392/Memory_and_FlipFlops/blob/master/D_FlipFlop/DFF_JKFF.vhd) - Implementation of D Flip-Flop using a JK Flip-Flop.
  - [`DFF_JKFF_TB.vhd`](https://github.com/HanumanSagarBathula7392/Memory_and_FlipFlops/blob/master/D_FlipFlop/DFF_JKFF_TB.vhd) - Testbench for simulation.

### [Dual-Port RAM (DPRAM)](https://github.com/HanumanSagarBathula7392/Memory_and_FlipFlops/tree/master/Dual_Port_RAM)
A dual-port RAM that allows simultaneous read/write operations from two independent clock domains.

- **Files:**
  - [`DPRAM.vhd`](https://github.com/HanumanSagarBathula7392/Memory_and_FlipFlops/blob/master/Dual_Port_RAM/DPRAM.vhd) - Dual-Port RAM implementation.
  - [`DPRAM_TB.vhd`](https://github.com/HanumanSagarBathula7392/Memory_and_FlipFlops/blob/master/Dual_Port_RAM/DPRAM_SIM.vhd) - Testbench for verification.

### [JK Flip-Flop](https://github.com/HanumanSagarBathula7392/Memory_and_FlipFlops/tree/master/JK_FlipFlop)
Standard JK Flip-Flop implementation with set and reset functionalities.

- **Files:**
  - [`JK_FF.vhd`](https://github.com/HanumanSagarBathula7392/Memory_and_FlipFlops/blob/master/JK_FlipFlop/JK_FF.vhd) - JK Flip-Flop design.
  - [`JK_FF_TB.vhd`](https://github.com/HanumanSagarBathula7392/Memory_and_FlipFlops/blob/master/JK_FlipFlop/JK_FF_TB.vhd) - Testbench for testing different input conditions.

### [Memory Unit](https://github.com/HanumanSagarBathula7392/Memory_and_FlipFlops/tree/master/Memory_Unit)
A simple 32-register memory module written in Verilog. It supports read and write operations based on control signals.

- **Files:**
  - [`Memory.v`](https://github.com/HanumanSagarBathula7392/Memory_and_FlipFlops/blob/master/Memory_Unit/Memory.v) - Verilog implementation of the memory unit.
  - [`Memory_tb.v`](https://github.com/HanumanSagarBathula7392/Memory_and_FlipFlops/blob/master/Memory_Unit/Memory_tb.v) - Testbench to verify memory read and write functionality.

### [Single-Port RAM (SPRAM)](https://github.com/HanumanSagarBathula7392/Memory_and_FlipFlops/tree/master/Single_Port_RAM)
A simple single-port RAM module implemented in VHDL.

- **Files:**
  - [`SPRAM.vhd`](https://github.com/HanumanSagarBathula7392/Memory_and_FlipFlops/blob/master/Single_Port_RAM/SPRAM.vhd) - Single-Port RAM design.
  - [`SPRAM_TB.vhd`](https://github.com/HanumanSagarBathula7392/Memory_and_FlipFlops/blob/master/Single_Port_RAM/RAM_SIM.vhd) - Testbench for testing RAM read and write operations.

## Simulation and Testing
Each module includes a testbench to verify its functionality. To simulate the VHDL/Verilog modules, use **ModelSim** or **Xilinx Vivado**.

### Running VHDL Simulations
1. Open ModelSim or Vivado.
2. Create a New project and add required files.
3. Compile the design and testbench files.
4. Run the simulation and observe waveforms.


2. Alternatively, use ModelSim or Vivado.

## License
This project is open-source and available under the [**MIT License**](https://github.com/HanumanSagarBathula7392/HanumanSagarBathula7392/blob/main/LICENSE).

## Contributions
Contributions are welcome! Feel free to open issues and submit pull requests.

## Contact
For any queries, reach out via [GitHub issues](https://github.com/HanumanSagarBathula7392/Memory_and_FlipFlops/issues).

---
Happy Coding! 🚀

