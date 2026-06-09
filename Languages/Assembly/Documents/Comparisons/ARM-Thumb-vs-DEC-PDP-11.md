# ARM-Thumb vs DEC-PDP-11

## Overview

This document compares **ARM-Thumb** and **DEC-PDP-11**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM-Thumb | DEC-PDP-11 |
|-----------|----------|----------|
| **Bits** | 16/32 | 16 |
| **Type** | RISC (compressed) | CISC |
| **Year** | 1994 | 1970 |
| **Creator** | ARM Ltd. | Digital Equipment Corporation (DEC) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### ARM-Thumb
> *Code density matters - RISC performance with smaller code*

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

**Key Difference:** ARM-Thumb approaches computing with a risc philosophy, while DEC-PDP-11 takes a cisc approach. 

---

## Register Architecture

### ARM-Thumb
8 visible (subset of ARM's 16)

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

**Comparison:** ARM-Thumb offers many registers (many-style architecture), while DEC-PDP-11 provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### ARM-Thumb
16-bit fixed instructions, interworking with ARM32, ~30-40% size reduction

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

---

## Historical Lineage

### ARM-Thumb
ARM → Thumb (ARM7TDMI) → Thumb-2 (16/32 mix)

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

---

## Primary Use Cases

### ARM-Thumb
Microcontrollers, memory-constrained embedded, low-cost mobile

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

---

## Strengths & Weaknesses

### ARM-Thumb
- **Strengths:** Code density, power efficiency, compatibility with ARM32
- **Weaknesses:** Higher instruction count, more complex interworking

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

---

## When to Choose Which

**Choose ARM-Thumb when:** power efficiency is paramount, especially for Microcontrollers

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

---

## Summary

ARM-Thumb and DEC-PDP-11 represent different points in the spectrum of processor design. Separated by 24 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1970 approach to ARM Ltd.'s 1994 vision. DEC-PDP-11 carries the constraints and wisdom of its era, while DEC-PDP-11 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
