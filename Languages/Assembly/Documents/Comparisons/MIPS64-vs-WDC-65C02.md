# MIPS64 vs WDC-65C02

## Overview

This document compares **MIPS64** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS64 | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 64 | 8 |
| **Type** | RISC | CISC (CMOS enhanced 6502) |
| **Year** | 1995 | 1978 |
| **Creator** | MIPS Technologies / Silicon Graphics | Western Design Center (Bill Mensch) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### MIPS64
> *Extend, don't redesign - same principles, larger scale*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** MIPS64 approaches computing with a risc philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### MIPS64
32 × 64-bit, same HI/LO, same delay slots

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** MIPS64 offers many registers (many-style architecture), while WDC-65C02 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MIPS64
Backward compatible with MIPS32, N64 ABI, same pipeline philosophy

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### MIPS64
MIPS I → MIPS III → MIPS64

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### MIPS64
High-end workstations, servers, some embedded

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### MIPS64
- **Strengths:** Continuity, familiar toolchain, 64-bit when needed
- **Weaknesses:** Carried MIPS32 baggage, delay slots still burden, market decline

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose MIPS64 when:** your application fits its domain (High-end workstations) and you value its specific strengths

**Choose WDC-65C02 when:** power efficiency is paramount, especially for Apple IIc

---

## Summary

MIPS64 and WDC-65C02 represent different points in the spectrum of processor design. The 8-bit WDC-65C02 and 64-bit MIPS64 serve different scale requirements. WDC-65C02 excels in constrained environments where every transistor counts, while MIPS64 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
