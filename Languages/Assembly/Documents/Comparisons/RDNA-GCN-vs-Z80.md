# RDNA-GCN vs Z80

## Overview

This document compares **RDNA-GCN** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | RDNA-GCN | Z80 |
|-----------|----------|----------|
| **Bits** | 32/64 | 8 |
| **Type** | GPU Native ISA (SIMD/SIMT) | CISC |
| **Year** | 2011 | 1976 |
| **Creator** | AMD | Zilog (Federico Faggin) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### RDNA-GCN
> *Wavefronts over warps - 64 threads (GCN) or 32 (RDNA), scalar/vector separation*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** RDNA-GCN approaches computing with a gpu native isa philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### RDNA-GCN
Vector GPRs (VGPRs) + Scalar GPRs (SGPRs), wavefront-wide execution

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** Both architectures provide a few-register programming model, though the specific organization differs significantly.

---

## Notable Features

### RDNA-GCN
Wavefront execution, execution masks for divergence, flat memory, no hardware stack

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### RDNA-GCN
VLIW (R600) → GCN (scalar/vector) → RDNA (refined for gaming)

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### RDNA-GCN
AMD graphics, ROCm compute, gaming, some HPC, console GPUs (Xbox, PlayStation)

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### RDNA-GCN
- **Strengths:** Unified graphics/compute, open ROCm stack, good for gaming workloads
- **Weaknesses:** Complex programming model, wavefront divergence penalty, less mature than CUDA

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose RDNA-GCN when:** you need an open, royalty-free ISA with no licensing constraints

**Choose Z80 when:** power efficiency is paramount, especially for ZX Spectrum

---

## Summary

RDNA-GCN and Z80 represent different points in the spectrum of processor design. Separated by 35 years, these architectures reflect the evolution from Zilog (Federico Faggin)'s 1976 approach to AMD's 2011 vision. Z80 carries the constraints and wisdom of its era, while Z80 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
