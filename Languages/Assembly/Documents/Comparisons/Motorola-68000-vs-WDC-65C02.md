# Motorola-68000 vs WDC-65C02

## Overview

This document compares **Motorola-68000** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Motorola-68000 | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 32/16 | 8 |
| **Type** | CISC | CISC (CMOS enhanced 6502) |
| **Year** | 1979 | 1978 |
| **Creator** | Motorola | Western Design Center (Bill Mensch) |
| **Endianness** | Big | Little |

---

## Design Philosophy

### Motorola-68000
> *Orthogonal elegance - any instruction × any mode × any register, intuitive assembly*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** Motorola-68000 approaches computing with a cisc philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### Motorola-68000
8 × 32-bit data (D0-D7) + 8 × 32-bit address (A0-A7)

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** Motorola-68000 offers many registers (many-style architecture), while WDC-65C02 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### Motorola-68000
24-bit external address, 16-bit external data, no segmentation, rich addressing modes

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### Motorola-68000
6800 → 68000 → 68020/30/40 → ColdFire (embedded subset)

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### Motorola-68000
Apple Macintosh, Amiga, Atari ST, Sega Genesis, workstations, embedded

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### Motorola-68000
- **Strengths:** Beautifully orthogonal, easy to program, flat memory, fast for era
- **Weaknesses:** Complex microcode, high pin count, eventually lost to x86 in market

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose Motorola-68000 when:** maximum single-thread performance is critical (Apple Macintosh)

**Choose WDC-65C02 when:** power efficiency is paramount, especially for Apple IIc

---

## Summary

Motorola-68000 and WDC-65C02 represent different points in the spectrum of processor design. The 8-bit WDC-65C02 and 32/16-bit Motorola-68000 serve different scale requirements. WDC-65C02 excels in constrained environments where every transistor counts, while Motorola-68000 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
