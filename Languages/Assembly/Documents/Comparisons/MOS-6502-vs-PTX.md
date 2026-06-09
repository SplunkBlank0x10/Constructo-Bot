# MOS-6502 vs PTX

## Overview

This document compares **MOS-6502** and **PTX**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MOS-6502 | PTX |
|-----------|----------|----------|
| **Bits** | 8 | 32/64 |
| **Type** | CISC | GPU Virtual ISA (SIMT) |
| **Year** | 1975 | 2006 |
| **Creator** | MOS Technology (Chuck Peddle et al.) | NVIDIA |
| **Endianness** | Little | Little |

---

## Design Philosophy

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

### PTX
> *Parallelism at massive scale - thousands of threads, latency hidden by switching*

**Key Difference:** MOS-6502 approaches computing with a cisc philosophy, while PTX takes a gpu virtual isa approach. 

---

## Register Architecture

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

### PTX
Thousands of virtual registers (allocated to hardware physically)

**Comparison:** MOS-6502 offers minimal registers (minimal-style architecture), while PTX provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

### PTX
Virtual ISA compiled to SASS, SIMT execution, thread hierarchy, no hardware stack

---

## Historical Lineage

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

### PTX
GPU assembly → PTX (with CUDA) → evolving with each GPU generation

---

## Primary Use Cases

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

### PTX
GPU computing, CUDA, machine learning, graphics, scientific simulation

---

## Strengths & Weaknesses

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

### PTX
- **Strengths:** Portable across GPU generations, optimizable, massive parallelism, mature toolchain
- **Weaknesses:** NVIDIA-only, not hardware ISA, requires NVIDIA GPU, vendor lock-in

---

## When to Choose Which

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

**Choose PTX when:** massive data parallelism is required (GPU computing)

---

## Summary

MOS-6502 and PTX represent different points in the spectrum of processor design. Separated by 31 years, these architectures reflect the evolution from MOS Technology (Chuck Peddle et al.)'s 1975 approach to NVIDIA's 2006 vision. MOS-6502 carries the constraints and wisdom of its era, while MOS-6502 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
