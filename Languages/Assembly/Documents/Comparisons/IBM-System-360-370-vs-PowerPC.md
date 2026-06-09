# IBM-System-360-370 vs PowerPC

## Overview

This document compares **IBM-System-360-370** and **PowerPC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | PowerPC |
|-----------|----------|----------|
| **Bits** | 32 | 32/64 |
| **Type** | CISC | RISC |
| **Year** | 1964 | 1991 |
| **Creator** | IBM | AIM Alliance (Apple, IBM, Motorola) |
| **Endianness** | Big (EBCDIC) | Big (default), supports little |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### PowerPC
> *Performance through compiler optimization - 32 GPRs, powerful branches, CR fields*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while PowerPC takes a risc approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### PowerPC
32 × 32/64-bit GPRs, 32 × 64-bit FPRs, 8-field CR, LR, CTR

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### PowerPC
8-field condition register, branch hints, AltiVec SIMD, Book E for embedded

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### PowerPC
IBM POWER + Motorola 88000 → AIM PowerPC → PowerPC e500/e600 → QorIQ

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### PowerPC
Apple Mac (1994-2006), IBM RS/6000, embedded, automotive, gaming (Xbox 360, PS3, Wii)

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### PowerPC
- **Strengths:** Clean design, good compiler target, AltiVec performance, embedded variants
- **Weaknesses:** Lost desktop to x86, fragmented ecosystem, AIM alliance dissolved

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose PowerPC when:** your application fits its domain (Apple Mac (1994-2006)) and you value its specific strengths

---

## Summary

IBM-System-360-370 and PowerPC represent different points in the spectrum of processor design. Separated by 27 years, these architectures reflect the evolution from IBM's 1964 approach to AIM Alliance (Apple, IBM, Motorola)'s 1991 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
