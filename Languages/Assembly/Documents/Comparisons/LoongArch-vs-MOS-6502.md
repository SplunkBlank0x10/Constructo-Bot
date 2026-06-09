# LoongArch vs MOS-6502

## Overview

This document compares **LoongArch** and **MOS-6502**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | LoongArch | MOS-6502 |
|-----------|----------|----------|
| **Bits** | 32/64 | 8 |
| **Type** | RISC | CISC |
| **Year** | 2020 | 1975 |
| **Creator** | Loongson Technology (China) | MOS Technology (Chuck Peddle et al.) |
| **Endianness** | Both | Little |

---

## Design Philosophy

### LoongArch
> *Independence through design - technological sovereignty, free from foreign IP*

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

**Key Difference:** LoongArch approaches computing with a risc philosophy, while MOS-6502 takes a cisc approach. 

---

## Register Architecture

### LoongArch
32 × 64-bit GPRs, 32 × FP, 32 × 256-bit vector

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

**Comparison:** LoongArch offers many registers (many-style architecture), while MOS-6502 provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### LoongArch
No branch delay slots (unlike MIPS), binary translation for x86/ARM/MIPS, 4 privilege levels

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

---

## Historical Lineage

### LoongArch
MIPS-compatible Loongson → clean-sheet LoongArch

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

---

## Primary Use Cases

### LoongArch
Chinese government, education, domestic servers, desktops, embedded

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

---

## Strengths & Weaknesses

### LoongArch
- **Strengths:** Sovereignty, modern design, MIPS familiarity, no licensing fees
- **Weaknesses:** Immature ecosystem, limited software, geopolitical niche

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

---

## When to Choose Which

**Choose LoongArch when:** technological sovereignty and independence from foreign IP is required

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

---

## Summary

LoongArch and MOS-6502 represent different points in the spectrum of processor design. Separated by 45 years, these architectures reflect the evolution from MOS Technology (Chuck Peddle et al.)'s 1975 approach to Loongson Technology (China)'s 2020 vision. MOS-6502 carries the constraints and wisdom of its era, while MOS-6502 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
