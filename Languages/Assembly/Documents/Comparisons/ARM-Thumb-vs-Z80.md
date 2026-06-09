# ARM-Thumb vs Z80

## Overview

This document compares **ARM-Thumb** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM-Thumb | Z80 |
|-----------|----------|----------|
| **Bits** | 16/32 | 8 |
| **Type** | RISC (compressed) | CISC |
| **Year** | 1994 | 1976 |
| **Creator** | ARM Ltd. | Zilog (Federico Faggin) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### ARM-Thumb
> *Code density matters - RISC performance with smaller code*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** ARM-Thumb approaches computing with a risc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### ARM-Thumb
8 visible (subset of ARM's 16)

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** ARM-Thumb offers many registers (many-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### ARM-Thumb
16-bit fixed instructions, interworking with ARM32, ~30-40% size reduction

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### ARM-Thumb
ARM → Thumb (ARM7TDMI) → Thumb-2 (16/32 mix)

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### ARM-Thumb
Microcontrollers, memory-constrained embedded, low-cost mobile

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### ARM-Thumb
- **Strengths:** Code density, power efficiency, compatibility with ARM32
- **Weaknesses:** Higher instruction count, more complex interworking

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose ARM-Thumb when:** backward compatibility with massive existing software bases is critical

**Choose Z80 when:** backward compatibility with massive existing software bases is critical

---

## Summary

ARM-Thumb and Z80 represent different points in the spectrum of processor design. The 8-bit Z80 and 16/32-bit ARM-Thumb serve different scale requirements. Z80 excels in constrained environments where every transistor counts, while ARM-Thumb provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
