# ARM Assembly (ARM32 / AArch32)

## Overview
ARM is a 32-bit RISC architecture developed by Acorn Computers in 1985 for the Acorn Archimedes computer. It became the dominant architecture for mobile devices due to its power efficiency and the licensing model that allowed many companies to build ARM-based chips.

## Philosophy
ARM's philosophy is "elegance through simplicity" combined with ruthless power efficiency. The original design team at Acorn believed a processor should be simple enough to understand completely, fast enough for real work, and efficient enough to run on batteries. Every instruction is conditionally executable, reducing branch overhead.

The architecture assumes compilers are smart and hardware should be transparent. By keeping the pipeline simple and regular, ARM achieves high performance per watt—a metric that matters more than raw speed in mobile and embedded contexts.

## Why It Came To Be
Acorn Computers needed a processor for their next-generation computer after finding existing options (like the 80286) inadequate. They designed their own. The project succeeded beyond expectations when Apple and VLSI Technology partnered to form ARM Ltd., pivoting from desktop computers to embedded systems. The rise of smartphones made ARM the most widely used processor architecture in history by unit count.

## Key Characteristics
- 16 32-bit registers (R0-R15, with R15 as PC)
- All instructions are 32-bit and conditionally executable
- Load/store architecture (only load/store access memory)
- Barrel shifter integrated into data processing instructions
- Multiple register load/store (LDM/STM) for efficient stack operations
- Thumb mode (16-bit compressed instructions) for code density
