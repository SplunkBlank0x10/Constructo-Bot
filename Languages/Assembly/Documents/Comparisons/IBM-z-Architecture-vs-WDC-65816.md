# IBM-z-Architecture vs WDC-65816

## Overview

This document compares **IBM-z-Architecture** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-z-Architecture | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 64 | 16/8 |
| **Type** | CISC | CISC (16-bit 6502 evolution) |
| **Year** | 2000 | 1984 |
| **Creator** | IBM | Western Design Center (Bill Mensch) |
| **Endianness** | Big | Little |

---

## Design Philosophy

### IBM-z-Architecture
> *The architecture that outlives companies - 60+ years backward compatibility*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** IBM-z-Architecture approaches computing with a cisc philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### IBM-z-Architecture
16 × 64-bit GPRs, 16 × 64-bit FPRs, 32 × 128-bit vector

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-z-Architecture
Hardware transactional memory, cryptographic instructions, RAS as architecture, LPARs

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### IBM-z-Architecture
System/360 → System/370 → ESA/390 → z/Architecture

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### IBM-z-Architecture
Banking, finance, insurance, government, critical enterprise

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### IBM-z-Architecture
- **Strengths:** Unmatched reliability, compatibility, security, I/O throughput
- **Weaknesses:** Extremely expensive, proprietary, niche market, complex

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose IBM-z-Architecture when:** backward compatibility with massive existing software bases is critical

**Choose WDC-65816 when:** power efficiency is paramount, especially for Apple IIGS

---

## Summary

IBM-z-Architecture and WDC-65816 represent different points in the spectrum of processor design. The 16/8-bit WDC-65816 and 64-bit IBM-z-Architecture serve different scale requirements. WDC-65816 excels in constrained environments where every transistor counts, while IBM-z-Architecture provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
