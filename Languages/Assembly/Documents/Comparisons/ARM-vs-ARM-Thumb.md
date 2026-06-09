# ARM vs ARM-Thumb

## Overview

This document compares **ARM** and **ARM-Thumb**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM | ARM-Thumb |
|-----------|----------|----------|
| **Bits** | 32 | 16/32 |
| **Type** | RISC | RISC (compressed) |
| **Year** | 1985 | 1994 |
| **Creator** | Acorn Computers | ARM Ltd. |
| **Endianness** | Bi-endian | Bi-endian |

---

## Design Philosophy

### ARM
> *Elegance through simplicity, power efficiency, every instruction conditional*

### ARM-Thumb
> *Code density matters - RISC performance with smaller code*

**Key Difference:** ARM approaches computing with a risc philosophy, while ARM-Thumb takes a risc approach. 

---

## Register Architecture

### ARM
16 (R15=PC), condition codes on all instructions

### ARM-Thumb
8 visible (subset of ARM's 16)

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### ARM
Barrel shifter, LDM/STM block moves, Thumb mode, dominant mobile ISA

### ARM-Thumb
16-bit fixed instructions, interworking with ARM32, ~30-40% size reduction

---

## Historical Lineage

### ARM
Acorn RISC Machine → ARM Holdings → ARMv7

### ARM-Thumb
ARM → Thumb (ARM7TDMI) → Thumb-2 (16/32 mix)

---

## Primary Use Cases

### ARM
Mobile, embedded, microcontrollers (Cortex-M)

### ARM-Thumb
Microcontrollers, memory-constrained embedded, low-cost mobile

---

## Strengths & Weaknesses

### ARM
- **Strengths:** Power efficiency, code density with Thumb, massive ecosystem
- **Weaknesses:** 32-bit limitation, complex history of modes and extensions

### ARM-Thumb
- **Strengths:** Code density, power efficiency, compatibility with ARM32
- **Weaknesses:** Higher instruction count, more complex interworking

---

## When to Choose Which

**Choose ARM when:** your application fits its domain (Mobile) and you value its specific strengths

**Choose ARM-Thumb when:** backward compatibility with massive existing software bases is critical

---

## Summary

ARM and ARM-Thumb represent different points in the spectrum of processor design. The 16/32-bit ARM-Thumb and 32-bit ARM serve different scale requirements. ARM-Thumb excels in constrained environments where every transistor counts, while ARM provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
