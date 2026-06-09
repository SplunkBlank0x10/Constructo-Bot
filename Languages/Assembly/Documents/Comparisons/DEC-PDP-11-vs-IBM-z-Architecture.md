# DEC-PDP-11 vs IBM-z-Architecture

## Overview

This document compares **DEC-PDP-11** and **IBM-z-Architecture**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | IBM-z-Architecture |
|-----------|----------|----------|
| **Bits** | 16 | 64 |
| **Type** | CISC | CISC |
| **Year** | 1970 | 2000 |
| **Creator** | Digital Equipment Corporation (DEC) | IBM |
| **Endianness** | Little | Big |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### IBM-z-Architecture
> *The architecture that outlives companies - 60+ years backward compatibility*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while IBM-z-Architecture takes a cisc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### IBM-z-Architecture
16 × 64-bit GPRs, 16 × 64-bit FPRs, 32 × 128-bit vector

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while IBM-z-Architecture provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### IBM-z-Architecture
Hardware transactional memory, cryptographic instructions, RAS as architecture, LPARs

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### IBM-z-Architecture
System/360 → System/370 → ESA/390 → z/Architecture

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### IBM-z-Architecture
Banking, finance, insurance, government, critical enterprise

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### IBM-z-Architecture
- **Strengths:** Unmatched reliability, compatibility, security, I/O throughput
- **Weaknesses:** Extremely expensive, proprietary, niche market, complex

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose IBM-z-Architecture when:** backward compatibility with massive existing software bases is critical

---

## Summary

DEC-PDP-11 and IBM-z-Architecture represent different points in the spectrum of processor design. Separated by 30 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1970 approach to IBM's 2000 vision. DEC-PDP-11 carries the constraints and wisdom of its era, while DEC-PDP-11 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
