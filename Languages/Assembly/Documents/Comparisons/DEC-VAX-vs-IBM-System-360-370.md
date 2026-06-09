# DEC-VAX vs IBM-System-360-370

## Overview

This document compares **DEC-VAX** and **IBM-System-360-370**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-VAX | IBM-System-360-370 |
|-----------|----------|----------|
| **Bits** | 32 | 32 |
| **Type** | CISC | CISC |
| **Year** | 1977 | 1964 |
| **Creator** | Digital Equipment Corporation (DEC) | IBM |
| **Endianness** | Little | Big (EBCDIC) |

---

## Design Philosophy

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

**Key Difference:** DEC-VAX approaches computing with a cisc philosophy, while IBM-System-360-370 takes a cisc approach. 

---

## Register Architecture

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

---

## Historical Lineage

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

---

## Primary Use Cases

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

---

## Strengths & Weaknesses

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

---

## When to Choose Which

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

---

## Summary

DEC-VAX and IBM-System-360-370 represent different points in the spectrum of processor design. Both DEC-VAX and IBM-System-360-370 share the CISC design philosophy, yet diverge significantly in implementation details, ecosystem maturity, and target applications. The choice between them often comes down to existing codebases, available tools, and specific performance requirements rather than fundamental architectural superiority.

---

*Generated for the Assembly Hello World Collection*
