# LoongArch Assembly

## Overview
LoongArch is a RISC instruction set architecture developed by Loongson Technology in China, introduced in 2020. It is designed for general-purpose computing, from embedded systems to servers.

## Philosophy
LoongArch's philosophy is "independence through design." Loongson sought to create a processor architecture free from foreign intellectual property and licensing constraints. While inspired by MIPS (Loongson's earlier designs were MIPS-compatible), LoongArch is a clean-sheet design that avoids MIPS patents and adds modern features.

The architecture assumes that technological sovereignty matters and that a nation should control its computing infrastructure. It treats the ISA as strategic infrastructure, not merely a technical choice.

## Why It Came To Be
Loongson had produced MIPS-compatible processors for years but faced increasing licensing restrictions and geopolitical tensions. China identified semiconductor independence as a national priority. LoongArch allows Loongson to build processors without MIPS license dependencies while maintaining the familiarity of a MIPS-like programming model. It represents China's most significant indigenous CPU architecture effort.

## Key Characteristics
- 32 general-purpose integer registers
- 32 floating-point registers
- 32 256-bit vector registers (LSX/LASX extensions)
- Fixed 32-bit instruction length
- No branch delay slots (unlike MIPS)
- 4 privilege levels (PLV0-PLV3)
- Direct and indirect branches
- Atomic instructions for multi-core
- Memory management with multi-level page tables
- Binary translation support for x86, ARM, and MIPS
- Big-endian and little-endian support
