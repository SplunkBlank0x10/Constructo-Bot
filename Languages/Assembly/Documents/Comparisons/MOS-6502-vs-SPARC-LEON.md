# MOS-6502 vs SPARC-LEON

## Overview

This document compares **MOS-6502** and **SPARC-LEON**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MOS-6502 | SPARC-LEON |
|-----------|----------|----------|
| **Bits** | 8 | 32 |
| **Type** | CISC | RISC (radiation-hardened) |
| **Year** | 1975 | 1997 |
| **Creator** | MOS Technology (Chuck Peddle et al.) | Aeroflex Gaisler (now Cobham) |
| **Endianness** | Little | Big |

---

## Design Philosophy

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

### SPARC-LEON
> *Reliability above all - survive space radiation, detect and correct SEUs automatically*

**Key Difference:** MOS-6502 approaches computing with a cisc philosophy, while SPARC-LEON takes a risc approach. 

---

## Register Architecture

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

### SPARC-LEON
Same as SPARC V8 (32 visible, register windows)

**Comparison:** MOS-6502 offers minimal registers (minimal-style architecture), while SPARC-LEON provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

### SPARC-LEON
Triple modular redundancy (TMR), EDAC on memory, watchdog, open-source VHDL

---

## Historical Lineage

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

### SPARC-LEON
SPARC V8 → LEON → LEON2 → LEON3/4 (open source)

---

## Primary Use Cases

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

### SPARC-LEON
Satellites, spacecraft, ESA missions, NASA missions, radiation environments

---

## Strengths & Weaknesses

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

### SPARC-LEON
- **Strengths:** Radiation tolerance, SPARC compatibility, open source, flight proven
- **Weaknesses:** Niche market, lower performance than commercial CPUs, expensive to qualify

---

## When to Choose Which

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

**Choose SPARC-LEON when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

MOS-6502 and SPARC-LEON represent different points in the spectrum of processor design. Separated by 22 years, these architectures reflect the evolution from MOS Technology (Chuck Peddle et al.)'s 1975 approach to Aeroflex Gaisler (now Cobham)'s 1997 vision. MOS-6502 carries the constraints and wisdom of its era, while MOS-6502 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
