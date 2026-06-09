# AArch64 vs ARM-Thumb

## Overview

This document compares **AArch64** and **ARM-Thumb**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AArch64 | ARM-Thumb |
|-----------|----------|----------|
| **Bits** | 64 | 16/32 |
| **Type** | RISC | RISC (compressed) |
| **Year** | 2011 | 1994 |
| **Creator** | ARM Ltd. | ARM Ltd. |
| **Endianness** | Bi-endian (mostly little in practice) | Bi-endian |

---

## Design Philosophy

### AArch64
> *Clean break from 32-bit ARM, learn from 30 years of experience*

### ARM-Thumb
> *Code density matters - RISC performance with smaller code*

**Key Difference:** AArch64 approaches computing with a risc philosophy, while ARM-Thumb takes a risc approach. 

---

## Register Architecture

### AArch64
31 GPRs + zero register, dedicated SP/PC

### ARM-Thumb
8 visible (subset of ARM's 16)

**Comparison:** AArch64 offers few registers (few-style architecture), while ARM-Thumb provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### AArch64
No predication (mostly), SVE scalable vectors, 4 exception levels

### ARM-Thumb
16-bit fixed instructions, interworking with ARM32, ~30-40% size reduction

---

## Historical Lineage

### AArch64
ARM → ARMv7 → ARMv8-A (AArch64)

### ARM-Thumb
ARM → Thumb (ARM7TDMI) → Thumb-2 (16/32 mix)

---

## Primary Use Cases

### AArch64
Smartphones, servers, Apple Silicon, embedded

### ARM-Thumb
Microcontrollers, memory-constrained embedded, low-cost mobile

---

## Strengths & Weaknesses

### AArch64
- **Strengths:** Power efficiency, clean 64-bit design, massive ecosystem
- **Weaknesses:** Complex history, some legacy baggage from ARM32

### ARM-Thumb
- **Strengths:** Code density, power efficiency, compatibility with ARM32
- **Weaknesses:** Higher instruction count, more complex interworking

---

## When to Choose Which

**Choose AArch64 when:** your application fits its domain (Smartphones) and you value its specific strengths

**Choose ARM-Thumb when:** backward compatibility with massive existing software bases is critical

---

## Summary

AArch64 and ARM-Thumb represent different points in the spectrum of processor design. The 16/32-bit ARM-Thumb and 64-bit AArch64 serve different scale requirements. ARM-Thumb excels in constrained environments where every transistor counts, while AArch64 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
