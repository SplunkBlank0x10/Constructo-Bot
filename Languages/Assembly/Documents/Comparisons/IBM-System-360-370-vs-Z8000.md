# IBM-System-360-370 vs Z8000

## Overview

This document compares **IBM-System-360-370** and **Z8000**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | Z8000 |
|-----------|----------|----------|
| **Bits** | 32 | 16 |
| **Type** | CISC | CISC |
| **Year** | 1964 | 1979 |
| **Creator** | IBM | Zilog |
| **Endianness** | Big (EBCDIC) | Big |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### Z8000
> *16-bit done right - more regular than 8086, flexible segmented or flat*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while Z8000 takes a cisc approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### Z8000
16 × 16-bit (pairable to 32-bit), two stack pointers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### Z8000
Segmented (Z8001) or non-segmented (Z8002), string instructions, 23-bit addressing

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### Z8000
Z80 → Z8000 (16-bit) → Z80000 (32-bit, rare) → discontinued

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### Z8000
Industrial control, military, some Unix workstations, embedded

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### Z8000
- **Strengths:** Clean design, orthogonal, flexible addressing, good for systems programming
- **Weaknesses:** Late to market, no software ecosystem, x86 won, discontinued

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose Z8000 when:** your application fits its domain (Industrial control) and you value its specific strengths

---

## Summary

IBM-System-360-370 and Z8000 represent different points in the spectrum of processor design. The 16-bit Z8000 and 32-bit IBM-System-360-370 serve different scale requirements. Z8000 excels in constrained environments where every transistor counts, while IBM-System-360-370 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
