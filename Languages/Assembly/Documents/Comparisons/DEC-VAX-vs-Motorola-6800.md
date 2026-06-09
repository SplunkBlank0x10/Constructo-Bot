# DEC-VAX vs Motorola-6800

## Overview

This document compares **DEC-VAX** and **Motorola-6800**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-VAX | Motorola-6800 |
|-----------|----------|----------|
| **Bits** | 32 | 8 |
| **Type** | CISC | CISC |
| **Year** | 1977 | 1974 |
| **Creator** | Digital Equipment Corporation (DEC) | Motorola |
| **Endianness** | Little | Big |

---

## Design Philosophy

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

### Motorola-6800
> *Minimal viable computing - simple enough to understand, 5V single supply*

**Key Difference:** DEC-VAX approaches computing with a cisc philosophy, while Motorola-6800 takes a cisc approach. 

---

## Register Architecture

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

### Motorola-6800
A, B (accumulators), X (index), SP, PC

**Comparison:** DEC-VAX offers many registers (many-style architecture), while Motorola-6800 provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

### Motorola-6800
Single 5V supply (vs Intel's 3-voltage), 64KB space, influenced 6502

---

## Historical Lineage

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

### Motorola-6800
6800 → 6809 (enhanced) → 68000 (16/32-bit leap)

---

## Primary Use Cases

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

### Motorola-6800
Automotive, industrial control, early personal computers, education

---

## Strengths & Weaknesses

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

### Motorola-6800
- **Strengths:** Simple, reliable, single supply, good interrupt handling, regular instruction set
- **Weaknesses:** Limited registers, soon overshadowed by 6502 (cheaper) and Z80 (more capable)

---

## When to Choose Which

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose Motorola-6800 when:** fault tolerance and reliability are non-negotiable (e.g., Automotive)

---

## Summary

DEC-VAX and Motorola-6800 represent different points in the spectrum of processor design. The 8-bit Motorola-6800 and 32-bit DEC-VAX serve different scale requirements. Motorola-6800 excels in constrained environments where every transistor counts, while DEC-VAX provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
