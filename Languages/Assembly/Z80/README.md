# Z80 Assembly

## Overview
The Zilog Z80 is an 8-bit microprocessor introduced in 1976 as a software-compatible enhancement of the Intel 8080. It became one of the most widely used processors of the 8-bit era, powering the ZX Spectrum, MSX, Game Boy, CP/M systems, and countless embedded devices.

## Philosophy
The Z80's philosophy is "familiar but better." Zilog founder Federico Faggin (who led Intel's 8080 team) knew the 8080 intimately and believed it could be significantly improved without breaking compatibility. The Z80 adds registers, instructions, and interrupt modes while keeping 8080 code running.

The architecture assumes that developers value incremental improvement over revolution. It treats the 8080 as a solid foundation that needed more registers, better indexing, and more flexible interrupts.

## Why It Came To Be
Faggin left Intel to create a better 8080. The Z80 offered twice the registers (with alternate register sets for fast context switching), built-in DRAM refresh, and more powerful instructions at a competitive price. It became the standard processor for CP/M, the dominant operating system before DOS, and remained relevant for decades in embedded applications.

## Key Characteristics
- 8-bit accumulator (A) with alternate (A')
- 6 general-purpose 8-bit registers (B, C, D, E, H, L) with alternates
- 2 16-bit index registers (IX, IY)
- 16-bit stack pointer (SP) and program counter (PC)
- 3 interrupt modes (including vectored)
- Built-in memory refresh counter
- Block transfer and search instructions (LDI, LDD, CPI, CPD, etc.)
- 8080 opcode compatibility
