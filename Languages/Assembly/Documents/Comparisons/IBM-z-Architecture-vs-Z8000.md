# IBM-z-Architecture vs Z8000

## Overview

This document compares **IBM-z-Architecture** and **Z8000**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-z-Architecture | Z8000 |
|-----------|----------|----------|
| **Bits** | 64 | 16 |
| **Type** | CISC | CISC |
| **Year** | 2000 | 1979 |
| **Creator** | IBM | Zilog |
| **Endianness** | Big | Big |

---

## Design Philosophy

### IBM-z-Architecture
> *The architecture that outlives companies - 60+ years backward compatibility*

### Z8000
> *16-bit done right - more regular than 8086, flexible segmented or flat*

**Key Difference:** IBM-z-Architecture approaches computing with a cisc philosophy, while Z8000 takes a cisc approach. 

---

## Register Architecture

### IBM-z-Architecture
16 × 64-bit GPRs, 16 × 64-bit FPRs, 32 × 128-bit vector

### Z8000
16 × 16-bit (pairable to 32-bit), two stack pointers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-z-Architecture
Hardware transactional memory, cryptographic instructions, RAS as architecture, LPARs

### Z8000
Segmented (Z8001) or non-segmented (Z8002), string instructions, 23-bit addressing

---

## Historical Lineage

### IBM-z-Architecture
System/360 → System/370 → ESA/390 → z/Architecture

### Z8000
Z80 → Z8000 (16-bit) → Z80000 (32-bit, rare) → discontinued

---

## Primary Use Cases

### IBM-z-Architecture
Banking, finance, insurance, government, critical enterprise

### Z8000
Industrial control, military, some Unix workstations, embedded

---

## Strengths & Weaknesses

### IBM-z-Architecture
- **Strengths:** Unmatched reliability, compatibility, security, I/O throughput
- **Weaknesses:** Extremely expensive, proprietary, niche market, complex

### Z8000
- **Strengths:** Clean design, orthogonal, flexible addressing, good for systems programming
- **Weaknesses:** Late to market, no software ecosystem, x86 won, discontinued

---

## When to Choose Which

**Choose IBM-z-Architecture when:** backward compatibility with massive existing software bases is critical

**Choose Z8000 when:** your application fits its domain (Industrial control) and you value its specific strengths

---

## Summary

IBM-z-Architecture and Z8000 represent different points in the spectrum of processor design. Separated by 21 years, these architectures reflect the evolution from Zilog's 1979 approach to IBM's 2000 vision. Z8000 carries the constraints and wisdom of its era, while Z8000 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
