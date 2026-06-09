# IBM-z-Architecture vs MOS-6502

## Overview

This document compares **IBM-z-Architecture** and **MOS-6502**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-z-Architecture | MOS-6502 |
|-----------|----------|----------|
| **Bits** | 64 | 8 |
| **Type** | CISC | CISC |
| **Year** | 2000 | 1975 |
| **Creator** | IBM | MOS Technology (Chuck Peddle et al.) |
| **Endianness** | Big | Little |

---

## Design Philosophy

### IBM-z-Architecture
> *The architecture that outlives companies - 60+ years backward compatibility*

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

**Key Difference:** IBM-z-Architecture approaches computing with a cisc philosophy, while MOS-6502 takes a cisc approach. 

---

## Register Architecture

### IBM-z-Architecture
16 × 64-bit GPRs, 16 × 64-bit FPRs, 32 × 128-bit vector

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

**Comparison:** IBM-z-Architecture offers many registers (many-style architecture), while MOS-6502 provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### IBM-z-Architecture
Hardware transactional memory, cryptographic instructions, RAS as architecture, LPARs

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

---

## Historical Lineage

### IBM-z-Architecture
System/360 → System/370 → ESA/390 → z/Architecture

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

---

## Primary Use Cases

### IBM-z-Architecture
Banking, finance, insurance, government, critical enterprise

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

---

## Strengths & Weaknesses

### IBM-z-Architecture
- **Strengths:** Unmatched reliability, compatibility, security, I/O throughput
- **Weaknesses:** Extremely expensive, proprietary, niche market, complex

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

---

## When to Choose Which

**Choose IBM-z-Architecture when:** backward compatibility with massive existing software bases is critical

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

---

## Summary

IBM-z-Architecture and MOS-6502 represent different points in the spectrum of processor design. Separated by 25 years, these architectures reflect the evolution from MOS Technology (Chuck Peddle et al.)'s 1975 approach to IBM's 2000 vision. MOS-6502 carries the constraints and wisdom of its era, while MOS-6502 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
