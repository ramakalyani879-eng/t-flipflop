# T Flip-Flop in Verilog

This project implements a positive-edge-triggered T Flip-Flop using Verilog HDL.

## Project Files

- `t_flipflop.v` - T Flip-Flop design
- `t_flipflop_tb.v` - Testbench for simulation
- `README.md` - Project documentation

## T Flip-Flop Truth Table

| T | Operation | Q(next) |
|---|-----------|---------|
| 0 | Hold | Q |
| 1 | Toggle | ~Q |

## Working

A T Flip-Flop changes its output state at every rising edge of the clock when T = 1.

When T = 0, the output maintains its previous state.

## Tools Required

- Visual Studio Code
- Icarus Verilog
- GTKWave
- Git
- GitHub

## Compile

Open the VS Code terminal and run:

```bash
iverilog -o t_flipflop_sim t_flipflop.v t_flipflop_tb.v