# DEC-PDP-11 vs Motorola-68000

## Overview

This document compares **DEC-PDP-11** and **Motorola-68000**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | Motorola-68000 |
|-----------|----------|----------|
| **Bits** | 16 | 32/16 |
| **Type** | CISC | CISC |
| **Year** | 1970 | 1979 |
| **Creator** | Digital Equipment Corporation (DEC) | Motorola |
| **Endianness** | Little | Big |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### Motorola-68000
> *Orthogonal elegance - any instruction × any mode × any register, intuitive assembly*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while Motorola-68000 takes a cisc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### Motorola-68000
8 × 32-bit data (D0-D7) + 8 × 32-bit address (A0-A7)

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while Motorola-68000 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### Motorola-68000
24-bit external address, 16-bit external data, no segmentation, rich addressing modes

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### Motorola-68000
6800 → 68000 → 68020/30/40 → ColdFire (embedded subset)

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### Motorola-68000
Apple Macintosh, Amiga, Atari ST, Sega Genesis, workstations, embedded

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### Motorola-68000
- **Strengths:** Beautifully orthogonal, easy to program, flat memory, fast for era
- **Weaknesses:** Complex microcode, high pin count, eventually lost to x86 in market

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose Motorola-68000 when:** maximum single-thread performance is critical (Apple Macintosh)

---

## Summary

DEC-PDP-11 and Motorola-68000 represent different points in the spectrum of processor design. The 16-bit DEC-PDP-11 and 32/16-bit Motorola-68000 serve different scale requirements. DEC-PDP-11 excels in constrained environments where every transistor counts, while Motorola-68000 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
