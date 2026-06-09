# MIPS vs PowerPC

## Overview

This document compares **MIPS** and **PowerPC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS | PowerPC |
|-----------|----------|----------|
| **Bits** | 32 | 32/64 |
| **Type** | RISC | RISC |
| **Year** | 1981 | 1991 |
| **Creator** | Stanford University (MIPS Computer Systems) | AIM Alliance (Apple, IBM, Motorola) |
| **Endianness** | Bi-endian | Big (default), supports little |

---

## Design Philosophy

### MIPS
> *Keep pipeline simple, let compiler schedule - no hardware interlocks*

### PowerPC
> *Performance through compiler optimization - 32 GPRs, powerful branches, CR fields*

**Key Difference:** MIPS approaches computing with a risc philosophy, while PowerPC takes a risc approach. 

---

## Register Architecture

### MIPS
32 × 32-bit ($0 hardwired to zero), HI/LO for multiply

### PowerPC
32 × 32/64-bit GPRs, 32 × 64-bit FPRs, 8-field CR, LR, CTR

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### MIPS
Branch delay slots, load/store architecture, coprocessor interface, academic clean design

### PowerPC
8-field condition register, branch hints, AltiVec SIMD, Book E for embedded

---

## Historical Lineage

### MIPS
Stanford research → MIPS I → MIPS II → MIPS III (64-bit) → MIPS32/64

### PowerPC
IBM POWER + Motorola 88000 → AIM PowerPC → PowerPC e500/e600 → QorIQ

---

## Primary Use Cases

### MIPS
Workstations (SGI), embedded, gaming (PS1, PS2, N64), education

### PowerPC
Apple Mac (1994-2006), IBM RS/6000, embedded, automotive, gaming (Xbox 360, PS3, Wii)

---

## Strengths & Weaknesses

### MIPS
- **Strengths:** Clean design, easy to teach, good compiler target, proven performance
- **Weaknesses:** Branch delay slots are burden, licensing issues, overshadowed by ARM/RISC-V

### PowerPC
- **Strengths:** Clean design, good compiler target, AltiVec performance, embedded variants
- **Weaknesses:** Lost desktop to x86, fragmented ecosystem, AIM alliance dissolved

---

## When to Choose Which

**Choose MIPS when:** your application fits its domain (Workstations (SGI)) and you value its specific strengths

**Choose PowerPC when:** your application fits its domain (Apple Mac (1994-2006)) and you value its specific strengths

---

## Summary

MIPS and PowerPC represent different points in the spectrum of processor design. The 32-bit MIPS and 32/64-bit PowerPC serve different scale requirements. MIPS excels in constrained environments where every transistor counts, while PowerPC provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
