# LoongArch vs Z80

## Overview

This document compares **LoongArch** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | LoongArch | Z80 |
|-----------|----------|----------|
| **Bits** | 32/64 | 8 |
| **Type** | RISC | CISC |
| **Year** | 2020 | 1976 |
| **Creator** | Loongson Technology (China) | Zilog (Federico Faggin) |
| **Endianness** | Both | Little |

---

## Design Philosophy

### LoongArch
> *Independence through design - technological sovereignty, free from foreign IP*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** LoongArch approaches computing with a risc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### LoongArch
32 × 64-bit GPRs, 32 × FP, 32 × 256-bit vector

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** LoongArch offers many registers (many-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### LoongArch
No branch delay slots (unlike MIPS), binary translation for x86/ARM/MIPS, 4 privilege levels

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### LoongArch
MIPS-compatible Loongson → clean-sheet LoongArch

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### LoongArch
Chinese government, education, domestic servers, desktops, embedded

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### LoongArch
- **Strengths:** Sovereignty, modern design, MIPS familiarity, no licensing fees
- **Weaknesses:** Immature ecosystem, limited software, geopolitical niche

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose LoongArch when:** technological sovereignty and independence from foreign IP is required

**Choose Z80 when:** power efficiency is paramount, especially for ZX Spectrum

---

## Summary

LoongArch and Z80 represent different points in the spectrum of processor design. Separated by 44 years, these architectures reflect the evolution from Zilog (Federico Faggin)'s 1976 approach to Loongson Technology (China)'s 2020 vision. Z80 carries the constraints and wisdom of its era, while Z80 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
