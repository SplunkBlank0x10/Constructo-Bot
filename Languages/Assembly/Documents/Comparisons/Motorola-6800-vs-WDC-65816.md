# Motorola-6800 vs WDC-65816

## Overview

This document compares **Motorola-6800** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Motorola-6800 | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 8 | 16/8 |
| **Type** | CISC | CISC (16-bit 6502 evolution) |
| **Year** | 1974 | 1984 |
| **Creator** | Motorola | Western Design Center (Bill Mensch) |
| **Endianness** | Big | Little |

---

## Design Philosophy

### Motorola-6800
> *Minimal viable computing - simple enough to understand, 5V single supply*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** Motorola-6800 approaches computing with a cisc philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### Motorola-6800
A, B (accumulators), X (index), SP, PC

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** Motorola-6800 offers minimal registers (minimal-style architecture), while WDC-65816 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### Motorola-6800
Single 5V supply (vs Intel's 3-voltage), 64KB space, influenced 6502

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### Motorola-6800
6800 → 6809 (enhanced) → 68000 (16/32-bit leap)

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### Motorola-6800
Automotive, industrial control, early personal computers, education

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### Motorola-6800
- **Strengths:** Simple, reliable, single supply, good interrupt handling, regular instruction set
- **Weaknesses:** Limited registers, soon overshadowed by 6502 (cheaper) and Z80 (more capable)

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose Motorola-6800 when:** fault tolerance and reliability are non-negotiable (e.g., Automotive)

**Choose WDC-65816 when:** power efficiency is paramount, especially for Apple IIGS

---

## Summary

Motorola-6800 and WDC-65816 represent different points in the spectrum of processor design. The 8-bit Motorola-6800 and 16/8-bit WDC-65816 serve different scale requirements. Motorola-6800 excels in constrained environments where every transistor counts, while WDC-65816 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
