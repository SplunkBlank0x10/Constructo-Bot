# IBM-System-360-370 vs SPARCv9

## Overview

This document compares **IBM-System-360-370** and **SPARCv9**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | SPARCv9 |
|-----------|----------|----------|
| **Bits** | 32 | 64 |
| **Type** | CISC | RISC |
| **Year** | 1964 | 1993 |
| **Creator** | IBM | Sun Microsystems / SPARC International |
| **Endianness** | Big (EBCDIC) | Big (default), little supported |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### SPARCv9
> *Extend the windows - preserve SPARC mechanism, adapt to 64-bit servers*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while SPARCv9 takes a risc approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### SPARCv9
64-bit, more windows available, same window mechanism

**Comparison:** IBM-System-360-370 offers many registers (many-style architecture), while SPARCv9 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### SPARCv9
VIS SIMD, little-endian option, prefetch, conditional moves, 64-bit addressing

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### SPARCv9
SPARC V8 → SPARCv9 → UltraSPARC → Rock (cancelled) → SPARC64 (Fujitsu)

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### SPARCv9
Sun servers, Fujitsu supercomputers (K computer), enterprise

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### SPARCv9
- **Strengths:** 64-bit SPARC, VIS performance, proven in enterprise, Fujitsu continuation
- **Weaknesses:** Sun's demise, niche market now, x86-64 dominance in servers

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose SPARCv9 when:** your application fits its domain (Sun servers) and you value its specific strengths

---

## Summary

IBM-System-360-370 and SPARCv9 represent different points in the spectrum of processor design. Separated by 29 years, these architectures reflect the evolution from IBM's 1964 approach to Sun Microsystems / SPARC International's 1993 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
