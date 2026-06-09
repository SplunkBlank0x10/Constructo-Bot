# MIPS vs MIPS64

## Overview

This document compares **MIPS** and **MIPS64**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS | MIPS64 |
|-----------|----------|----------|
| **Bits** | 32 | 64 |
| **Type** | RISC | RISC |
| **Year** | 1981 | 1995 |
| **Creator** | Stanford University (MIPS Computer Systems) | MIPS Technologies / Silicon Graphics |
| **Endianness** | Bi-endian | Bi-endian |

---

## Design Philosophy

### MIPS
> *Keep pipeline simple, let compiler schedule - no hardware interlocks*

### MIPS64
> *Extend, don't redesign - same principles, larger scale*

**Key Difference:** MIPS approaches computing with a risc philosophy, while MIPS64 takes a risc approach. 

---

## Register Architecture

### MIPS
32 × 32-bit ($0 hardwired to zero), HI/LO for multiply

### MIPS64
32 × 64-bit, same HI/LO, same delay slots

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### MIPS
Branch delay slots, load/store architecture, coprocessor interface, academic clean design

### MIPS64
Backward compatible with MIPS32, N64 ABI, same pipeline philosophy

---

## Historical Lineage

### MIPS
Stanford research → MIPS I → MIPS II → MIPS III (64-bit) → MIPS32/64

### MIPS64
MIPS I → MIPS III → MIPS64

---

## Primary Use Cases

### MIPS
Workstations (SGI), embedded, gaming (PS1, PS2, N64), education

### MIPS64
High-end workstations, servers, some embedded

---

## Strengths & Weaknesses

### MIPS
- **Strengths:** Clean design, easy to teach, good compiler target, proven performance
- **Weaknesses:** Branch delay slots are burden, licensing issues, overshadowed by ARM/RISC-V

### MIPS64
- **Strengths:** Continuity, familiar toolchain, 64-bit when needed
- **Weaknesses:** Carried MIPS32 baggage, delay slots still burden, market decline

---

## When to Choose Which

**Choose MIPS when:** your application fits its domain (Workstations (SGI)) and you value its specific strengths

**Choose MIPS64 when:** your application fits its domain (High-end workstations) and you value its specific strengths

---

## Summary

MIPS and MIPS64 represent different points in the spectrum of processor design. The 32-bit MIPS and 64-bit MIPS64 serve different scale requirements. MIPS excels in constrained environments where every transistor counts, while MIPS64 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
