# Intel 8085 Assembly

## Overview
The Intel 8085 is an 8-bit microprocessor introduced in 1976 as an enhanced version of the 8080. It requires only a single 5V power supply and adds two new interrupt pins and a serial I/O capability.

## Philosophy
The 8085's philosophy is "simplify the system." Intel recognized that the 8080's three power supplies and extensive support chips created barriers to adoption. The 8085 integrates clock generation and system controller functions, reducing the chip count needed to build a system.

The architecture assumes that cost and complexity at the system level matter more than raw performance. It treats the processor as part of a complete solution, not an isolated component.

## Why It Came To Be
The 8080 was successful but required complex support circuitry. Competitors (notably Motorola's 6800) offered simpler single-supply designs. The 8085 responded by integrating the 8224 clock generator and 8228 system controller into the CPU itself. It became popular in embedded systems, industrial controllers, and educational kits. It also powered early portable computers and was the foundation for many 8080-compatible processors.

## Key Characteristics
- Software-compatible with 8080
- Single 5V power supply
- Integrated clock generator (3.072 MHz crystal, up to 6.25 MHz)
- Serial I/O lines (SID, SOD)
- 5 interrupt inputs (INTR, RST 5.5, 6.5, 7.5, TRAP)
- Same register set as 8080
- Slightly faster execution for some instructions
- Reduced external chip count
