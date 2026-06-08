# WDC 65816 Assembly

## Overview
The WDC 65816 (also called 65C816) is a 16-bit evolution of the 6502/65C02, introduced in 1984. It powers the Apple IIGS and Super Nintendo Entertainment System.

## Philosophy
The 65816's philosophy is "grow up gracefully." It extends the beloved 6502 to 16-bit without alienating the community that knew it intimately. The processor can operate in an "emulation mode" that behaves exactly like a 6502, or in "native mode" with 16-bit registers and 24-bit addressing.

The architecture assumes that software migration is as important as hardware capability. It treats the 6502 heritage as an asset to build upon, not a burden to escape.

## Why It Came To Be
The 8-bit era was ending, and 6502 users needed a migration path. Apple wanted a 16-bit processor for the Apple IIGS that could run existing Apple II software. The 65816 provided that path while adding modern features like 24-bit addressing (16MB space), 16-bit registers, and block move instructions. It demonstrated that backward compatibility and progress could coexist.

## Key Characteristics
- Software-switchable 6502 emulation mode
- Native mode with 16-bit accumulator (A) and index registers (X, Y)
- 24-bit address bus (16MB addressable)
- Direct page register (D) relocates zero page
- Program bank register (PB) and Data bank register (DB)
- Block move instructions (MVP, MVN)
- Native mode interrupt handling
