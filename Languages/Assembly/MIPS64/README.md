# MIPS64 Assembly

## Overview
MIPS64 extends the original 32-bit MIPS architecture to 64-bit addressing and operations, introduced in the mid-1990s. It maintains the same fundamental design while expanding register and address sizes.

## Philosophy
MIPS64's philosophy is "extend, don't redesign." The creators believed the original RISC principles were sound and only needed scaling for larger workloads. The 64-bit transition was treated as a natural evolution rather than an opportunity to fix non-existent problems.

The architecture assumes that existing MIPS software should port easily, and that the same compiler technology and design methodology that worked for 32-bit would work for 64-bit. It values continuity over innovation.

## Why It Came To Be
Workstations and servers in the 1990s needed more than 4GB of addressable memory. Silicon Graphics, a major MIPS licensee, needed 64-bit for high-end graphics and visualization workloads. The MIPS III ISA (1991) introduced 64-bit operations, and MIPS64 formalized the 64-bit standard. It competed with SPARC64, Alpha, and PowerPC in the Unix workstation market.

## Key Characteristics
- 64-bit general-purpose registers
- 64-bit addressing and arithmetic
- Backward compatible with MIPS32
- New instructions for 64-bit data movement and arithmetic
- Same pipeline philosophy as MIPS32
- N64 ABI for 64-bit systems
