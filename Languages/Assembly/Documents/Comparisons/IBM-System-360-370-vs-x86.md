# IBM-System-360-370 vs x86

## Overview

This document compares **IBM-System-360-370** and **x86**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | x86 |
|-----------|----------|----------|
| **Bits** | 32 | 32 |
| **Type** | CISC | CISC |
| **Year** | 1964 | 1985 |
| **Creator** | IBM | Intel |
| **Endianness** | Big (EBCDIC) | Little |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### x86
> *Software longevity through hardware complexity - cruft carries forward*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while x86 takes a cisc approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### x86
8 × 32-bit (EAX-EDX, ESI, EDI, EBP, ESP)

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### x86
Variable-length 1-15 bytes, segmentation, real/protected modes, x87/SSE

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### x86
8086 → 80286 → 80386 → Pentium → Core → x86-64

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### x86
PCs, servers, laptops, dominant general-purpose computing 1985-2000s

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### x86
- **Strengths:** Massive software base, backward compatibility, performance, ecosystem
- **Weaknesses:** Complex decode, legacy baggage, power hungry, security issues from complexity

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose x86 when:** backward compatibility with massive existing software bases is critical

---

## Summary

IBM-System-360-370 and x86 represent different points in the spectrum of processor design. Separated by 21 years, these architectures reflect the evolution from IBM's 1964 approach to Intel's 1985 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
