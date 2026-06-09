# DEC-VAX vs IBM-z-Architecture

## Overview

This document compares **DEC-VAX** and **IBM-z-Architecture**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-VAX | IBM-z-Architecture |
|-----------|----------|----------|
| **Bits** | 32 | 64 |
| **Type** | CISC | CISC |
| **Year** | 1977 | 2000 |
| **Creator** | Digital Equipment Corporation (DEC) | IBM |
| **Endianness** | Little | Big |

---

## Design Philosophy

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

### IBM-z-Architecture
> *The architecture that outlives companies - 60+ years backward compatibility*

**Key Difference:** DEC-VAX approaches computing with a cisc philosophy, while IBM-z-Architecture takes a cisc approach. 

---

## Register Architecture

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

### IBM-z-Architecture
16 × 64-bit GPRs, 16 × 64-bit FPRs, 32 × 128-bit vector

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

### IBM-z-Architecture
Hardware transactional memory, cryptographic instructions, RAS as architecture, LPARs

---

## Historical Lineage

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

### IBM-z-Architecture
System/360 → System/370 → ESA/390 → z/Architecture

---

## Primary Use Cases

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

### IBM-z-Architecture
Banking, finance, insurance, government, critical enterprise

---

## Strengths & Weaknesses

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

### IBM-z-Architecture
- **Strengths:** Unmatched reliability, compatibility, security, I/O throughput
- **Weaknesses:** Extremely expensive, proprietary, niche market, complex

---

## When to Choose Which

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose IBM-z-Architecture when:** backward compatibility with massive existing software bases is critical

---

## Summary

DEC-VAX and IBM-z-Architecture represent different points in the spectrum of processor design. Separated by 23 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1977 approach to IBM's 2000 vision. DEC-VAX carries the constraints and wisdom of its era, while DEC-VAX addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
