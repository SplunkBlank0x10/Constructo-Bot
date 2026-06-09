# IBM-System-360-370 vs IBM-z-Architecture

## Overview

This document compares **IBM-System-360-370** and **IBM-z-Architecture**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | IBM-z-Architecture |
|-----------|----------|----------|
| **Bits** | 32 | 64 |
| **Type** | CISC | CISC |
| **Year** | 1964 | 2000 |
| **Creator** | IBM | IBM |
| **Endianness** | Big (EBCDIC) | Big |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### IBM-z-Architecture
> *The architecture that outlives companies - 60+ years backward compatibility*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while IBM-z-Architecture takes a cisc approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### IBM-z-Architecture
16 × 64-bit GPRs, 16 × 64-bit FPRs, 32 × 128-bit vector

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### IBM-z-Architecture
Hardware transactional memory, cryptographic instructions, RAS as architecture, LPARs

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### IBM-z-Architecture
System/360 → System/370 → ESA/390 → z/Architecture

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### IBM-z-Architecture
Banking, finance, insurance, government, critical enterprise

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### IBM-z-Architecture
- **Strengths:** Unmatched reliability, compatibility, security, I/O throughput
- **Weaknesses:** Extremely expensive, proprietary, niche market, complex

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose IBM-z-Architecture when:** backward compatibility with massive existing software bases is critical

---

## Summary

IBM-System-360-370 and IBM-z-Architecture represent different points in the spectrum of processor design. Separated by 36 years, these architectures reflect the evolution from IBM's 1964 approach to IBM's 2000 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
