# ARM-Thumb vs MIPS

## Overview

This document compares **ARM-Thumb** and **MIPS**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM-Thumb | MIPS |
|-----------|----------|----------|
| **Bits** | 16/32 | 32 |
| **Type** | RISC (compressed) | RISC |
| **Year** | 1994 | 1981 |
| **Creator** | ARM Ltd. | Stanford University (MIPS Computer Systems) |
| **Endianness** | Bi-endian | Bi-endian |

---

## Design Philosophy

### ARM-Thumb
> *Code density matters - RISC performance with smaller code*

### MIPS
> *Keep pipeline simple, let compiler schedule - no hardware interlocks*

**Key Difference:** ARM-Thumb approaches computing with a risc philosophy, while MIPS takes a risc approach. 

---

## Register Architecture

### ARM-Thumb
8 visible (subset of ARM's 16)

### MIPS
32 × 32-bit ($0 hardwired to zero), HI/LO for multiply

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### ARM-Thumb
16-bit fixed instructions, interworking with ARM32, ~30-40% size reduction

### MIPS
Branch delay slots, load/store architecture, coprocessor interface, academic clean design

---

## Historical Lineage

### ARM-Thumb
ARM → Thumb (ARM7TDMI) → Thumb-2 (16/32 mix)

### MIPS
Stanford research → MIPS I → MIPS II → MIPS III (64-bit) → MIPS32/64

---

## Primary Use Cases

### ARM-Thumb
Microcontrollers, memory-constrained embedded, low-cost mobile

### MIPS
Workstations (SGI), embedded, gaming (PS1, PS2, N64), education

---

## Strengths & Weaknesses

### ARM-Thumb
- **Strengths:** Code density, power efficiency, compatibility with ARM32
- **Weaknesses:** Higher instruction count, more complex interworking

### MIPS
- **Strengths:** Clean design, easy to teach, good compiler target, proven performance
- **Weaknesses:** Branch delay slots are burden, licensing issues, overshadowed by ARM/RISC-V

---

## When to Choose Which

**Choose ARM-Thumb when:** power efficiency is paramount, especially for Microcontrollers

**Choose MIPS when:** your application fits its domain (Workstations (SGI)) and you value its specific strengths

---

## Summary

ARM-Thumb and MIPS represent different points in the spectrum of processor design. The 16/32-bit ARM-Thumb and 32-bit MIPS serve different scale requirements. ARM-Thumb excels in constrained environments where every transistor counts, while MIPS provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
