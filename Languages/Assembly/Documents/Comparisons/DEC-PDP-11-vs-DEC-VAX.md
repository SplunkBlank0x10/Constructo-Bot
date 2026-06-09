# DEC-PDP-11 vs DEC-VAX

## Overview

This document compares **DEC-PDP-11** and **DEC-VAX**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | DEC-VAX |
|-----------|----------|----------|
| **Bits** | 16 | 32 |
| **Type** | CISC | CISC |
| **Year** | 1970 | 1977 |
| **Creator** | Digital Equipment Corporation (DEC) | Digital Equipment Corporation (DEC) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while DEC-VAX takes a cisc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while DEC-VAX provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

---

## Summary

DEC-PDP-11 and DEC-VAX represent different points in the spectrum of processor design. The 16-bit DEC-PDP-11 and 32-bit DEC-VAX serve different scale requirements. DEC-PDP-11 excels in constrained environments where every transistor counts, while DEC-VAX provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
