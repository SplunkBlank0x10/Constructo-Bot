# MIPS Assembly

## Overview
MIPS (Microprocessor without Interlocked Pipeline Stages) is a 32-bit RISC architecture developed at Stanford University in 1981. It was one of the first commercial RISC processors, emphasizing pipeline efficiency and compiler-friendly design.

## Philosophy
MIPS's philosophy is "keep the pipeline simple and let the compiler schedule." The name itself reveals the core idea: eliminate hardware interlocks that stall the pipeline when instructions have dependencies. This makes the hardware faster and simpler, but requires compilers to insert NOPs or reorder instructions to avoid hazards.

The architecture assumes that software development tools are sophisticated enough to handle scheduling, and that hardware should not second-guess the compiler. This was revolutionary in an era when most processors had complex hardware for handling dependencies.

## Why It Came To Be
John Hennessy and his students at Stanford were researching compiler optimization and needed a processor that wouldn't hide optimization opportunities behind hardware complexity. MIPS Computer Systems commercialized the design. It found success in workstations (Silicon Graphics), embedded systems, and gaming consoles (PlayStation, PlayStation 2, Nintendo 64). Its clean design made it a popular teaching architecture.

## Key Characteristics
- 32 general-purpose registers ($0 hardwired to zero)
- Load/store architecture
- Branch delay slots (instruction after branch always executes)
- HI and LO registers for multiplication results
- Coprocessor interface for floating point and system control
- Fixed 32-bit instruction length
