# ARM vs LoongArch

## Overview

This document compares **ARM** and **LoongArch**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM | LoongArch |
|-----------|----------|----------|
| **Bits** | 32 | 32/64 |
| **Type** | RISC | RISC |
| **Year** | 1985 | 2020 |
| **Creator** | Acorn Computers | Loongson Technology (China) |
| **Endianness** | Bi-endian | Both |

---

## Design Philosophy

### ARM
> *Elegance through simplicity, power efficiency, every instruction conditional*

### LoongArch
> *Independence through design - technological sovereignty, free from foreign IP*

**Key Difference:** ARM approaches computing with a risc philosophy, while LoongArch takes a risc approach. 

---

## Register Architecture

### ARM
16 (R15=PC), condition codes on all instructions

### LoongArch
32 × 64-bit GPRs, 32 × FP, 32 × 256-bit vector

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### ARM
Barrel shifter, LDM/STM block moves, Thumb mode, dominant mobile ISA

### LoongArch
No branch delay slots (unlike MIPS), binary translation for x86/ARM/MIPS, 4 privilege levels

---

## Historical Lineage

### ARM
Acorn RISC Machine → ARM Holdings → ARMv7

### LoongArch
MIPS-compatible Loongson → clean-sheet LoongArch

---

## Primary Use Cases

### ARM
Mobile, embedded, microcontrollers (Cortex-M)

### LoongArch
Chinese government, education, domestic servers, desktops, embedded

---

## Strengths & Weaknesses

### ARM
- **Strengths:** Power efficiency, code density with Thumb, massive ecosystem
- **Weaknesses:** 32-bit limitation, complex history of modes and extensions

### LoongArch
- **Strengths:** Sovereignty, modern design, MIPS familiarity, no licensing fees
- **Weaknesses:** Immature ecosystem, limited software, geopolitical niche

---

## When to Choose Which

**Choose ARM when:** power efficiency is paramount, especially for Mobile

**Choose LoongArch when:** technological sovereignty and independence from foreign IP is required

---

## Summary

ARM and LoongArch represent different points in the spectrum of processor design. Separated by 35 years, these architectures reflect the evolution from Acorn Computers's 1985 approach to Loongson Technology (China)'s 2020 vision. ARM carries the constraints and wisdom of its era, while ARM addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
