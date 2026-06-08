# DEC VAX Assembly

## Overview
The VAX (Virtual Address eXtension) is a 32-bit CISC minicomputer introduced by DEC in 1977. It extends the PDP-11's philosophy to 32 bits while adding virtual memory, a larger instruction set, and more addressing modes.

## Philosophy
VAX's philosophy is "make the hardware do everything." The instruction set is famously orthogonal and comprehensive, with instructions for polynomial evaluation, queue manipulation, character string operations, and decimal arithmetic. The architecture assumes that complex operations should be single instructions, reducing code size and compiler complexity.

The design treats the programmer as someone who benefits from a rich, capable instruction set. It values expressiveness over implementation simplicity, betting that microcode can hide hardware complexity.

## Why It Came To Be
DEC needed a 32-bit successor to the PDP-11 that could support larger applications and virtual memory. The VAX-11/780 became the benchmark for 1 MIPS (million instructions per second) and established VAX as the dominant minicomputer architecture of the 1980s. It ran VMS, DEC's flagship operating system, and later Unix. The VAX was so successful that "VAX" became synonymous with minicomputer in many contexts.

## Key Characteristics
- 16 32-bit general-purpose registers
- 32-bit virtual address space
- Variable-length instructions (1 to 56 bytes possible)
- Over 300 instructions
- 22 addressing modes
- Packed decimal arithmetic
- Character and bit-field instructions
- Queue instructions (insque, remque)
- POLY instruction (polynomial evaluation)
- CALLS/CALLG procedure call instructions
- Hardware-assisted decimal and string operations
