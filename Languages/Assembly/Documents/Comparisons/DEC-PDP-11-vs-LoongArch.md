# DEC-PDP-11 vs LoongArch

## Overview

This document compares **DEC-PDP-11** and **LoongArch**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | LoongArch |
|-----------|----------|----------|
| **Bits** | 16 | 32/64 |
| **Type** | CISC | RISC |
| **Year** | 1970 | 2020 |
| **Creator** | Digital Equipment Corporation (DEC) | Loongson Technology (China) |
| **Endianness** | Little | Both |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### LoongArch
> *Independence through design - technological sovereignty, free from foreign IP*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while LoongArch takes a risc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### LoongArch
32 × 64-bit GPRs, 32 × FP, 32 × 256-bit vector

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while LoongArch provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### LoongArch
No branch delay slots (unlike MIPS), binary translation for x86/ARM/MIPS, 4 privilege levels

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### LoongArch
MIPS-compatible Loongson → clean-sheet LoongArch

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### LoongArch
Chinese government, education, domestic servers, desktops, embedded

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### LoongArch
- **Strengths:** Sovereignty, modern design, MIPS familiarity, no licensing fees
- **Weaknesses:** Immature ecosystem, limited software, geopolitical niche

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose LoongArch when:** technological sovereignty and independence from foreign IP is required

---

## Summary

DEC-PDP-11 and LoongArch represent different points in the spectrum of processor design. Separated by 50 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1970 approach to Loongson Technology (China)'s 2020 vision. DEC-PDP-11 carries the constraints and wisdom of its era, while DEC-PDP-11 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
