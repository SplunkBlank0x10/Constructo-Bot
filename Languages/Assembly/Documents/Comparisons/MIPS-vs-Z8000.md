# MIPS vs Z8000

## Overview

This document compares **MIPS** and **Z8000**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS | Z8000 |
|-----------|----------|----------|
| **Bits** | 32 | 16 |
| **Type** | RISC | CISC |
| **Year** | 1981 | 1979 |
| **Creator** | Stanford University (MIPS Computer Systems) | Zilog |
| **Endianness** | Bi-endian | Big |

---

## Design Philosophy

### MIPS
> *Keep pipeline simple, let compiler schedule - no hardware interlocks*

### Z8000
> *16-bit done right - more regular than 8086, flexible segmented or flat*

**Key Difference:** MIPS approaches computing with a risc philosophy, while Z8000 takes a cisc approach. 

---

## Register Architecture

### MIPS
32 × 32-bit ($0 hardwired to zero), HI/LO for multiply

### Z8000
16 × 16-bit (pairable to 32-bit), two stack pointers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### MIPS
Branch delay slots, load/store architecture, coprocessor interface, academic clean design

### Z8000
Segmented (Z8001) or non-segmented (Z8002), string instructions, 23-bit addressing

---

## Historical Lineage

### MIPS
Stanford research → MIPS I → MIPS II → MIPS III (64-bit) → MIPS32/64

### Z8000
Z80 → Z8000 (16-bit) → Z80000 (32-bit, rare) → discontinued

---

## Primary Use Cases

### MIPS
Workstations (SGI), embedded, gaming (PS1, PS2, N64), education

### Z8000
Industrial control, military, some Unix workstations, embedded

---

## Strengths & Weaknesses

### MIPS
- **Strengths:** Clean design, easy to teach, good compiler target, proven performance
- **Weaknesses:** Branch delay slots are burden, licensing issues, overshadowed by ARM/RISC-V

### Z8000
- **Strengths:** Clean design, orthogonal, flexible addressing, good for systems programming
- **Weaknesses:** Late to market, no software ecosystem, x86 won, discontinued

---

## When to Choose Which

**Choose MIPS when:** your application fits its domain (Workstations (SGI)) and you value its specific strengths

**Choose Z8000 when:** your application fits its domain (Industrial control) and you value its specific strengths

---

## Summary

MIPS and Z8000 represent different points in the spectrum of processor design. The 16-bit Z8000 and 32-bit MIPS serve different scale requirements. Z8000 excels in constrained environments where every transistor counts, while MIPS provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
