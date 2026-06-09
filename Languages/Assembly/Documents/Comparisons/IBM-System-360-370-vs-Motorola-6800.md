# IBM-System-360-370 vs Motorola-6800

## Overview

This document compares **IBM-System-360-370** and **Motorola-6800**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | Motorola-6800 |
|-----------|----------|----------|
| **Bits** | 32 | 8 |
| **Type** | CISC | CISC |
| **Year** | 1964 | 1974 |
| **Creator** | IBM | Motorola |
| **Endianness** | Big (EBCDIC) | Big |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### Motorola-6800
> *Minimal viable computing - simple enough to understand, 5V single supply*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while Motorola-6800 takes a cisc approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### Motorola-6800
A, B (accumulators), X (index), SP, PC

**Comparison:** IBM-System-360-370 offers many registers (many-style architecture), while Motorola-6800 provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### Motorola-6800
Single 5V supply (vs Intel's 3-voltage), 64KB space, influenced 6502

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### Motorola-6800
6800 → 6809 (enhanced) → 68000 (16/32-bit leap)

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### Motorola-6800
Automotive, industrial control, early personal computers, education

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### Motorola-6800
- **Strengths:** Simple, reliable, single supply, good interrupt handling, regular instruction set
- **Weaknesses:** Limited registers, soon overshadowed by 6502 (cheaper) and Z80 (more capable)

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose Motorola-6800 when:** fault tolerance and reliability are non-negotiable (e.g., Automotive)

---

## Summary

IBM-System-360-370 and Motorola-6800 represent different points in the spectrum of processor design. The 8-bit Motorola-6800 and 32-bit IBM-System-360-370 serve different scale requirements. Motorola-6800 excels in constrained environments where every transistor counts, while IBM-System-360-370 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
