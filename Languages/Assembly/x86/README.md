# x86 Assembly (IA-32)

## Overview
x86 is a 32-bit CISC (Complex Instruction Set Computing) architecture originally developed by Intel with the 80386 processor in 1985. It extends the 16-bit 8086/8088 lineage to 32-bit addressing and operations while maintaining backward compatibility.

## Philosophy
The x86 philosophy centers on software longevity and practical performance through hardware complexity. Intel believed that preserving investment in existing software was paramount. The instruction set grew organically over decades, with each generation adding capabilities while keeping old instructions functional. This "cruft carries forward" approach means modern x86 processors still boot in 16-bit real mode, just as an 8086 would.

The architecture assumes the hardware should bear the burden of complexity so software can remain simple and portable across generations. Variable-length instructions, complex addressing modes, and microcoded execution allow a single instruction to perform multi-step operations.

## Why It Came To Be
The 80386 emerged during the era when personal computing was exploding and memory was expensive. The 32-bit extension allowed access to more RAM (up to 4GB) and provided protected mode multitasking, which was essential for operating systems like Windows NT, OS/2, and Linux. Intel chose evolution over revolution to protect the massive software base already written for 8086 and 80286 processors.

## Key Characteristics
- 8 general-purpose registers (EAX, EBX, ECX, EDX, ESI, EDI, EBP, ESP)
- Variable-length instructions (1 to 15 bytes)
- Segmented memory model (inherited from 8086)
- Protected mode with privilege rings (0-3)
- Backward compatible to 8086 real mode
- Stack-based floating point (x87) and later SSE SIMD
