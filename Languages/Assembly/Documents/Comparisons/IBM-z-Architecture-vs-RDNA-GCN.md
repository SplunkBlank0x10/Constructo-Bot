# IBM-z-Architecture vs RDNA-GCN

## Overview

This document compares **IBM-z-Architecture** and **RDNA-GCN**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-z-Architecture | RDNA-GCN |
|-----------|----------|----------|
| **Bits** | 64 | 32/64 |
| **Type** | CISC | GPU Native ISA (SIMD/SIMT) |
| **Year** | 2000 | 2011 |
| **Creator** | IBM | AMD |
| **Endianness** | Big | Little |

---

## Design Philosophy

### IBM-z-Architecture
> *The architecture that outlives companies - 60+ years backward compatibility*

### RDNA-GCN
> *Wavefronts over warps - 64 threads (GCN) or 32 (RDNA), scalar/vector separation*

**Key Difference:** IBM-z-Architecture approaches computing with a cisc philosophy, while RDNA-GCN takes a gpu native isa approach. 

---

## Register Architecture

### IBM-z-Architecture
16 × 64-bit GPRs, 16 × 64-bit FPRs, 32 × 128-bit vector

### RDNA-GCN
Vector GPRs (VGPRs) + Scalar GPRs (SGPRs), wavefront-wide execution

**Comparison:** IBM-z-Architecture offers many registers (many-style architecture), while RDNA-GCN provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### IBM-z-Architecture
Hardware transactional memory, cryptographic instructions, RAS as architecture, LPARs

### RDNA-GCN
Wavefront execution, execution masks for divergence, flat memory, no hardware stack

---

## Historical Lineage

### IBM-z-Architecture
System/360 → System/370 → ESA/390 → z/Architecture

### RDNA-GCN
VLIW (R600) → GCN (scalar/vector) → RDNA (refined for gaming)

---

## Primary Use Cases

### IBM-z-Architecture
Banking, finance, insurance, government, critical enterprise

### RDNA-GCN
AMD graphics, ROCm compute, gaming, some HPC, console GPUs (Xbox, PlayStation)

---

## Strengths & Weaknesses

### IBM-z-Architecture
- **Strengths:** Unmatched reliability, compatibility, security, I/O throughput
- **Weaknesses:** Extremely expensive, proprietary, niche market, complex

### RDNA-GCN
- **Strengths:** Unified graphics/compute, open ROCm stack, good for gaming workloads
- **Weaknesses:** Complex programming model, wavefront divergence penalty, less mature than CUDA

---

## When to Choose Which

**Choose IBM-z-Architecture when:** backward compatibility with massive existing software bases is critical

**Choose RDNA-GCN when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

IBM-z-Architecture and RDNA-GCN represent different points in the spectrum of processor design. The 32/64-bit RDNA-GCN and 64-bit IBM-z-Architecture serve different scale requirements. RDNA-GCN excels in constrained environments where every transistor counts, while IBM-z-Architecture provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
