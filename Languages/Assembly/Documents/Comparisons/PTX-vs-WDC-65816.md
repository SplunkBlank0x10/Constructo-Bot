# PTX vs WDC-65816

## Overview

This document compares **PTX** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PTX | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 32/64 | 16/8 |
| **Type** | GPU Virtual ISA (SIMT) | CISC (16-bit 6502 evolution) |
| **Year** | 2006 | 1984 |
| **Creator** | NVIDIA | Western Design Center (Bill Mensch) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### PTX
> *Parallelism at massive scale - thousands of threads, latency hidden by switching*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** PTX approaches computing with a gpu virtual isa philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### PTX
Thousands of virtual registers (allocated to hardware physically)

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** PTX offers few registers (few-style architecture), while WDC-65816 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### PTX
Virtual ISA compiled to SASS, SIMT execution, thread hierarchy, no hardware stack

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### PTX
GPU assembly → PTX (with CUDA) → evolving with each GPU generation

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### PTX
GPU computing, CUDA, machine learning, graphics, scientific simulation

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### PTX
- **Strengths:** Portable across GPU generations, optimizable, massive parallelism, mature toolchain
- **Weaknesses:** NVIDIA-only, not hardware ISA, requires NVIDIA GPU, vendor lock-in

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose PTX when:** massive data parallelism is required (GPU computing)

**Choose WDC-65816 when:** power efficiency is paramount, especially for Apple IIGS

---

## Summary

PTX and WDC-65816 represent different points in the spectrum of processor design. Separated by 22 years, these architectures reflect the evolution from Western Design Center (Bill Mensch)'s 1984 approach to NVIDIA's 2006 vision. WDC-65816 carries the constraints and wisdom of its era, while WDC-65816 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
