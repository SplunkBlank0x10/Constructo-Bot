# ARM-Thumb vs RISC-V

## Overview

This document compares **ARM-Thumb** and **RISC-V**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM-Thumb | RISC-V |
|-----------|----------|----------|
| **Bits** | 16/32 | 32/64/128 |
| **Type** | RISC (compressed) | RISC |
| **Year** | 1994 | 2010 |
| **Creator** | ARM Ltd. | UC Berkeley |
| **Endianness** | Bi-endian | Little (default), bi-endian optional |

---

## Design Philosophy

### ARM-Thumb
> *Code density matters - RISC performance with smaller code*

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

**Key Difference:** ARM-Thumb approaches computing with a risc philosophy, while RISC-V takes a risc approach. 

---

## Register Architecture

### ARM-Thumb
8 visible (subset of ARM's 16)

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### ARM-Thumb
16-bit fixed instructions, interworking with ARM32, ~30-40% size reduction

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

---

## Historical Lineage

### ARM-Thumb
ARM → Thumb (ARM7TDMI) → Thumb-2 (16/32 mix)

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

---

## Primary Use Cases

### ARM-Thumb
Microcontrollers, memory-constrained embedded, low-cost mobile

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

---

## Strengths & Weaknesses

### ARM-Thumb
- **Strengths:** Code density, power efficiency, compatibility with ARM32
- **Weaknesses:** Higher instruction count, more complex interworking

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

---

## When to Choose Which

**Choose ARM-Thumb when:** power efficiency is paramount, especially for Microcontrollers

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

ARM-Thumb and RISC-V represent different points in the spectrum of processor design. The 16/32-bit ARM-Thumb and 32/64/128-bit RISC-V serve different scale requirements. ARM-Thumb excels in constrained environments where every transistor counts, while RISC-V provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
