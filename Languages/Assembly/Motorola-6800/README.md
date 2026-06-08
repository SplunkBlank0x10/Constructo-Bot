# Motorola 6800 Assembly

## Overview
The Motorola 6800 is an 8-bit microprocessor introduced in 1974, one of the first generation of single-chip CPUs. It features two accumulators, an index register, and a stack pointer.

## Philosophy
The 6800's philosophy is "minimal viable computing." In an era when microprocessors were novel and expensive, Motorola created a chip that was simple enough to understand, program, and build systems around without requiring extensive support circuitry. It assumes that memory and I/O are external, and the processor's job is to shuttle data efficiently.

The design reflects the constraints of 1970s semiconductor manufacturing: few transistors, limited pins, and the need for 5V single-supply operation.

## Why It Came To Be
Motorola entered the microprocessor market after Intel's 4004 and 8008 but before the 8080. The 6800 was designed as a clean-sheet 8-bit processor with better interrupt handling and a more regular instruction set than Intel's offerings. It found use in automotive, industrial control, and early personal computers. It directly influenced the 6502 (created by former Motorola engineers) and the 6809.

## Key Characteristics
- 2 8-bit accumulators (A and B)
- 1 16-bit index register (X)
- 1 16-bit stack pointer (SP)
- 1 16-bit program counter (PC)
- 8-bit condition code register
- 64KB address space
- Single 5V power supply (advantage over Intel's three-voltage 8080)
