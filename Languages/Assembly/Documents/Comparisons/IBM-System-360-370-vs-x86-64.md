# IBM-System-360-370 vs x86-64

## Overview

This document compares **IBM-System-360-370** and **x86-64**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | x86-64 |
|-----------|----------|----------|
| **Bits** | 32 | 64 |
| **Type** | CISC | CISC |
| **Year** | 1964 | 2003 |
| **Creator** | IBM | AMD (later adopted by Intel) |
| **Endianness** | Big (EBCDIC) | Little |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### x86-64
> *Pragmatic evolution - keep x86 viable, add modern conveniences, don't break software*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while x86-64 takes a cisc approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### x86-64
16 × 64-bit (RAX-R15), RIP-relative addressing

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### x86-64
Long mode, legacy mode, NX bit, more registers, larger address space, same encoding burden

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### x86-64
x86 → AMD64 (2003) → Intel 64 (2004) → dominant 64-bit ISA

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### x86-64
Dominant server, desktop, laptop, gaming, HPC, cloud

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### x86-64
- **Strengths:** Compatibility + progress, massive ecosystem, performance, software investment
- **Weaknesses:** Inherited x86 complexity, power consumption, security attack surface

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose x86-64 when:** backward compatibility with massive existing software bases is critical

---

## Summary

IBM-System-360-370 and x86-64 represent different points in the spectrum of processor design. Separated by 39 years, these architectures reflect the evolution from IBM's 1964 approach to AMD (later adopted by Intel)'s 2003 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
