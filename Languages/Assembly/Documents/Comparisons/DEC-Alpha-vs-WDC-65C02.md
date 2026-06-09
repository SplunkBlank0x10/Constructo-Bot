# DEC-Alpha vs WDC-65C02

## Overview

This document compares **DEC-Alpha** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-Alpha | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 64 | 8 |
| **Type** | RISC | CISC (CMOS enhanced 6502) |
| **Year** | 1992 | 1978 |
| **Creator** | Digital Equipment Corporation (DEC) | Western Design Center (Bill Mensch) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-Alpha
> *64 bits, no compromises - pure 64-bit from scratch, no legacy*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** DEC-Alpha approaches computing with a risc philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### DEC-Alpha
32 integer + 32 FP (R31/F31 hardwired to zero)

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** DEC-Alpha offers many registers (many-style architecture), while WDC-65C02 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-Alpha
No condition codes, no byte/halfword loads originally, designed for extreme clock speeds

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### DEC-Alpha
Clean sheet design, influenced by MIPS experience

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### DEC-Alpha
High-end workstations, servers, scientific computing (Cray-like)

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### DEC-Alpha
- **Strengths:** Blazing fast for its era, clean design, excellent 64-bit implementation
- **Weaknesses:** DEC's demise, no 32-bit mode, compiler complexity

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose DEC-Alpha when:** maximum single-thread performance is critical (High-end workstations)

**Choose WDC-65C02 when:** power efficiency is paramount, especially for Apple IIc

---

## Summary

DEC-Alpha and WDC-65C02 represent different points in the spectrum of processor design. The 8-bit WDC-65C02 and 64-bit DEC-Alpha serve different scale requirements. WDC-65C02 excels in constrained environments where every transistor counts, while DEC-Alpha provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
