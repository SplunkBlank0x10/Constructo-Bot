# IBM-System-360-370 vs WDC-65816

## Overview

This document compares **IBM-System-360-370** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 32 | 16/8 |
| **Type** | CISC | CISC (16-bit 6502 evolution) |
| **Year** | 1964 | 1984 |
| **Creator** | IBM | Western Design Center (Bill Mensch) |
| **Endianness** | Big (EBCDIC) | Little |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose WDC-65816 when:** power efficiency is paramount, especially for Apple IIGS

---

## Summary

IBM-System-360-370 and WDC-65816 represent different points in the spectrum of processor design. The 16/8-bit WDC-65816 and 32-bit IBM-System-360-370 serve different scale requirements. WDC-65816 excels in constrained environments where every transistor counts, while IBM-System-360-370 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
