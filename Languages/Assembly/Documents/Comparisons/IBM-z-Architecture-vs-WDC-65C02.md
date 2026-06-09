# IBM-z-Architecture vs WDC-65C02

## Overview

This document compares **IBM-z-Architecture** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-z-Architecture | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 64 | 8 |
| **Type** | CISC | CISC (CMOS enhanced 6502) |
| **Year** | 2000 | 1978 |
| **Creator** | IBM | Western Design Center (Bill Mensch) |
| **Endianness** | Big | Little |

---

## Design Philosophy

### IBM-z-Architecture
> *The architecture that outlives companies - 60+ years backward compatibility*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** IBM-z-Architecture approaches computing with a cisc philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### IBM-z-Architecture
16 × 64-bit GPRs, 16 × 64-bit FPRs, 32 × 128-bit vector

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** IBM-z-Architecture offers many registers (many-style architecture), while WDC-65C02 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### IBM-z-Architecture
Hardware transactional memory, cryptographic instructions, RAS as architecture, LPARs

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### IBM-z-Architecture
System/360 → System/370 → ESA/390 → z/Architecture

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### IBM-z-Architecture
Banking, finance, insurance, government, critical enterprise

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### IBM-z-Architecture
- **Strengths:** Unmatched reliability, compatibility, security, I/O throughput
- **Weaknesses:** Extremely expensive, proprietary, niche market, complex

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose IBM-z-Architecture when:** backward compatibility with massive existing software bases is critical

**Choose WDC-65C02 when:** power efficiency is paramount, especially for Apple IIc

---

## Summary

IBM-z-Architecture and WDC-65C02 represent different points in the spectrum of processor design. Separated by 22 years, these architectures reflect the evolution from Western Design Center (Bill Mensch)'s 1978 approach to IBM's 2000 vision. WDC-65C02 carries the constraints and wisdom of its era, while WDC-65C02 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
