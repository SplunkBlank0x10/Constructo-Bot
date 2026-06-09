# IBM-System-360-370 vs RDNA-GCN

## Overview

This document compares **IBM-System-360-370** and **RDNA-GCN**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | RDNA-GCN |
|-----------|----------|----------|
| **Bits** | 32 | 32/64 |
| **Type** | CISC | GPU Native ISA (SIMD/SIMT) |
| **Year** | 1964 | 2011 |
| **Creator** | IBM | AMD |
| **Endianness** | Big (EBCDIC) | Little |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### RDNA-GCN
> *Wavefronts over warps - 64 threads (GCN) or 32 (RDNA), scalar/vector separation*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while RDNA-GCN takes a gpu native isa approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### RDNA-GCN
Vector GPRs (VGPRs) + Scalar GPRs (SGPRs), wavefront-wide execution

**Comparison:** IBM-System-360-370 offers many registers (many-style architecture), while RDNA-GCN provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### RDNA-GCN
Wavefront execution, execution masks for divergence, flat memory, no hardware stack

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### RDNA-GCN
VLIW (R600) → GCN (scalar/vector) → RDNA (refined for gaming)

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### RDNA-GCN
AMD graphics, ROCm compute, gaming, some HPC, console GPUs (Xbox, PlayStation)

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### RDNA-GCN
- **Strengths:** Unified graphics/compute, open ROCm stack, good for gaming workloads
- **Weaknesses:** Complex programming model, wavefront divergence penalty, less mature than CUDA

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose RDNA-GCN when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

IBM-System-360-370 and RDNA-GCN represent different points in the spectrum of processor design. Separated by 47 years, these architectures reflect the evolution from IBM's 1964 approach to AMD's 2011 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
