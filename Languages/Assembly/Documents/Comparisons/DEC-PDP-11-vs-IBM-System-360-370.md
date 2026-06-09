# DEC-PDP-11 vs IBM-System-360-370

## Overview

This document compares **DEC-PDP-11** and **IBM-System-360-370**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | IBM-System-360-370 |
|-----------|----------|----------|
| **Bits** | 16 | 32 |
| **Type** | CISC | CISC |
| **Year** | 1970 | 1964 |
| **Creator** | Digital Equipment Corporation (DEC) | IBM |
| **Endianness** | Little | Big (EBCDIC) |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while IBM-System-360-370 takes a cisc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while IBM-System-360-370 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

---

## Summary

DEC-PDP-11 and IBM-System-360-370 represent different points in the spectrum of processor design. The 16-bit DEC-PDP-11 and 32-bit IBM-System-360-370 serve different scale requirements. DEC-PDP-11 excels in constrained environments where every transistor counts, while IBM-System-360-370 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
