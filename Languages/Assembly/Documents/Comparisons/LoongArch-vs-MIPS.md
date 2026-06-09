# LoongArch vs MIPS

## Overview

This document compares **LoongArch** and **MIPS**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | LoongArch | MIPS |
|-----------|----------|----------|
| **Bits** | 32/64 | 32 |
| **Type** | RISC | RISC |
| **Year** | 2020 | 1981 |
| **Creator** | Loongson Technology (China) | Stanford University (MIPS Computer Systems) |
| **Endianness** | Both | Bi-endian |

---

## Design Philosophy

### LoongArch
> *Independence through design - technological sovereignty, free from foreign IP*

### MIPS
> *Keep pipeline simple, let compiler schedule - no hardware interlocks*

**Key Difference:** LoongArch approaches computing with a risc philosophy, while MIPS takes a risc approach. 

---

## Register Architecture

### LoongArch
32 × 64-bit GPRs, 32 × FP, 32 × 256-bit vector

### MIPS
32 × 32-bit ($0 hardwired to zero), HI/LO for multiply

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### LoongArch
No branch delay slots (unlike MIPS), binary translation for x86/ARM/MIPS, 4 privilege levels

### MIPS
Branch delay slots, load/store architecture, coprocessor interface, academic clean design

---

## Historical Lineage

### LoongArch
MIPS-compatible Loongson → clean-sheet LoongArch

### MIPS
Stanford research → MIPS I → MIPS II → MIPS III (64-bit) → MIPS32/64

---

## Primary Use Cases

### LoongArch
Chinese government, education, domestic servers, desktops, embedded

### MIPS
Workstations (SGI), embedded, gaming (PS1, PS2, N64), education

---

## Strengths & Weaknesses

### LoongArch
- **Strengths:** Sovereignty, modern design, MIPS familiarity, no licensing fees
- **Weaknesses:** Immature ecosystem, limited software, geopolitical niche

### MIPS
- **Strengths:** Clean design, easy to teach, good compiler target, proven performance
- **Weaknesses:** Branch delay slots are burden, licensing issues, overshadowed by ARM/RISC-V

---

## When to Choose Which

**Choose LoongArch when:** technological sovereignty and independence from foreign IP is required

**Choose MIPS when:** your application fits its domain (Workstations (SGI)) and you value its specific strengths

---

## Summary

LoongArch and MIPS represent different points in the spectrum of processor design. Separated by 39 years, these architectures reflect the evolution from Stanford University (MIPS Computer Systems)'s 1981 approach to Loongson Technology (China)'s 2020 vision. MIPS carries the constraints and wisdom of its era, while MIPS addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
