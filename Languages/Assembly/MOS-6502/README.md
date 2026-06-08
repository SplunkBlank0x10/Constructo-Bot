# MOS 6502 Assembly

## Overview
The MOS Technology 6502 is an 8-bit microprocessor introduced in 1975. It powered the Apple II, Commodore 64, Nintendo Entertainment System, and countless other systems. It was the cheapest microprocessor of its era.

## Philosophy
The 6502's philosophy is "radical minimalism." Designed by former Motorola engineers who believed the 6800 was too complex, the 6502 strips the processor to its absolute essentials. It has only one accumulator and two index registers. Memory access is fast because the chip is small and signals don't travel far.

The architecture assumes that the zero page (first 256 bytes of memory) serves as a register file. By making zero-page accesses faster and using fewer internal registers, the 6502 achieves surprising performance at minimal cost.

## Why It Came To Be
Chuck Peddle and his team left Motorola to create a processor that undercut everyone on price. At $25 (compared to $300 for the 6800), the 6502 enabled a generation of affordable computers. Its low cost made personal computing economically viable for hobbyists and eventually consumers. The design tradeoffs—minimal registers, no multiply/divide, no I/O ports—were acceptable because the price was revolutionary.

## Key Characteristics
- 1 8-bit accumulator (A)
- 2 8-bit index registers (X and Y)
- 1 8-bit stack pointer (SP)
- 1 8-bit processor status register (P)
- 1 16-bit program counter (PC)
- 64KB address space
- Zero page addressing for fast pseudo-registers
- No hardware multiply or divide
