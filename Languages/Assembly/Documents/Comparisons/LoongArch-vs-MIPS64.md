# LoongArch vs MIPS64

## Overview

This document compares **LoongArch** and **MIPS64**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | LoongArch | MIPS64 |
|-----------|----------|----------|
| **Bits** | 32/64 | 64 |
| **Type** | RISC | RISC |
| **Year** | 2020 | 1995 |
| **Creator** | Loongson Technology (China) | MIPS Technologies / Silicon Graphics |
| **Endianness** | Both | Bi-endian |

---

## Design Philosophy

### LoongArch
> *Independence through design - technological sovereignty, free from foreign IP*

### MIPS64
> *Extend, don't redesign - same principles, larger scale*

**Key Difference:** LoongArch approaches computing with a risc philosophy, while MIPS64 takes a risc approach. 

---

## Register Architecture

### LoongArch
32 × 64-bit GPRs, 32 × FP, 32 × 256-bit vector

### MIPS64
32 × 64-bit, same HI/LO, same delay slots

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### LoongArch
No branch delay slots (unlike MIPS), binary translation for x86/ARM/MIPS, 4 privilege levels

### MIPS64
Backward compatible with MIPS32, N64 ABI, same pipeline philosophy

---

## Historical Lineage

### LoongArch
MIPS-compatible Loongson → clean-sheet LoongArch

### MIPS64
MIPS I → MIPS III → MIPS64

---

## Primary Use Cases

### LoongArch
Chinese government, education, domestic servers, desktops, embedded

### MIPS64
High-end workstations, servers, some embedded

---

## Strengths & Weaknesses

### LoongArch
- **Strengths:** Sovereignty, modern design, MIPS familiarity, no licensing fees
- **Weaknesses:** Immature ecosystem, limited software, geopolitical niche

### MIPS64
- **Strengths:** Continuity, familiar toolchain, 64-bit when needed
- **Weaknesses:** Carried MIPS32 baggage, delay slots still burden, market decline

---

## When to Choose Which

**Choose LoongArch when:** technological sovereignty and independence from foreign IP is required

**Choose MIPS64 when:** your application fits its domain (High-end workstations) and you value its specific strengths

---

## Summary

LoongArch and MIPS64 represent different points in the spectrum of processor design. Separated by 25 years, these architectures reflect the evolution from MIPS Technologies / Silicon Graphics's 1995 approach to Loongson Technology (China)'s 2020 vision. MIPS64 carries the constraints and wisdom of its era, while MIPS64 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
