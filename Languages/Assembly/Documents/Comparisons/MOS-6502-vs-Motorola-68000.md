# MOS-6502 vs Motorola-68000

## Overview

This document compares **MOS-6502** and **Motorola-68000**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MOS-6502 | Motorola-68000 |
|-----------|----------|----------|
| **Bits** | 8 | 32/16 |
| **Type** | CISC | CISC |
| **Year** | 1975 | 1979 |
| **Creator** | MOS Technology (Chuck Peddle et al.) | Motorola |
| **Endianness** | Little | Big |

---

## Design Philosophy

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

### Motorola-68000
> *Orthogonal elegance - any instruction × any mode × any register, intuitive assembly*

**Key Difference:** MOS-6502 approaches computing with a cisc philosophy, while Motorola-68000 takes a cisc approach. 

---

## Register Architecture

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

### Motorola-68000
8 × 32-bit data (D0-D7) + 8 × 32-bit address (A0-A7)

**Comparison:** MOS-6502 offers minimal registers (minimal-style architecture), while Motorola-68000 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

### Motorola-68000
24-bit external address, 16-bit external data, no segmentation, rich addressing modes

---

## Historical Lineage

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

### Motorola-68000
6800 → 68000 → 68020/30/40 → ColdFire (embedded subset)

---

## Primary Use Cases

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

### Motorola-68000
Apple Macintosh, Amiga, Atari ST, Sega Genesis, workstations, embedded

---

## Strengths & Weaknesses

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

### Motorola-68000
- **Strengths:** Beautifully orthogonal, easy to program, flat memory, fast for era
- **Weaknesses:** Complex microcode, high pin count, eventually lost to x86 in market

---

## When to Choose Which

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

**Choose Motorola-68000 when:** maximum single-thread performance is critical (Apple Macintosh)

---

## Summary

MOS-6502 and Motorola-68000 represent different points in the spectrum of processor design. The 8-bit MOS-6502 and 32/16-bit Motorola-68000 serve different scale requirements. MOS-6502 excels in constrained environments where every transistor counts, while Motorola-68000 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
