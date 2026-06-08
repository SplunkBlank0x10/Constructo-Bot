# SuperH (SH) Assembly

## Overview
SuperH is a 32-bit RISC instruction set architecture developed by Hitachi in the early 1990s. It features 16-bit fixed-length instructions for high code density, making it ideal for embedded systems with limited memory.

## Philosophy
SuperH's philosophy is "density without complexity." While ARM's Thumb and MIPS16 offered compressed instruction sets as add-ons, SuperH made 16-bit instructions the native format. This achieves RISC performance with CISC-like code size, crucial for cost-sensitive embedded applications.

The architecture assumes that memory (especially ROM/flash) is expensive in embedded systems and that code density directly impacts system cost. It treats instruction size as a primary design constraint.

## Why It Came To Be
Hitachi needed a processor for embedded applications that offered better performance than 8-bit microcontrollers but with comparable code density. The SH-1 and SH-2 powered Sega's Saturn and Dreamcast consoles, while SH-3 and SH-4 variants found use in PDAs (Windows CE), automotive systems, and industrial controllers. Renesas (formed from Hitachi and Mitsubishi semiconductor divisions) continues to develop SuperH derivatives.

## Key Characteristics
- 16-bit fixed-length instructions
- 16 32-bit general-purpose registers
- 32-bit internal data path
- Delayed branches
- Auto-increment and auto-decrement addressing
- Multiply-accumulate (MAC) unit for DSP
- 32-bit and 64-bit floating-point (SH-4)
- Little-endian
- 5-stage pipeline
- Low power consumption
- Compact JTAG debug interface
