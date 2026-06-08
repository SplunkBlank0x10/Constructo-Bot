# AArch64 Assembly (ARM64)

## Overview
AArch64 is ARM's 64-bit architecture introduced with ARMv8-A in 2011. It represents a clean break from the 32-bit ARM instruction set, with a new encoding, new exception model, and 64-bit operations throughout.

## Philosophy
AArch64's philosophy is "learn from three decades of experience." ARM took the opportunity of a 64-bit transition to fix accumulated design decisions that no longer made sense. Conditional execution was mostly removed because modern branch prediction makes it unnecessary. The instruction encoding was redesigned for easier decode in wide-issue superscalar processors.

The architecture assumes modern software needs large address spaces, modern security features, and straightforward compiler targeting. It keeps ARM's power-efficiency focus while embracing the performance expectations of servers and high-end mobile devices.

## Why It Came To Be
The smartphone era created demand for 64-bit computing: more than 4GB RAM, larger files, cryptographic operations on 64-bit data, and pointers large enough for modern memory-mapped I/O. Apple's A7 chip (2013) was the first 64-bit ARM processor, catching competitors off guard. ARM also targeted the server market, where x86-64 dominated and 64-bit was mandatory.

## Key Characteristics
- 31 64-bit general-purpose registers (X0-X30) plus a zero register (XZR)
- Separate 32-bit view (W0-W30) for the same registers
- No predication (except for conditional branches and select)
- New exception levels (EL0-EL3) replacing the old processor modes
- SIMD via NEON and later SVE (Scalable Vector Extensions)
- Dedicated stack pointer (SP) and program counter (PC) are no longer general registers
