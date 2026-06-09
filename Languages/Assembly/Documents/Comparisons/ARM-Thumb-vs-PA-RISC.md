# ARM-Thumb vs PA-RISC

## Overview

This document compares **ARM-Thumb** and **PA-RISC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM-Thumb | PA-RISC |
|-----------|----------|----------|
| **Bits** | 16/32 | 32/64 |
| **Type** | RISC (compressed) | RISC |
| **Year** | 1994 | 1986 |
| **Creator** | ARM Ltd. | Hewlett-Packard |
| **Endianness** | Bi-endian | Big |

---

## Design Philosophy

### ARM-Thumb
> *Code density matters - RISC performance with smaller code*

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

**Key Difference:** ARM-Thumb approaches computing with a risc philosophy, while PA-RISC takes a risc approach. 

---

## Register Architecture

### ARM-Thumb
8 visible (subset of ARM's 16)

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### ARM-Thumb
16-bit fixed instructions, interworking with ARM32, ~30-40% size reduction

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

---

## Historical Lineage

### ARM-Thumb
ARM → Thumb (ARM7TDMI) → Thumb-2 (16/32 mix)

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

---

## Primary Use Cases

### ARM-Thumb
Microcontrollers, memory-constrained embedded, low-cost mobile

### PA-RISC
HP workstations, HP 9000 servers, some embedded

---

## Strengths & Weaknesses

### ARM-Thumb
- **Strengths:** Code density, power efficiency, compatibility with ARM32
- **Weaknesses:** Higher instruction count, more complex interworking

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

---

## When to Choose Which

**Choose ARM-Thumb when:** power efficiency is paramount, especially for Microcontrollers

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

---

## Summary

ARM-Thumb and PA-RISC represent different points in the spectrum of processor design. The 16/32-bit ARM-Thumb and 32/64-bit PA-RISC serve different scale requirements. ARM-Thumb excels in constrained environments where every transistor counts, while PA-RISC provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
