# IBM-System-360-370 vs Intel-8085

## Overview

This document compares **IBM-System-360-370** and **Intel-8085**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | Intel-8085 |
|-----------|----------|----------|
| **Bits** | 32 | 8 |
| **Type** | CISC | CISC |
| **Year** | 1964 | 1976 |
| **Creator** | IBM | Intel |
| **Endianness** | Big (EBCDIC) | Little |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### Intel-8085
> *Simplify the system - integrate clock, single 5V supply*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while Intel-8085 takes a cisc approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### Intel-8085
Same as 8080 (A,B,C,D,E,H,L)

**Comparison:** IBM-System-360-370 offers many registers (many-style architecture), while Intel-8085 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### Intel-8085
Integrated clock generator, SID/SOD serial lines, 5 interrupts, 8080 compatible

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### Intel-8085
8080 → 8085 (enhanced)

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### Intel-8085
Embedded systems, industrial controllers, educational kits, early portables

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### Intel-8085
- **Strengths:** Simpler system design, lower power, 8080 compatible, integrated features
- **Weaknesses:** Still 8-bit, limited vs 16-bit emerging, soon overshadowed

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose Intel-8085 when:** power efficiency is paramount, especially for Embedded systems

---

## Summary

IBM-System-360-370 and Intel-8085 represent different points in the spectrum of processor design. The 8-bit Intel-8085 and 32-bit IBM-System-360-370 serve different scale requirements. Intel-8085 excels in constrained environments where every transistor counts, while IBM-System-360-370 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
