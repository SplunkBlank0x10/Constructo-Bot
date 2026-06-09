# DEC-Alpha vs DEC-PDP-11

## Overview

This document compares **DEC-Alpha** and **DEC-PDP-11**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-Alpha | DEC-PDP-11 |
|-----------|----------|----------|
| **Bits** | 64 | 16 |
| **Type** | RISC | CISC |
| **Year** | 1992 | 1970 |
| **Creator** | Digital Equipment Corporation (DEC) | Digital Equipment Corporation (DEC) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-Alpha
> *64 bits, no compromises - pure 64-bit from scratch, no legacy*

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

**Key Difference:** DEC-Alpha approaches computing with a risc philosophy, while DEC-PDP-11 takes a cisc approach. 

---

## Register Architecture

### DEC-Alpha
32 integer + 32 FP (R31/F31 hardwired to zero)

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

**Comparison:** DEC-Alpha offers many registers (many-style architecture), while DEC-PDP-11 provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-Alpha
No condition codes, no byte/halfword loads originally, designed for extreme clock speeds

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

---

## Historical Lineage

### DEC-Alpha
Clean sheet design, influenced by MIPS experience

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

---

## Primary Use Cases

### DEC-Alpha
High-end workstations, servers, scientific computing (Cray-like)

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

---

## Strengths & Weaknesses

### DEC-Alpha
- **Strengths:** Blazing fast for its era, clean design, excellent 64-bit implementation
- **Weaknesses:** DEC's demise, no 32-bit mode, compiler complexity

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

---

## When to Choose Which

**Choose DEC-Alpha when:** maximum single-thread performance is critical (High-end workstations)

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

---

## Summary

DEC-Alpha and DEC-PDP-11 represent different points in the spectrum of processor design. Separated by 22 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1970 approach to Digital Equipment Corporation (DEC)'s 1992 vision. DEC-PDP-11 carries the constraints and wisdom of its era, while DEC-PDP-11 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
