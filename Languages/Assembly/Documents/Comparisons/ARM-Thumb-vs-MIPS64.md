# ARM-Thumb vs MIPS64

## Overview

This document compares **ARM-Thumb** and **MIPS64**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM-Thumb | MIPS64 |
|-----------|----------|----------|
| **Bits** | 16/32 | 64 |
| **Type** | RISC (compressed) | RISC |
| **Year** | 1994 | 1995 |
| **Creator** | ARM Ltd. | MIPS Technologies / Silicon Graphics |
| **Endianness** | Bi-endian | Bi-endian |

---

## Design Philosophy

### ARM-Thumb
> *Code density matters - RISC performance with smaller code*

### MIPS64
> *Extend, don't redesign - same principles, larger scale*

**Key Difference:** ARM-Thumb approaches computing with a risc philosophy, while MIPS64 takes a risc approach. 

---

## Register Architecture

### ARM-Thumb
8 visible (subset of ARM's 16)

### MIPS64
32 × 64-bit, same HI/LO, same delay slots

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### ARM-Thumb
16-bit fixed instructions, interworking with ARM32, ~30-40% size reduction

### MIPS64
Backward compatible with MIPS32, N64 ABI, same pipeline philosophy

---

## Historical Lineage

### ARM-Thumb
ARM → Thumb (ARM7TDMI) → Thumb-2 (16/32 mix)

### MIPS64
MIPS I → MIPS III → MIPS64

---

## Primary Use Cases

### ARM-Thumb
Microcontrollers, memory-constrained embedded, low-cost mobile

### MIPS64
High-end workstations, servers, some embedded

---

## Strengths & Weaknesses

### ARM-Thumb
- **Strengths:** Code density, power efficiency, compatibility with ARM32
- **Weaknesses:** Higher instruction count, more complex interworking

### MIPS64
- **Strengths:** Continuity, familiar toolchain, 64-bit when needed
- **Weaknesses:** Carried MIPS32 baggage, delay slots still burden, market decline

---

## When to Choose Which

**Choose ARM-Thumb when:** power efficiency is paramount, especially for Microcontrollers

**Choose MIPS64 when:** your application fits its domain (High-end workstations) and you value its specific strengths

---

## Summary

ARM-Thumb and MIPS64 represent different points in the spectrum of processor design. The 16/32-bit ARM-Thumb and 64-bit MIPS64 serve different scale requirements. ARM-Thumb excels in constrained environments where every transistor counts, while MIPS64 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
