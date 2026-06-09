# AArch64 vs WDC-65816

## Overview

This document compares **AArch64** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AArch64 | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 64 | 16/8 |
| **Type** | RISC | CISC (16-bit 6502 evolution) |
| **Year** | 2011 | 1984 |
| **Creator** | ARM Ltd. | Western Design Center (Bill Mensch) |
| **Endianness** | Bi-endian (mostly little in practice) | Little |

---

## Design Philosophy

### AArch64
> *Clean break from 32-bit ARM, learn from 30 years of experience*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** AArch64 approaches computing with a risc philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### AArch64
31 GPRs + zero register, dedicated SP/PC

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** AArch64 offers few registers (few-style architecture), while WDC-65816 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### AArch64
No predication (mostly), SVE scalable vectors, 4 exception levels

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### AArch64
ARM → ARMv7 → ARMv8-A (AArch64)

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### AArch64
Smartphones, servers, Apple Silicon, embedded

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### AArch64
- **Strengths:** Power efficiency, clean 64-bit design, massive ecosystem
- **Weaknesses:** Complex history, some legacy baggage from ARM32

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose AArch64 when:** your application fits its domain (Smartphones) and you value its specific strengths

**Choose WDC-65816 when:** backward compatibility with massive existing software bases is critical

---

## Summary

AArch64 and WDC-65816 represent different points in the spectrum of processor design. Separated by 27 years, these architectures reflect the evolution from Western Design Center (Bill Mensch)'s 1984 approach to ARM Ltd.'s 2011 vision. WDC-65816 carries the constraints and wisdom of its era, while WDC-65816 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
