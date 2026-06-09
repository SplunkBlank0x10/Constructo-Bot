# MIPS64 vs Z8000

## Overview

This document compares **MIPS64** and **Z8000**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS64 | Z8000 |
|-----------|----------|----------|
| **Bits** | 64 | 16 |
| **Type** | RISC | CISC |
| **Year** | 1995 | 1979 |
| **Creator** | MIPS Technologies / Silicon Graphics | Zilog |
| **Endianness** | Bi-endian | Big |

---

## Design Philosophy

### MIPS64
> *Extend, don't redesign - same principles, larger scale*

### Z8000
> *16-bit done right - more regular than 8086, flexible segmented or flat*

**Key Difference:** MIPS64 approaches computing with a risc philosophy, while Z8000 takes a cisc approach. 

---

## Register Architecture

### MIPS64
32 × 64-bit, same HI/LO, same delay slots

### Z8000
16 × 16-bit (pairable to 32-bit), two stack pointers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### MIPS64
Backward compatible with MIPS32, N64 ABI, same pipeline philosophy

### Z8000
Segmented (Z8001) or non-segmented (Z8002), string instructions, 23-bit addressing

---

## Historical Lineage

### MIPS64
MIPS I → MIPS III → MIPS64

### Z8000
Z80 → Z8000 (16-bit) → Z80000 (32-bit, rare) → discontinued

---

## Primary Use Cases

### MIPS64
High-end workstations, servers, some embedded

### Z8000
Industrial control, military, some Unix workstations, embedded

---

## Strengths & Weaknesses

### MIPS64
- **Strengths:** Continuity, familiar toolchain, 64-bit when needed
- **Weaknesses:** Carried MIPS32 baggage, delay slots still burden, market decline

### Z8000
- **Strengths:** Clean design, orthogonal, flexible addressing, good for systems programming
- **Weaknesses:** Late to market, no software ecosystem, x86 won, discontinued

---

## When to Choose Which

**Choose MIPS64 when:** your application fits its domain (High-end workstations) and you value its specific strengths

**Choose Z8000 when:** your application fits its domain (Industrial control) and you value its specific strengths

---

## Summary

MIPS64 and Z8000 represent different points in the spectrum of processor design. The 16-bit Z8000 and 64-bit MIPS64 serve different scale requirements. Z8000 excels in constrained environments where every transistor counts, while MIPS64 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
