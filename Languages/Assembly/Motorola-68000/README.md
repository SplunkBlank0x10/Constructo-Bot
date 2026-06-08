# Motorola 68000 Assembly

## Overview
The Motorola 68000 (often called 68k) is a 32-bit internal/16-bit external CISC processor introduced in 1979. It powered iconic systems including the Apple Macintosh, Amiga, Atari ST, and Sega Genesis.

## Philosophy
The 68000's philosophy is "orthogonal elegance." Motorola designed an instruction set where operations, addressing modes, and data types are as uniformly applicable as possible. Nearly every instruction can use nearly every addressing mode with nearly every data size. This regularity makes the processor intuitive to program in assembly.

The architecture assumes that programmers (and compilers) deserve consistency. It treats the programmer as a skilled professional who benefits from a predictable, powerful tool rather than a novice who needs protection from complexity.

## Why It Came To Be
Motorola needed a successor to the 6800 that could compete with Intel's 8086 in the emerging 16/32-bit market. The 68000 offered a cleaner design, true 32-bit internal registers, and a flat memory model that appealed to system designers. It became the processor of choice for graphical workstations before the IBM PC dominated, and its influence persists in ColdFire and embedded derivatives.

## Key Characteristics
- 8 32-bit data registers (D0-D7) and 8 32-bit address registers (A0-A7)
- 24-bit external address bus (16MB addressable)
- 16-bit external data bus (32-bit internal)
- Orthogonal instruction set
- No memory segmentation
- Supervisor/user modes
- Rich addressing modes including predecrement/postincrement
