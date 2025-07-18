# Clock Divider Circuit using Verilog HDL

This repository contains the source code and documentation for a clock divider circuit implemented in Verilog. The module divides an input clock by 2, 4, and 8, producing three output clocks (`clk_div2`, `clk_div4`, `clk_div8`).

## Project Structure

- `clock_divider.v` – Verilog module for the clock divider (division by 2, 4, 8).
- `tb_clock_divider.v` – Verilog testbench to simulate the clock divider.
- This report file (design documentation in PDF or Markdown).
- Any waveform images and diagrams (e.g. `figures/` folder).
- `README.md` – This file.

## Design Details

- **Clock Divider Module**: A single `clock_divider` module uses a 3-bit counter. On each rising clock edge, the counter increments by 1. The outputs are taken from the counter bits:
  - `clk_div2 = count[0]` (half frequency)
  - `clk_div4 = count[1]` (quarter frequency)
  - `clk_div8 = count[2]` (one-eighth frequency)
  A synchronous reset initializes all outputs to 0.

- **Testbench**: The testbench `tb_clock_divider` generates a 50 MHz clock and pulses the reset. It instantiates the divider and checks the output frequencies.

## How to Run Simulation

1. Install a Verilog simulator (e.g., Icarus Verilog).
2. Compile and run the testbench:




The waveform should show `clk_div2`, `clk_div4`, and `clk_div8` toggling at the correct reduced frequencies.

## Results

Simulation results confirm correct division:
- `clk_div2` toggles every two input clock cycles (frequency = ½ of input).
- `clk_div4` toggles every four cycles (¼ frequency).
- `clk_div8` toggles every eight cycles (⅛ frequency).

Sample waveforms and timing diagrams are included in the documentation folder.

## Author

[Your Name] – *Electrical/Computer Engineering Project*

## License

This code is provided under the MIT License (modify as appropriate for your use).

