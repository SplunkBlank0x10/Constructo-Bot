# PTX vs Z80

## Overview

This document compares **PTX** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PTX | Z80 |
|-----------|----------|----------|
| **Bits** | 32/64 | 8 |
| **Type** | GPU Virtual ISA (SIMT) | CISC |
| **Year** | 2006 | 1976 |
| **Creator** | NVIDIA | Zilog (Federico Faggin) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### PTX
> *Parallelism at massive scale - thousands of threads, latency hidden by switching*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** PTX approaches computing with a gpu virtual isa philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### PTX
Thousands of virtual registers (allocated to hardware physically)

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** Both architectures provide a few-register programming model, though the specific organization differs significantly.

---

## Notable Features

### PTX
Virtual ISA compiled to SASS, SIMT execution, thread hierarchy, no hardware stack

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### PTX
GPU assembly → PTX (with CUDA) → evolving with each GPU generation

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### PTX
GPU computing, CUDA, machine learning, graphics, scientific simulation

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### PTX
- **Strengths:** Portable across GPU generations, optimizable, massive parallelism, mature toolchain
- **Weaknesses:** NVIDIA-only, not hardware ISA, requires NVIDIA GPU, vendor lock-in

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose PTX when:** massive data parallelism is required (GPU computing)

**Choose Z80 when:** power efficiency is paramount, especially for ZX Spectrum

---

## Summary

PTX and Z80 represent different points in the spectrum of processor design. Separated by 30 years, these architectures reflect the evolution from Zilog (Federico Faggin)'s 1976 approach to NVIDIA's 2006 vision. Z80 carries the constraints and wisdom of its era, while Z80 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
