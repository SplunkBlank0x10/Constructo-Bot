# IBM-System-360-370 vs PTX

## Overview

This document compares **IBM-System-360-370** and **PTX**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | PTX |
|-----------|----------|----------|
| **Bits** | 32 | 32/64 |
| **Type** | CISC | GPU Virtual ISA (SIMT) |
| **Year** | 1964 | 2006 |
| **Creator** | IBM | NVIDIA |
| **Endianness** | Big (EBCDIC) | Little |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### PTX
> *Parallelism at massive scale - thousands of threads, latency hidden by switching*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while PTX takes a gpu virtual isa approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### PTX
Thousands of virtual registers (allocated to hardware physically)

**Comparison:** IBM-System-360-370 offers many registers (many-style architecture), while PTX provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### PTX
Virtual ISA compiled to SASS, SIMT execution, thread hierarchy, no hardware stack

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### PTX
GPU assembly → PTX (with CUDA) → evolving with each GPU generation

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### PTX
GPU computing, CUDA, machine learning, graphics, scientific simulation

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### PTX
- **Strengths:** Portable across GPU generations, optimizable, massive parallelism, mature toolchain
- **Weaknesses:** NVIDIA-only, not hardware ISA, requires NVIDIA GPU, vendor lock-in

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose PTX when:** massive data parallelism is required (GPU computing)

---

## Summary

IBM-System-360-370 and PTX represent different points in the spectrum of processor design. Separated by 42 years, these architectures reflect the evolution from IBM's 1964 approach to NVIDIA's 2006 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
