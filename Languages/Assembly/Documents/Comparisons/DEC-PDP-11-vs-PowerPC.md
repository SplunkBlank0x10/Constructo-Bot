# DEC-PDP-11 vs PowerPC

## Overview

This document compares **DEC-PDP-11** and **PowerPC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | PowerPC |
|-----------|----------|----------|
| **Bits** | 16 | 32/64 |
| **Type** | CISC | RISC |
| **Year** | 1970 | 1991 |
| **Creator** | Digital Equipment Corporation (DEC) | AIM Alliance (Apple, IBM, Motorola) |
| **Endianness** | Little | Big (default), supports little |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### PowerPC
> *Performance through compiler optimization - 32 GPRs, powerful branches, CR fields*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while PowerPC takes a risc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### PowerPC
32 × 32/64-bit GPRs, 32 × 64-bit FPRs, 8-field CR, LR, CTR

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while PowerPC provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### PowerPC
8-field condition register, branch hints, AltiVec SIMD, Book E for embedded

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### PowerPC
IBM POWER + Motorola 88000 → AIM PowerPC → PowerPC e500/e600 → QorIQ

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### PowerPC
Apple Mac (1994-2006), IBM RS/6000, embedded, automotive, gaming (Xbox 360, PS3, Wii)

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### PowerPC
- **Strengths:** Clean design, good compiler target, AltiVec performance, embedded variants
- **Weaknesses:** Lost desktop to x86, fragmented ecosystem, AIM alliance dissolved

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose PowerPC when:** your application fits its domain (Apple Mac (1994-2006)) and you value its specific strengths

---

## Summary

DEC-PDP-11 and PowerPC represent different points in the spectrum of processor design. Separated by 21 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1970 approach to AIM Alliance (Apple, IBM, Motorola)'s 1991 vision. DEC-PDP-11 carries the constraints and wisdom of its era, while DEC-PDP-11 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
