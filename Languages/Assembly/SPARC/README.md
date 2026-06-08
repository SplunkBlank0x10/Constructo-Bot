# SPARC Assembly (Scalable Processor Architecture)

## Overview
SPARC is a 32-bit RISC architecture developed by Sun Microsystems in 1985. It features register windows, a large register file, and an open specification that allowed multiple manufacturers to build SPARC processors.

## Philosophy
SPARC's philosophy is "windows on the world." The register window mechanism—where function calls slide a window over a large register file—eliminates the need to save and restore registers in memory. This makes procedure calls extremely fast, which matters deeply for languages like C where function calls are frequent.

The architecture assumes that procedure call overhead is a critical bottleneck in real software. It treats the register file as a circular buffer and function calls as window slides, not memory operations.

## Why It Came To Be
Sun Microsystems needed its own processor to compete with Motorola's 68000 and Intel's x86 in the workstation market. David Patterson (of RISC fame) and his students at Berkeley influenced the design. SPARC became the foundation of Sun's workstation and server business, powering systems that ran Solaris, the dominant commercial Unix of the 1990s. The open licensing allowed Fujitsu, Texas Instruments, and others to build SPARC chips.

## Key Characteristics
- 32 registers visible at any time (8 global, 8 in, 8 local, 8 out)
- Register windows overlap between caller and callee
- Window overflow/underflow handled by software traps
- 32-bit fixed-length instructions
- Branch delay slots
- Condition codes
- Big-endian default
- Tagged arithmetic support (for Lisp, etc.)
- Coprocessor interface
