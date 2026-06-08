# SPARC LEON Assembly

## Overview
LEON is a series of SPARC-compatible processors designed by Aeroflex Gaisler (now part of Cobham) for space and radiation-hardened applications. It implements the SPARC V8 architecture with fault-tolerant features.

## Philosophy
LEON's philosophy is "reliability above all." Space radiation causes single-event upsets (SEUs) where a single ionizing particle flips a bit in a register or memory cell. LEON is designed to detect and correct these errors through triple modular redundancy, error-correcting codes, and fault-tolerant design techniques.

The architecture assumes that the environment is hostile and that hardware must protect software automatically. It treats fault tolerance as a first-class design constraint, not an afterthought.

## Why It Came To Be
European space agencies needed a processor for satellites and spacecraft that could survive the radiation environment of space without expensive custom manufacturing. Commercial processors are not radiation-tolerant. LEON provides a SPARC-compatible processor with built-in fault tolerance, allowing standard software to run on radiation-hardened hardware. It has flown on numerous European Space Agency missions.

## Key Characteristics
- SPARC V8 compatible (32-bit)
- Integer unit, optional floating-point unit, optional co-processors
- Fault tolerance: triple modular redundancy (TMR) on registers
- Error detection and correction (EDAC) on caches and memory
- Watchdog timers and error counters
- AMBA bus interface for SoC integration
- Configurable cache sizes
- Low-power modes
- Available as synthesizable VHDL (open-source LEON3/LEON4)
- Qualified for spaceflight (ESA, NASA missions)
