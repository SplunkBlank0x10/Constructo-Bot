# x86-64 Assembly (AMD64 / Intel 64)

## Overview
x86-64 is the 64-bit extension of the x86 architecture, originally created by AMD with the Athlon 64 in 2003 and later adopted by Intel. It doubles the register count, extends pointers and integers to 64 bits, and adds RIP-relative addressing.

## Philosophy
The philosophy is pragmatic evolution: keep the world's most successful computing platform viable for another generation without breaking existing software. AMD recognized that Intel's competing Itanium architecture (IA-64) abandoned backward compatibility, creating an opportunity. x86-64 proves that compatibility and progress need not be mutually exclusive.

The design adds modern conveniences (more registers, larger address space) while preserving the familiar programming model. It acknowledges that software ecosystems have inertia measured in decades.

## Why It Came To Be
By the late 1990s, 32-bit x86 was hitting limits: 4GB of RAM was becoming insufficient for servers and workstations. Intel's Itanium took a radical clean-sheet approach, but its poor x86 emulation and need for recompilation made it unattractive. AMD's x86-64 offered a smooth migration path. The market chose compatibility over purity, and x86-64 became the dominant server, desktop, and (initially) laptop architecture.

## Key Characteristics
- 16 general-purpose 64-bit registers (RAX-R15)
- 64-bit pointers and arithmetic
- RIP-relative addressing for position-independent code
- Long mode (64-bit) with legacy mode for 32-bit code
- NX bit for hardware-level data execution prevention
