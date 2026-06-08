# AVR Assembly

## Overview
AVR is a modified Harvard architecture 8-bit RISC microcontroller family developed by Atmel in 1996. It features 32 general-purpose registers, single-cycle execution for most instructions, and on-chip flash memory.

## Philosophy
AVR's philosophy is "RISC for microcontrollers." While competitors like the 8051 and PIC used accumulator-centric or banked designs, AVR applied RISC principles to the 8-bit embedded space. The large register file and single-cycle execution aim to bring workstation-class compiler efficiency to microcontrollers.

The architecture assumes that C compilers will generate most code, so the instruction set is optimized for compiler output rather than human assembly programmers. It treats performance per clock cycle and power efficiency as the primary metrics.

## Why It Came To Be
Atmel wanted a modern 8-bit architecture that could compete with Microchip's PIC and Intel's aging 8051. The AVR was designed from scratch with flash program memory in mind (unlike EEPROM-based competitors). It gained massive popularity through the Arduino platform, which made microcontroller programming accessible to artists, designers, and hobbyists. The open toolchain (GCC support) also helped adoption.

## Key Characteristics
- 32 8-bit general-purpose registers (R0-R31)
- R26-R31 serve as 16-bit pointer registers (X, Y, Z)
- Modified Harvard architecture (separate code/data buses)
- Single-cycle execution for most instructions
- On-chip flash, SRAM, and EEPROM
- In-system programmable
- Direct hardware multiply (8x8)
- Extensive sleep modes for power saving
