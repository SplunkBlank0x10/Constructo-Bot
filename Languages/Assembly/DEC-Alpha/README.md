# DEC Alpha Assembly

## Overview
Alpha is a 64-bit RISC microprocessor developed by Digital Equipment Corporation (DEC) and introduced in 1992. It was designed from scratch as a 64-bit-only architecture, with no 32-bit legacy.

## Philosophy
Alpha's philosophy is "64 bits, no compromises." DEC believed that designing for 32-bit compatibility would compromise the clean 64-bit design they envisioned. Alpha assumes that 64-bit is the only future worth building for, and that any 32-bit code should be recompiled, not emulated.

The architecture treats simplicity and speed as inseparable. By eliminating byte and halfword loads (originally), complex addressing modes, and condition codes, DEC created a processor that could run at extremely high clock speeds. It was the fastest processor in the world at various points in the 1990s.

## Why It Came To Be
DEC needed to replace its aging VAX line with something competitive in the Unix workstation and server market. The VAX was complex and couldn't scale to modern performance levels. Alpha was a clean-sheet design led by DEC's semiconductor group in Massachusetts. It powered DEC's own systems and was licensed to others. Though DEC was acquired by Compaq in 1998 and Alpha eventually discontinued, its influence on 64-bit RISC design was profound.

## Key Characteristics
- Pure 64-bit architecture (no 32-bit mode)
- 32 integer registers (R31 hardwired to zero)
- 32 floating-point registers (F31 can be used)
- No condition codes (compare into registers)
- No byte or halfword memory operations (originally; added later)
- No branch delay slots
- Designed for very high clock frequencies
- PALcode (Privileged Architecture Library) for OS primitives
- Little-endian
