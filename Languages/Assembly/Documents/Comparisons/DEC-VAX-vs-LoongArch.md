# DEC-VAX vs LoongArch

## Overview

This document compares **DEC-VAX** and **LoongArch**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-VAX | LoongArch |
|-----------|----------|----------|
| **Bits** | 32 | 32/64 |
| **Type** | CISC | RISC |
| **Year** | 1977 | 2020 |
| **Creator** | Digital Equipment Corporation (DEC) | Loongson Technology (China) |
| **Endianness** | Little | Both |

---

## Design Philosophy

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

### LoongArch
> *Independence through design - technological sovereignty, free from foreign IP*

**Key Difference:** DEC-VAX approaches computing with a cisc philosophy, while LoongArch takes a risc approach. 

---

## Register Architecture

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

### LoongArch
32 × 64-bit GPRs, 32 × FP, 32 × 256-bit vector

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

### LoongArch
No branch delay slots (unlike MIPS), binary translation for x86/ARM/MIPS, 4 privilege levels

---

## Historical Lineage

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

### LoongArch
MIPS-compatible Loongson → clean-sheet LoongArch

---

## Primary Use Cases

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

### LoongArch
Chinese government, education, domestic servers, desktops, embedded

---

## Strengths & Weaknesses

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

### LoongArch
- **Strengths:** Sovereignty, modern design, MIPS familiarity, no licensing fees
- **Weaknesses:** Immature ecosystem, limited software, geopolitical niche

---

## When to Choose Which

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose LoongArch when:** technological sovereignty and independence from foreign IP is required

---

## Summary

DEC-VAX and LoongArch represent different points in the spectrum of processor design. Separated by 43 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1977 approach to Loongson Technology (China)'s 2020 vision. DEC-VAX carries the constraints and wisdom of its era, while DEC-VAX addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
