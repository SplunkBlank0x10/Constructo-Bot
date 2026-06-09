# DEC-PDP-11 vs MIPS64

## Overview

This document compares **DEC-PDP-11** and **MIPS64**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | MIPS64 |
|-----------|----------|----------|
| **Bits** | 16 | 64 |
| **Type** | CISC | RISC |
| **Year** | 1970 | 1995 |
| **Creator** | Digital Equipment Corporation (DEC) | MIPS Technologies / Silicon Graphics |
| **Endianness** | Little | Bi-endian |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### MIPS64
> *Extend, don't redesign - same principles, larger scale*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while MIPS64 takes a risc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### MIPS64
32 × 64-bit, same HI/LO, same delay slots

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while MIPS64 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### MIPS64
Backward compatible with MIPS32, N64 ABI, same pipeline philosophy

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### MIPS64
MIPS I → MIPS III → MIPS64

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### MIPS64
High-end workstations, servers, some embedded

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### MIPS64
- **Strengths:** Continuity, familiar toolchain, 64-bit when needed
- **Weaknesses:** Carried MIPS32 baggage, delay slots still burden, market decline

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose MIPS64 when:** your application fits its domain (High-end workstations) and you value its specific strengths

---

## Summary

DEC-PDP-11 and MIPS64 represent different points in the spectrum of processor design. Separated by 25 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1970 approach to MIPS Technologies / Silicon Graphics's 1995 vision. DEC-PDP-11 carries the constraints and wisdom of its era, while DEC-PDP-11 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
