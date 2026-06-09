# Motorola-68000 vs WDC-65816

## Overview

This document compares **Motorola-68000** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Motorola-68000 | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 32/16 | 16/8 |
| **Type** | CISC | CISC (16-bit 6502 evolution) |
| **Year** | 1979 | 1984 |
| **Creator** | Motorola | Western Design Center (Bill Mensch) |
| **Endianness** | Big | Little |

---

## Design Philosophy

### Motorola-68000
> *Orthogonal elegance - any instruction × any mode × any register, intuitive assembly*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** Motorola-68000 approaches computing with a cisc philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### Motorola-68000
8 × 32-bit data (D0-D7) + 8 × 32-bit address (A0-A7)

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### Motorola-68000
24-bit external address, 16-bit external data, no segmentation, rich addressing modes

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### Motorola-68000
6800 → 68000 → 68020/30/40 → ColdFire (embedded subset)

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### Motorola-68000
Apple Macintosh, Amiga, Atari ST, Sega Genesis, workstations, embedded

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### Motorola-68000
- **Strengths:** Beautifully orthogonal, easy to program, flat memory, fast for era
- **Weaknesses:** Complex microcode, high pin count, eventually lost to x86 in market

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose Motorola-68000 when:** maximum single-thread performance is critical (Apple Macintosh)

**Choose WDC-65816 when:** power efficiency is paramount, especially for Apple IIGS

---

## Summary

Motorola-68000 and WDC-65816 represent different points in the spectrum of processor design. The 16/8-bit WDC-65816 and 32/16-bit Motorola-68000 serve different scale requirements. WDC-65816 excels in constrained environments where every transistor counts, while Motorola-68000 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
