# IBM-System-360-370 vs MIPS64

## Overview

This document compares **IBM-System-360-370** and **MIPS64**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | MIPS64 |
|-----------|----------|----------|
| **Bits** | 32 | 64 |
| **Type** | CISC | RISC |
| **Year** | 1964 | 1995 |
| **Creator** | IBM | MIPS Technologies / Silicon Graphics |
| **Endianness** | Big (EBCDIC) | Bi-endian |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### MIPS64
> *Extend, don't redesign - same principles, larger scale*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while MIPS64 takes a risc approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### MIPS64
32 × 64-bit, same HI/LO, same delay slots

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### MIPS64
Backward compatible with MIPS32, N64 ABI, same pipeline philosophy

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### MIPS64
MIPS I → MIPS III → MIPS64

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### MIPS64
High-end workstations, servers, some embedded

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### MIPS64
- **Strengths:** Continuity, familiar toolchain, 64-bit when needed
- **Weaknesses:** Carried MIPS32 baggage, delay slots still burden, market decline

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose MIPS64 when:** your application fits its domain (High-end workstations) and you value its specific strengths

---

## Summary

IBM-System-360-370 and MIPS64 represent different points in the spectrum of processor design. Separated by 31 years, these architectures reflect the evolution from IBM's 1964 approach to MIPS Technologies / Silicon Graphics's 1995 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
