# IBM-System-360-370 vs LoongArch

## Overview

This document compares **IBM-System-360-370** and **LoongArch**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | LoongArch |
|-----------|----------|----------|
| **Bits** | 32 | 32/64 |
| **Type** | CISC | RISC |
| **Year** | 1964 | 2020 |
| **Creator** | IBM | Loongson Technology (China) |
| **Endianness** | Big (EBCDIC) | Both |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### LoongArch
> *Independence through design - technological sovereignty, free from foreign IP*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while LoongArch takes a risc approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### LoongArch
32 × 64-bit GPRs, 32 × FP, 32 × 256-bit vector

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### LoongArch
No branch delay slots (unlike MIPS), binary translation for x86/ARM/MIPS, 4 privilege levels

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### LoongArch
MIPS-compatible Loongson → clean-sheet LoongArch

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### LoongArch
Chinese government, education, domestic servers, desktops, embedded

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### LoongArch
- **Strengths:** Sovereignty, modern design, MIPS familiarity, no licensing fees
- **Weaknesses:** Immature ecosystem, limited software, geopolitical niche

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose LoongArch when:** technological sovereignty and independence from foreign IP is required

---

## Summary

IBM-System-360-370 and LoongArch represent different points in the spectrum of processor design. Separated by 56 years, these architectures reflect the evolution from IBM's 1964 approach to Loongson Technology (China)'s 2020 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
