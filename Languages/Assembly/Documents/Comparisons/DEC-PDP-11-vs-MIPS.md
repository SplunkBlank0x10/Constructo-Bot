# DEC-PDP-11 vs MIPS

## Overview

This document compares **DEC-PDP-11** and **MIPS**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | MIPS |
|-----------|----------|----------|
| **Bits** | 16 | 32 |
| **Type** | CISC | RISC |
| **Year** | 1970 | 1981 |
| **Creator** | Digital Equipment Corporation (DEC) | Stanford University (MIPS Computer Systems) |
| **Endianness** | Little | Bi-endian |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### MIPS
> *Keep pipeline simple, let compiler schedule - no hardware interlocks*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while MIPS takes a risc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### MIPS
32 × 32-bit ($0 hardwired to zero), HI/LO for multiply

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while MIPS provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### MIPS
Branch delay slots, load/store architecture, coprocessor interface, academic clean design

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### MIPS
Stanford research → MIPS I → MIPS II → MIPS III (64-bit) → MIPS32/64

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### MIPS
Workstations (SGI), embedded, gaming (PS1, PS2, N64), education

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### MIPS
- **Strengths:** Clean design, easy to teach, good compiler target, proven performance
- **Weaknesses:** Branch delay slots are burden, licensing issues, overshadowed by ARM/RISC-V

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose MIPS when:** your application fits its domain (Workstations (SGI)) and you value its specific strengths

---

## Summary

DEC-PDP-11 and MIPS represent different points in the spectrum of processor design. The 16-bit DEC-PDP-11 and 32-bit MIPS serve different scale requirements. DEC-PDP-11 excels in constrained environments where every transistor counts, while MIPS provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
