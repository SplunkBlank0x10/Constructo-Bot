# Motorola-6800 vs WDC-65C02

## Overview

This document compares **Motorola-6800** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Motorola-6800 | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 8 | 8 |
| **Type** | CISC | CISC (CMOS enhanced 6502) |
| **Year** | 1974 | 1978 |
| **Creator** | Motorola | Western Design Center (Bill Mensch) |
| **Endianness** | Big | Little |

---

## Design Philosophy

### Motorola-6800
> *Minimal viable computing - simple enough to understand, 5V single supply*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** Motorola-6800 approaches computing with a cisc philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### Motorola-6800
A, B (accumulators), X (index), SP, PC

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** Motorola-6800 offers minimal registers (minimal-style architecture), while WDC-65C02 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### Motorola-6800
Single 5V supply (vs Intel's 3-voltage), 64KB space, influenced 6502

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### Motorola-6800
6800 → 6809 (enhanced) → 68000 (16/32-bit leap)

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### Motorola-6800
Automotive, industrial control, early personal computers, education

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### Motorola-6800
- **Strengths:** Simple, reliable, single supply, good interrupt handling, regular instruction set
- **Weaknesses:** Limited registers, soon overshadowed by 6502 (cheaper) and Z80 (more capable)

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose Motorola-6800 when:** fault tolerance and reliability are non-negotiable (e.g., Automotive)

**Choose WDC-65C02 when:** power efficiency is paramount, especially for Apple IIc

---

## Summary

Motorola-6800 and WDC-65C02 represent different points in the spectrum of processor design. Both Motorola-6800 and WDC-65C02 share the CISC design philosophy, yet diverge significantly in implementation details, ecosystem maturity, and target applications. The choice between them often comes down to existing codebases, available tools, and specific performance requirements rather than fundamental architectural superiority.

---

*Generated for the Assembly Hello World Collection*
