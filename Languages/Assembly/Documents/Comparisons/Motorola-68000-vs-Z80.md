# Motorola-68000 vs Z80

## Overview

This document compares **Motorola-68000** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Motorola-68000 | Z80 |
|-----------|----------|----------|
| **Bits** | 32/16 | 8 |
| **Type** | CISC | CISC |
| **Year** | 1979 | 1976 |
| **Creator** | Motorola | Zilog (Federico Faggin) |
| **Endianness** | Big | Little |

---

## Design Philosophy

### Motorola-68000
> *Orthogonal elegance - any instruction × any mode × any register, intuitive assembly*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** Motorola-68000 approaches computing with a cisc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### Motorola-68000
8 × 32-bit data (D0-D7) + 8 × 32-bit address (A0-A7)

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** Motorola-68000 offers many registers (many-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### Motorola-68000
24-bit external address, 16-bit external data, no segmentation, rich addressing modes

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### Motorola-68000
6800 → 68000 → 68020/30/40 → ColdFire (embedded subset)

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### Motorola-68000
Apple Macintosh, Amiga, Atari ST, Sega Genesis, workstations, embedded

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### Motorola-68000
- **Strengths:** Beautifully orthogonal, easy to program, flat memory, fast for era
- **Weaknesses:** Complex microcode, high pin count, eventually lost to x86 in market

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose Motorola-68000 when:** maximum single-thread performance is critical (Apple Macintosh)

**Choose Z80 when:** power efficiency is paramount, especially for ZX Spectrum

---

## Summary

Motorola-68000 and Z80 represent different points in the spectrum of processor design. The 8-bit Z80 and 32/16-bit Motorola-68000 serve different scale requirements. Z80 excels in constrained environments where every transistor counts, while Motorola-68000 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
