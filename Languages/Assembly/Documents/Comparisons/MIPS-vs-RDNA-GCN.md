# MIPS vs RDNA-GCN

## Overview

This document compares **MIPS** and **RDNA-GCN**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS | RDNA-GCN |
|-----------|----------|----------|
| **Bits** | 32 | 32/64 |
| **Type** | RISC | GPU Native ISA (SIMD/SIMT) |
| **Year** | 1981 | 2011 |
| **Creator** | Stanford University (MIPS Computer Systems) | AMD |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### MIPS
> *Keep pipeline simple, let compiler schedule - no hardware interlocks*

### RDNA-GCN
> *Wavefronts over warps - 64 threads (GCN) or 32 (RDNA), scalar/vector separation*

**Key Difference:** MIPS approaches computing with a risc philosophy, while RDNA-GCN takes a gpu native isa approach. 

---

## Register Architecture

### MIPS
32 × 32-bit ($0 hardwired to zero), HI/LO for multiply

### RDNA-GCN
Vector GPRs (VGPRs) + Scalar GPRs (SGPRs), wavefront-wide execution

**Comparison:** MIPS offers many registers (many-style architecture), while RDNA-GCN provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MIPS
Branch delay slots, load/store architecture, coprocessor interface, academic clean design

### RDNA-GCN
Wavefront execution, execution masks for divergence, flat memory, no hardware stack

---

## Historical Lineage

### MIPS
Stanford research → MIPS I → MIPS II → MIPS III (64-bit) → MIPS32/64

### RDNA-GCN
VLIW (R600) → GCN (scalar/vector) → RDNA (refined for gaming)

---

## Primary Use Cases

### MIPS
Workstations (SGI), embedded, gaming (PS1, PS2, N64), education

### RDNA-GCN
AMD graphics, ROCm compute, gaming, some HPC, console GPUs (Xbox, PlayStation)

---

## Strengths & Weaknesses

### MIPS
- **Strengths:** Clean design, easy to teach, good compiler target, proven performance
- **Weaknesses:** Branch delay slots are burden, licensing issues, overshadowed by ARM/RISC-V

### RDNA-GCN
- **Strengths:** Unified graphics/compute, open ROCm stack, good for gaming workloads
- **Weaknesses:** Complex programming model, wavefront divergence penalty, less mature than CUDA

---

## When to Choose Which

**Choose MIPS when:** your application fits its domain (Workstations (SGI)) and you value its specific strengths

**Choose RDNA-GCN when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

MIPS and RDNA-GCN represent different points in the spectrum of processor design. Separated by 30 years, these architectures reflect the evolution from Stanford University (MIPS Computer Systems)'s 1981 approach to AMD's 2011 vision. MIPS carries the constraints and wisdom of its era, while MIPS addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
