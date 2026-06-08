# Intel 8080 Assembly

## Overview
The Intel 8080 is an 8-bit microprocessor introduced in 1974. It was Intel's first widely successful general-purpose CPU and established the 8-bit computing paradigm that dominated the 1970s.

## Philosophy
The 8080's philosophy is "the microprocessor as a computer." Unlike its predecessor (the 8008, designed for terminals), the 8080 was intended to be the CPU of a general-purpose computer. It assumes external memory and I/O, and provides the instructions needed for a full operating system.

The architecture reflects the state of semiconductor technology in 1974: 6-micron process, limited to 5V operation, and about 6,000 transistors. Every design decision was constrained by what could be manufactured reliably.

## Why It Came To Be
Intel needed a successor to the 8008 that could address more memory, run faster, and support more software. The 8080 offered 64KB addressing (vs 16KB), a richer instruction set, and better interrupt handling. It became the processor of the first personal computers (Altair 8800, IMSAI) and established CP/M as the standard 8-bit operating system. Without the 8080, the personal computer revolution might have been delayed.

## Key Characteristics
- 8-bit data bus, 16-bit address bus (64KB)
- 7 8-bit registers (A, B, C, D, E, H, L)
- 16-bit register pairs (BC, DE, HL)
- 16-bit stack pointer (SP) and program counter (PC)
- 5 interrupt signals (including RST instructions)
- 10 status flags
- 3 power supplies required (+5V, -5V, +12V)
- 2.0 MHz clock (later 3.0 MHz)
