# MOS-6502 vs SPARC

## Overview

This document compares **MOS-6502** and **SPARC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MOS-6502 | SPARC |
|-----------|----------|----------|
| **Bits** | 8 | 32 |
| **Type** | CISC | RISC |
| **Year** | 1975 | 1985 |
| **Creator** | MOS Technology (Chuck Peddle et al.) | Sun Microsystems (David Patterson et al.) |
| **Endianness** | Little | Big |

---

## Design Philosophy

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

### SPARC
> *Windows on the world - register windows eliminate save/restore on calls*

**Key Difference:** MOS-6502 approaches computing with a cisc philosophy, while SPARC takes a risc approach. 

---

## Register Architecture

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

### SPARC
32 visible (8 global, 8 in, 8 local, 8 out), windows overlap caller/callee

**Comparison:** MOS-6502 offers minimal registers (minimal-style architecture), while SPARC provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

### SPARC
Register windows, SAVE/RESTORE instructions, tagged arithmetic, open licensing

---

## Historical Lineage

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

### SPARC
Berkeley RISC I/II → SPARC (1985) → SPARC V8 → SPARCv9 (64-bit)

---

## Primary Use Cases

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

### SPARC
Sun workstations/servers, Fujitsu supercomputers, embedded (LEON), education

---

## Strengths & Weaknesses

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

### SPARC
- **Strengths:** Fast procedure calls, elegant window mechanism, open specification
- **Weaknesses:** Window overflow complexity, big-endian default, Sun's demise, niche now

---

## When to Choose Which

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

**Choose SPARC when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

MOS-6502 and SPARC represent different points in the spectrum of processor design. The 8-bit MOS-6502 and 32-bit SPARC serve different scale requirements. MOS-6502 excels in constrained environments where every transistor counts, while SPARC provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
