# AArch64 vs MIPS

## Overview

This document compares **AArch64** and **MIPS**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AArch64 | MIPS |
|-----------|----------|----------|
| **Bits** | 64 | 32 |
| **Type** | RISC | RISC |
| **Year** | 2011 | 1981 |
| **Creator** | ARM Ltd. | Stanford University (MIPS Computer Systems) |
| **Endianness** | Bi-endian (mostly little in practice) | Bi-endian |

---

## Design Philosophy

### AArch64
> *Clean break from 32-bit ARM, learn from 30 years of experience*

### MIPS
> *Keep pipeline simple, let compiler schedule - no hardware interlocks*

**Key Difference:** AArch64 approaches computing with a risc philosophy, while MIPS takes a risc approach. 

---

## Register Architecture

### AArch64
31 GPRs + zero register, dedicated SP/PC

### MIPS
32 × 32-bit ($0 hardwired to zero), HI/LO for multiply

**Comparison:** AArch64 offers few registers (few-style architecture), while MIPS provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### AArch64
No predication (mostly), SVE scalable vectors, 4 exception levels

### MIPS
Branch delay slots, load/store architecture, coprocessor interface, academic clean design

---

## Historical Lineage

### AArch64
ARM → ARMv7 → ARMv8-A (AArch64)

### MIPS
Stanford research → MIPS I → MIPS II → MIPS III (64-bit) → MIPS32/64

---

## Primary Use Cases

### AArch64
Smartphones, servers, Apple Silicon, embedded

### MIPS
Workstations (SGI), embedded, gaming (PS1, PS2, N64), education

---

## Strengths & Weaknesses

### AArch64
- **Strengths:** Power efficiency, clean 64-bit design, massive ecosystem
- **Weaknesses:** Complex history, some legacy baggage from ARM32

### MIPS
- **Strengths:** Clean design, easy to teach, good compiler target, proven performance
- **Weaknesses:** Branch delay slots are burden, licensing issues, overshadowed by ARM/RISC-V

---

## When to Choose Which

**Choose AArch64 when:** power efficiency is paramount, especially for Smartphones

**Choose MIPS when:** your application fits its domain (Workstations (SGI)) and you value its specific strengths

---

## Summary

AArch64 and MIPS represent different points in the spectrum of processor design. Separated by 30 years, these architectures reflect the evolution from Stanford University (MIPS Computer Systems)'s 1981 approach to ARM Ltd.'s 2011 vision. MIPS carries the constraints and wisdom of its era, while MIPS addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
