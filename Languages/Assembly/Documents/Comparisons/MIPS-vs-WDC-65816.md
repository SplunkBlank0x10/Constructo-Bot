# MIPS vs WDC-65816

## Overview

This document compares **MIPS** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 32 | 16/8 |
| **Type** | RISC | CISC (16-bit 6502 evolution) |
| **Year** | 1981 | 1984 |
| **Creator** | Stanford University (MIPS Computer Systems) | Western Design Center (Bill Mensch) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### MIPS
> *Keep pipeline simple, let compiler schedule - no hardware interlocks*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** MIPS approaches computing with a risc philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### MIPS
32 × 32-bit ($0 hardwired to zero), HI/LO for multiply

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### MIPS
Branch delay slots, load/store architecture, coprocessor interface, academic clean design

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### MIPS
Stanford research → MIPS I → MIPS II → MIPS III (64-bit) → MIPS32/64

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### MIPS
Workstations (SGI), embedded, gaming (PS1, PS2, N64), education

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### MIPS
- **Strengths:** Clean design, easy to teach, good compiler target, proven performance
- **Weaknesses:** Branch delay slots are burden, licensing issues, overshadowed by ARM/RISC-V

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose MIPS when:** your application fits its domain (Workstations (SGI)) and you value its specific strengths

**Choose WDC-65816 when:** power efficiency is paramount, especially for Apple IIGS

---

## Summary

MIPS and WDC-65816 represent different points in the spectrum of processor design. The 16/8-bit WDC-65816 and 32-bit MIPS serve different scale requirements. WDC-65816 excels in constrained environments where every transistor counts, while MIPS provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
