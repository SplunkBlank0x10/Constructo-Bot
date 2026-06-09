# LoongArch vs WDC-65816

## Overview

This document compares **LoongArch** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | LoongArch | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 32/64 | 16/8 |
| **Type** | RISC | CISC (16-bit 6502 evolution) |
| **Year** | 2020 | 1984 |
| **Creator** | Loongson Technology (China) | Western Design Center (Bill Mensch) |
| **Endianness** | Both | Little |

---

## Design Philosophy

### LoongArch
> *Independence through design - technological sovereignty, free from foreign IP*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** LoongArch approaches computing with a risc philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### LoongArch
32 × 64-bit GPRs, 32 × FP, 32 × 256-bit vector

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### LoongArch
No branch delay slots (unlike MIPS), binary translation for x86/ARM/MIPS, 4 privilege levels

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### LoongArch
MIPS-compatible Loongson → clean-sheet LoongArch

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### LoongArch
Chinese government, education, domestic servers, desktops, embedded

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### LoongArch
- **Strengths:** Sovereignty, modern design, MIPS familiarity, no licensing fees
- **Weaknesses:** Immature ecosystem, limited software, geopolitical niche

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose LoongArch when:** technological sovereignty and independence from foreign IP is required

**Choose WDC-65816 when:** power efficiency is paramount, especially for Apple IIGS

---

## Summary

LoongArch and WDC-65816 represent different points in the spectrum of processor design. Separated by 36 years, these architectures reflect the evolution from Western Design Center (Bill Mensch)'s 1984 approach to Loongson Technology (China)'s 2020 vision. WDC-65816 carries the constraints and wisdom of its era, while WDC-65816 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
