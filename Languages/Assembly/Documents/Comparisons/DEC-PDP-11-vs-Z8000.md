# DEC-PDP-11 vs Z8000

## Overview

This document compares **DEC-PDP-11** and **Z8000**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | Z8000 |
|-----------|----------|----------|
| **Bits** | 16 | 16 |
| **Type** | CISC | CISC |
| **Year** | 1970 | 1979 |
| **Creator** | Digital Equipment Corporation (DEC) | Zilog |
| **Endianness** | Little | Big |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### Z8000
> *16-bit done right - more regular than 8086, flexible segmented or flat*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while Z8000 takes a cisc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### Z8000
16 × 16-bit (pairable to 32-bit), two stack pointers

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while Z8000 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### Z8000
Segmented (Z8001) or non-segmented (Z8002), string instructions, 23-bit addressing

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### Z8000
Z80 → Z8000 (16-bit) → Z80000 (32-bit, rare) → discontinued

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### Z8000
Industrial control, military, some Unix workstations, embedded

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### Z8000
- **Strengths:** Clean design, orthogonal, flexible addressing, good for systems programming
- **Weaknesses:** Late to market, no software ecosystem, x86 won, discontinued

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose Z8000 when:** your application fits its domain (Industrial control) and you value its specific strengths

---

## Summary

DEC-PDP-11 and Z8000 represent different points in the spectrum of processor design. Both DEC-PDP-11 and Z8000 share the CISC design philosophy, yet diverge significantly in implementation details, ecosystem maturity, and target applications. The choice between them often comes down to existing codebases, available tools, and specific performance requirements rather than fundamental architectural superiority.

---

*Generated for the Assembly Hello World Collection*
