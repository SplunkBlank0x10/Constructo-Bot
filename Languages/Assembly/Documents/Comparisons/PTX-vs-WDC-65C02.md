# PTX vs WDC-65C02

## Overview

This document compares **PTX** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PTX | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 32/64 | 8 |
| **Type** | GPU Virtual ISA (SIMT) | CISC (CMOS enhanced 6502) |
| **Year** | 2006 | 1978 |
| **Creator** | NVIDIA | Western Design Center (Bill Mensch) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### PTX
> *Parallelism at massive scale - thousands of threads, latency hidden by switching*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** PTX approaches computing with a gpu virtual isa philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### PTX
Thousands of virtual registers (allocated to hardware physically)

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** Both architectures provide a few-register programming model, though the specific organization differs significantly.

---

## Notable Features

### PTX
Virtual ISA compiled to SASS, SIMT execution, thread hierarchy, no hardware stack

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### PTX
GPU assembly → PTX (with CUDA) → evolving with each GPU generation

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### PTX
GPU computing, CUDA, machine learning, graphics, scientific simulation

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### PTX
- **Strengths:** Portable across GPU generations, optimizable, massive parallelism, mature toolchain
- **Weaknesses:** NVIDIA-only, not hardware ISA, requires NVIDIA GPU, vendor lock-in

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose PTX when:** massive data parallelism is required (GPU computing)

**Choose WDC-65C02 when:** power efficiency is paramount, especially for Apple IIc

---

## Summary

PTX and WDC-65C02 represent different points in the spectrum of processor design. Separated by 28 years, these architectures reflect the evolution from Western Design Center (Bill Mensch)'s 1978 approach to NVIDIA's 2006 vision. WDC-65C02 carries the constraints and wisdom of its era, while WDC-65C02 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
