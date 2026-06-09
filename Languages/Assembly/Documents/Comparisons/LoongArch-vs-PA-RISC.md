# LoongArch vs PA-RISC

## Overview

This document compares **LoongArch** and **PA-RISC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | LoongArch | PA-RISC |
|-----------|----------|----------|
| **Bits** | 32/64 | 32/64 |
| **Type** | RISC | RISC |
| **Year** | 2020 | 1986 |
| **Creator** | Loongson Technology (China) | Hewlett-Packard |
| **Endianness** | Both | Big |

---

## Design Philosophy

### LoongArch
> *Independence through design - technological sovereignty, free from foreign IP*

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

**Key Difference:** LoongArch approaches computing with a risc philosophy, while PA-RISC takes a risc approach. 

---

## Register Architecture

### LoongArch
32 × 64-bit GPRs, 32 × FP, 32 × 256-bit vector

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### LoongArch
No branch delay slots (unlike MIPS), binary translation for x86/ARM/MIPS, 4 privilege levels

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

---

## Historical Lineage

### LoongArch
MIPS-compatible Loongson → clean-sheet LoongArch

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

---

## Primary Use Cases

### LoongArch
Chinese government, education, domestic servers, desktops, embedded

### PA-RISC
HP workstations, HP 9000 servers, some embedded

---

## Strengths & Weaknesses

### LoongArch
- **Strengths:** Sovereignty, modern design, MIPS familiarity, no licensing fees
- **Weaknesses:** Immature ecosystem, limited software, geopolitical niche

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

---

## When to Choose Which

**Choose LoongArch when:** technological sovereignty and independence from foreign IP is required

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

---

## Summary

LoongArch and PA-RISC represent different points in the spectrum of processor design. Separated by 34 years, these architectures reflect the evolution from Hewlett-Packard's 1986 approach to Loongson Technology (China)'s 2020 vision. PA-RISC carries the constraints and wisdom of its era, while PA-RISC addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
