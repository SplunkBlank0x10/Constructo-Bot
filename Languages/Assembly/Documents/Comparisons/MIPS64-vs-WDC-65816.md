# MIPS64 vs WDC-65816

## Overview

This document compares **MIPS64** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS64 | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 64 | 16/8 |
| **Type** | RISC | CISC (16-bit 6502 evolution) |
| **Year** | 1995 | 1984 |
| **Creator** | MIPS Technologies / Silicon Graphics | Western Design Center (Bill Mensch) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### MIPS64
> *Extend, don't redesign - same principles, larger scale*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** MIPS64 approaches computing with a risc philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### MIPS64
32 × 64-bit, same HI/LO, same delay slots

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### MIPS64
Backward compatible with MIPS32, N64 ABI, same pipeline philosophy

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### MIPS64
MIPS I → MIPS III → MIPS64

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### MIPS64
High-end workstations, servers, some embedded

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### MIPS64
- **Strengths:** Continuity, familiar toolchain, 64-bit when needed
- **Weaknesses:** Carried MIPS32 baggage, delay slots still burden, market decline

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose MIPS64 when:** your application fits its domain (High-end workstations) and you value its specific strengths

**Choose WDC-65816 when:** power efficiency is paramount, especially for Apple IIGS

---

## Summary

MIPS64 and WDC-65816 represent different points in the spectrum of processor design. The 16/8-bit WDC-65816 and 64-bit MIPS64 serve different scale requirements. WDC-65816 excels in constrained environments where every transistor counts, while MIPS64 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
