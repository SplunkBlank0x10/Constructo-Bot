# ARM-Thumb vs IBM-System-360-370

## Overview

This document compares **ARM-Thumb** and **IBM-System-360-370**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM-Thumb | IBM-System-360-370 |
|-----------|----------|----------|
| **Bits** | 16/32 | 32 |
| **Type** | RISC (compressed) | CISC |
| **Year** | 1994 | 1964 |
| **Creator** | ARM Ltd. | IBM |
| **Endianness** | Bi-endian | Big (EBCDIC) |

---

## Design Philosophy

### ARM-Thumb
> *Code density matters - RISC performance with smaller code*

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

**Key Difference:** ARM-Thumb approaches computing with a risc philosophy, while IBM-System-360-370 takes a cisc approach. 

---

## Register Architecture

### ARM-Thumb
8 visible (subset of ARM's 16)

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### ARM-Thumb
16-bit fixed instructions, interworking with ARM32, ~30-40% size reduction

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

---

## Historical Lineage

### ARM-Thumb
ARM → Thumb (ARM7TDMI) → Thumb-2 (16/32 mix)

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

---

## Primary Use Cases

### ARM-Thumb
Microcontrollers, memory-constrained embedded, low-cost mobile

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

---

## Strengths & Weaknesses

### ARM-Thumb
- **Strengths:** Code density, power efficiency, compatibility with ARM32
- **Weaknesses:** Higher instruction count, more complex interworking

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

---

## When to Choose Which

**Choose ARM-Thumb when:** power efficiency is paramount, especially for Microcontrollers

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

---

## Summary

ARM-Thumb and IBM-System-360-370 represent different points in the spectrum of processor design. Separated by 30 years, these architectures reflect the evolution from IBM's 1964 approach to ARM Ltd.'s 1994 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
