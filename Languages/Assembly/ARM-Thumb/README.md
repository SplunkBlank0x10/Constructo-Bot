# ARM Thumb Assembly

## Overview
Thumb is a 16-bit compressed instruction set introduced with ARM7TDMI in 1994. It provides a subset of ARM 32-bit instructions in a denser encoding, trading some capability for significantly smaller code size.

## Philosophy
Thumb's philosophy is "code density matters." In embedded systems with limited memory, smaller code means lower cost and better cache utilization. The design assumes that most programs spend most of their time in simple operations that don't need the full power of 32-bit ARM instructions.

Thumb is a pragmatic compromise: it doesn't try to be the fastest or the most capable, but the most efficient in terms of code size per feature. It proved that RISC doesn't have to mean bloated binaries.

## Why It Came To Be
ARM processors were winning in embedded markets where cost was critical, but competitors (like Motorola's 68HC11 or Intel's 8051) had denser code. Memory was expensive in the 1990s. Thumb allowed ARM to compete on cost while maintaining performance advantages. It became essential for microcontrollers and low-end mobile devices where every byte of flash memory counted.

## Key Characteristics
- 16-bit fixed-length instructions
- 8 general-purpose registers accessible (subset of ARM's 16)
- Most instructions are unconditional (unlike ARM32)
- Higher instruction count for equivalent operations
- Interworking with ARM32 via BX instruction
- Thumb-2 (ARMv6T2) added 32-bit instructions for better coverage
