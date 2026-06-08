# PA-RISC Assembly (Precision Architecture - RISC)

## Overview
PA-RISC is a RISC instruction set developed by Hewlett-Packard in 1986 for its HP 3000 and HP 9000 computer families. It emphasizes compiler optimization and efficient hardware implementation.

## Philosophy
PA-RISC's philosophy is "precision in design." HP's engineers carefully analyzed compiler-generated code patterns and designed instructions that matched what compilers actually produced. Features like nullification (conditionally skipping the next instruction) and shadow registers reduce branch overhead and interrupt latency.

The architecture assumes that compilers are the primary users of the instruction set, not human assembly programmers. It treats the hardware-software interface as something to be optimized through measurement and analysis.

## Why It Came To Be
HP needed a modern processor architecture to replace its proprietary stack-based designs. PA-RISC offered better performance and easier compiler targeting than HP's existing processors. It became the foundation of HP's Unix workstation and server business, competing with SPARC, MIPS, and PowerPC. HP later partnered with Intel to create Itanium, transitioning away from PA-RISC.

## Key Characteristics
- 32 32-bit general-purpose registers
- 32 64-bit floating-point registers
- Nullification: most branches can nullify (skip) the next instruction
- Delayed branching with nullification
- Shadow registers for fast interrupt handling
- Multiply-step and divide-step instructions
- Big-endian
- 32-bit and 64-bit versions (PA-RISC 1.0 and 2.0)
- MAX-2 multimedia instructions (later)
