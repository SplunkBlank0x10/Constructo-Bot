# MOS-6502 vs RDNA-GCN

## Overview

This document compares **MOS-6502** and **RDNA-GCN**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MOS-6502 | RDNA-GCN |
|-----------|----------|----------|
| **Bits** | 8 | 32/64 |
| **Type** | CISC | GPU Native ISA (SIMD/SIMT) |
| **Year** | 1975 | 2011 |
| **Creator** | MOS Technology (Chuck Peddle et al.) | AMD |
| **Endianness** | Little | Little |

---

## Design Philosophy

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

### RDNA-GCN
> *Wavefronts over warps - 64 threads (GCN) or 32 (RDNA), scalar/vector separation*

**Key Difference:** MOS-6502 approaches computing with a cisc philosophy, while RDNA-GCN takes a gpu native isa approach. 

---

## Register Architecture

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

### RDNA-GCN
Vector GPRs (VGPRs) + Scalar GPRs (SGPRs), wavefront-wide execution

**Comparison:** MOS-6502 offers minimal registers (minimal-style architecture), while RDNA-GCN provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

### RDNA-GCN
Wavefront execution, execution masks for divergence, flat memory, no hardware stack

---

## Historical Lineage

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

### RDNA-GCN
VLIW (R600) → GCN (scalar/vector) → RDNA (refined for gaming)

---

## Primary Use Cases

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

### RDNA-GCN
AMD graphics, ROCm compute, gaming, some HPC, console GPUs (Xbox, PlayStation)

---

## Strengths & Weaknesses

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

### RDNA-GCN
- **Strengths:** Unified graphics/compute, open ROCm stack, good for gaming workloads
- **Weaknesses:** Complex programming model, wavefront divergence penalty, less mature than CUDA

---

## When to Choose Which

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

**Choose RDNA-GCN when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

MOS-6502 and RDNA-GCN represent different points in the spectrum of processor design. Separated by 36 years, these architectures reflect the evolution from MOS Technology (Chuck Peddle et al.)'s 1975 approach to AMD's 2011 vision. MOS-6502 carries the constraints and wisdom of its era, while MOS-6502 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
