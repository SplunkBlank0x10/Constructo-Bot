# PowerPC Assembly

## Overview
PowerPC is a RISC instruction set architecture created in 1991 through an alliance of Apple, IBM, and Motorola (the AIM alliance). It was designed as a unified successor to IBM's POWER architecture and Motorola's 88000 project.

## Philosophy
PowerPC's philosophy is "performance through compiler optimization." The architecture provides a clean, regular instruction set with 32 general-purpose registers, powerful branch capabilities, and a condition register with multiple fields. It assumes that compilers can exploit these features to generate highly optimized code.

The design treats the processor as a platform for multiple operating systems and applications, from embedded systems to supercomputers. It values architectural elegance but not at the expense of practical performance.

## Why It Came To Be
Apple needed to replace Motorola's 68000 series with a modern processor. IBM wanted to expand POWER beyond workstations. Motorola needed a 32-bit RISC successor. The AIM alliance created PowerPC as a compromise that served all three. It powered Apple's Macintoshes from 1994-2006, IBM's RS/6000 workstations, and numerous embedded systems. Though it lost the desktop market to x86, it remained strong in embedded, automotive, and gaming (Xbox 360, PlayStation 3).

## Key Characteristics
- 32 32-bit general-purpose registers
- 32 64-bit floating-point registers
- 8-field condition register (CR)
- Link register (LR) and count register (CTR) for branches
- Branch prediction hints
- Multiply-accumulate instructions
- AltiVec SIMD unit (later)
- Big-endian by default (though supports little-endian)
- Book E specification for embedded systems
