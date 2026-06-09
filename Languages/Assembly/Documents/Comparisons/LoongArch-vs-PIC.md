# LoongArch vs PIC

## Overview

This document compares **LoongArch** and **PIC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | LoongArch | PIC |
|-----------|----------|----------|
| **Bits** | 32/64 | 8/16 |
| **Type** | RISC | RISC (Harvard, minimal) |
| **Year** | 2020 | 1976 |
| **Creator** | Loongson Technology (China) | General Instrument → Microchip Technology |
| **Endianness** | Both | Little |

---

## Design Philosophy

### LoongArch
> *Independence through design - technological sovereignty, free from foreign IP*

### PIC
> *Minimalism to the extreme - 35 instructions, every transistor earns its place*

**Key Difference:** LoongArch approaches computing with a risc philosophy, while PIC takes a risc approach. 

---

## Register Architecture

### LoongArch
32 × 64-bit GPRs, 32 × FP, 32 × 256-bit vector

### PIC
1 working register (W), banking via BSR

**Comparison:** LoongArch offers many registers (many-style architecture), while PIC provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### LoongArch
No branch delay slots (unlike MIPS), binary translation for x86/ARM/MIPS, 4 privilege levels

### PIC
Harvard architecture, banking, 2-stage pipeline, minimal instruction set, wide voltage

---

## Historical Lineage

### LoongArch
MIPS-compatible Loongson → clean-sheet LoongArch

### PIC
GI PIC1650 → Microchip PIC16/18 → PIC24/dsPIC → PIC32 (MIPS-based)

---

## Primary Use Cases

### LoongArch
Chinese government, education, domestic servers, desktops, embedded

### PIC
Blinking LEDs, sensors, motor control, tiny embedded, education, hobby

---

## Strengths & Weaknesses

### LoongArch
- **Strengths:** Sovereignty, modern design, MIPS familiarity, no licensing fees
- **Weaknesses:** Immature ecosystem, limited software, geopolitical niche

### PIC
- **Strengths:** Cheapest possible, robust, simple to understand, huge variety, low power
- **Weaknesses:** Minimal registers, banking complexity, quirky architecture, limited for complex tasks

---

## When to Choose Which

**Choose LoongArch when:** technological sovereignty and independence from foreign IP is required

**Choose PIC when:** power efficiency is paramount, especially for Blinking LEDs

---

## Summary

LoongArch and PIC represent different points in the spectrum of processor design. Separated by 44 years, these architectures reflect the evolution from General Instrument → Microchip Technology's 1976 approach to Loongson Technology (China)'s 2020 vision. PIC carries the constraints and wisdom of its era, while PIC addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
