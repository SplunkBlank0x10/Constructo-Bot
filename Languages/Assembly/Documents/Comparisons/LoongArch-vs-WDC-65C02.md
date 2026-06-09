# LoongArch vs WDC-65C02

## Overview

This document compares **LoongArch** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | LoongArch | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 32/64 | 8 |
| **Type** | RISC | CISC (CMOS enhanced 6502) |
| **Year** | 2020 | 1978 |
| **Creator** | Loongson Technology (China) | Western Design Center (Bill Mensch) |
| **Endianness** | Both | Little |

---

## Design Philosophy

### LoongArch
> *Independence through design - technological sovereignty, free from foreign IP*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** LoongArch approaches computing with a risc philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### LoongArch
32 × 64-bit GPRs, 32 × FP, 32 × 256-bit vector

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** LoongArch offers many registers (many-style architecture), while WDC-65C02 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### LoongArch
No branch delay slots (unlike MIPS), binary translation for x86/ARM/MIPS, 4 privilege levels

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### LoongArch
MIPS-compatible Loongson → clean-sheet LoongArch

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### LoongArch
Chinese government, education, domestic servers, desktops, embedded

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### LoongArch
- **Strengths:** Sovereignty, modern design, MIPS familiarity, no licensing fees
- **Weaknesses:** Immature ecosystem, limited software, geopolitical niche

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose LoongArch when:** technological sovereignty and independence from foreign IP is required

**Choose WDC-65C02 when:** power efficiency is paramount, especially for Apple IIc

---

## Summary

LoongArch and WDC-65C02 represent different points in the spectrum of processor design. Separated by 42 years, these architectures reflect the evolution from Western Design Center (Bill Mensch)'s 1978 approach to Loongson Technology (China)'s 2020 vision. WDC-65C02 carries the constraints and wisdom of its era, while WDC-65C02 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
