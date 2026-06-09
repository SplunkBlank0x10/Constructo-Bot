# MOS-6502 vs WDC-65C02

## Overview

This document compares **MOS-6502** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MOS-6502 | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 8 | 8 |
| **Type** | CISC | CISC (CMOS enhanced 6502) |
| **Year** | 1975 | 1978 |
| **Creator** | MOS Technology (Chuck Peddle et al.) | Western Design Center (Bill Mensch) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** MOS-6502 approaches computing with a cisc philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** MOS-6502 offers minimal registers (minimal-style architecture), while WDC-65C02 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

**Choose WDC-65C02 when:** power efficiency is paramount, especially for Apple IIc

---

## Summary

MOS-6502 and WDC-65C02 represent different points in the spectrum of processor design. Both MOS-6502 and WDC-65C02 share the CISC design philosophy, yet diverge significantly in implementation details, ecosystem maturity, and target applications. The choice between them often comes down to existing codebases, available tools, and specific performance requirements rather than fundamental architectural superiority.

---

*Generated for the Assembly Hello World Collection*
