# ARM-Thumb vs DEC-VAX

## Overview

This document compares **ARM-Thumb** and **DEC-VAX**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM-Thumb | DEC-VAX |
|-----------|----------|----------|
| **Bits** | 16/32 | 32 |
| **Type** | RISC (compressed) | CISC |
| **Year** | 1994 | 1977 |
| **Creator** | ARM Ltd. | Digital Equipment Corporation (DEC) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### ARM-Thumb
> *Code density matters - RISC performance with smaller code*

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

**Key Difference:** ARM-Thumb approaches computing with a risc philosophy, while DEC-VAX takes a cisc approach. 

---

## Register Architecture

### ARM-Thumb
8 visible (subset of ARM's 16)

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### ARM-Thumb
16-bit fixed instructions, interworking with ARM32, ~30-40% size reduction

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

---

## Historical Lineage

### ARM-Thumb
ARM → Thumb (ARM7TDMI) → Thumb-2 (16/32 mix)

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

---

## Primary Use Cases

### ARM-Thumb
Microcontrollers, memory-constrained embedded, low-cost mobile

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

---

## Strengths & Weaknesses

### ARM-Thumb
- **Strengths:** Code density, power efficiency, compatibility with ARM32
- **Weaknesses:** Higher instruction count, more complex interworking

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

---

## When to Choose Which

**Choose ARM-Thumb when:** power efficiency is paramount, especially for Microcontrollers

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

---

## Summary

ARM-Thumb and DEC-VAX represent different points in the spectrum of processor design. The 16/32-bit ARM-Thumb and 32-bit DEC-VAX serve different scale requirements. ARM-Thumb excels in constrained environments where every transistor counts, while DEC-VAX provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
