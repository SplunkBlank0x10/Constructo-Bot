# IBM System/360 and System/370 Assembly

## Overview
The IBM System/360 is a family of mainframe computers announced in 1964, with the System/370 as its 1970 successor. They established the concept of a compatible computer family spanning from small business machines to supercomputers, all sharing the same instruction set.

## Philosophy
The System/360 philosophy is "write once, run everywhere." Before the 360, IBM produced incompatible product lines for different market segments. The 360 unified them under one architecture, allowing software to move across the entire product range. This was revolutionary and created the modern concept of a computer architecture as an abstract interface.

The architecture assumes that software investment dwarfs hardware cost, and that compatibility across generations and models is the highest priority. It treats the instruction set as a long-term contract between IBM and its customers.

## Why It Came To Be
IBM was losing money maintaining multiple incompatible computer lines. Customers were locked into specific models and couldn't upgrade without rewriting software. The System/360 project (the most expensive private R&D effort in history at that time) created a unified architecture using microcode, allowing different hardware implementations to execute the same instructions. It succeeded beyond expectations and established IBM's dominance in enterprise computing for decades.

## Key Characteristics
- 32-bit architecture (originally), later extended to 64-bit (z/Architecture)
- 16 general-purpose registers (32-bit)
- 4 floating-point registers (64-bit)
- 24-bit addressing (S/360), 31-bit (S/370), 64-bit (z)
- EBCDIC character encoding
- Packed decimal arithmetic for business applications
- Channel architecture for I/O (separate processors for I/O)
- Microcode implementation allowing hardware variation
- Virtual memory (S/370)
- Backward compatible to 1964
