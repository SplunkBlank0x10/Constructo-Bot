# RDNA-GCN vs WDC-65C02

## Overview

This document compares **RDNA-GCN** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | RDNA-GCN | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 32/64 | 8 |
| **Type** | GPU Native ISA (SIMD/SIMT) | CISC (CMOS enhanced 6502) |
| **Year** | 2011 | 1978 |
| **Creator** | AMD | Western Design Center (Bill Mensch) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### RDNA-GCN
> *Wavefronts over warps - 64 threads (GCN) or 32 (RDNA), scalar/vector separation*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** RDNA-GCN approaches computing with a gpu native isa philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### RDNA-GCN
Vector GPRs (VGPRs) + Scalar GPRs (SGPRs), wavefront-wide execution

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** Both architectures provide a few-register programming model, though the specific organization differs significantly.

---

## Notable Features

### RDNA-GCN
Wavefront execution, execution masks for divergence, flat memory, no hardware stack

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### RDNA-GCN
VLIW (R600) → GCN (scalar/vector) → RDNA (refined for gaming)

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### RDNA-GCN
AMD graphics, ROCm compute, gaming, some HPC, console GPUs (Xbox, PlayStation)

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### RDNA-GCN
- **Strengths:** Unified graphics/compute, open ROCm stack, good for gaming workloads
- **Weaknesses:** Complex programming model, wavefront divergence penalty, less mature than CUDA

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose RDNA-GCN when:** you need an open, royalty-free ISA with no licensing constraints

**Choose WDC-65C02 when:** power efficiency is paramount, especially for Apple IIc

---

## Summary

RDNA-GCN and WDC-65C02 represent different points in the spectrum of processor design. Separated by 33 years, these architectures reflect the evolution from Western Design Center (Bill Mensch)'s 1978 approach to AMD's 2011 vision. WDC-65C02 carries the constraints and wisdom of its era, while WDC-65C02 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
