# DEC PDP-11 Assembly

## Overview
The PDP-11 is a 16-bit minicomputer introduced by Digital Equipment Corporation in 1970. It is widely considered one of the most influential computer designs in history, directly inspiring the C programming language and Unix operating system.

## Philosophy
The PDP-11's philosophy is "orthogonality and elegance." Every instruction can operate on every addressing mode with every data size. The six general-purpose registers can serve as accumulators, index registers, or stack pointers. Memory-mapped I/O means devices look like memory locations.

The architecture assumes that programmers deserve a clean, predictable machine. It treats memory as a uniform space where code, data, and I/O coexist transparently. This elegance made it a joy to program and influenced computer science profoundly.

## Why It Came To Be
DEC needed a successor to the PDP-8 that could compete with IBM's emerging minicomputer offerings. The PDP-11 was designed by Harold McFarland and others with unprecedented attention to orthogonality. It became DEC's most successful product line, with over 600,000 units sold. Ken Thompson and Dennis Ritchie developed Unix on a PDP-7 and then PDP-11, and the C language's constructs (auto-increment, auto-decrement, pointers) directly reflect PDP-11 addressing modes.

## Key Characteristics
- 8 16-bit general-purpose registers (R0-R7, with R6 as SP, R7 as PC)
- Orthogonal instruction set (any operation, any mode, any register)
- Memory-mapped I/O
- Unibus architecture (single bus for everything)
- Byte-addressable memory
- Auto-increment and auto-decrement addressing
- Multiple interrupt priority levels
- Stack-oriented subroutine calls
- No dedicated I/O instructions
