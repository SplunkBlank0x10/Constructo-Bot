# ARM-Thumb vs MOS-6502

## Overview

This document compares **ARM-Thumb** and **MOS-6502**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM-Thumb | MOS-6502 |
|-----------|----------|----------|
| **Bits** | 16/32 | 8 |
| **Type** | RISC (compressed) | CISC |
| **Year** | 1994 | 1975 |
| **Creator** | ARM Ltd. | MOS Technology (Chuck Peddle et al.) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### ARM-Thumb
> *Code density matters - RISC performance with smaller code*

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

**Key Difference:** ARM-Thumb approaches computing with a risc philosophy, while MOS-6502 takes a cisc approach. 

---

## Register Architecture

### ARM-Thumb
8 visible (subset of ARM's 16)

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

**Comparison:** ARM-Thumb offers many registers (many-style architecture), while MOS-6502 provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### ARM-Thumb
16-bit fixed instructions, interworking with ARM32, ~30-40% size reduction

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

---

## Historical Lineage

### ARM-Thumb
ARM → Thumb (ARM7TDMI) → Thumb-2 (16/32 mix)

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

---

## Primary Use Cases

### ARM-Thumb
Microcontrollers, memory-constrained embedded, low-cost mobile

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

---

## Strengths & Weaknesses

### ARM-Thumb
- **Strengths:** Code density, power efficiency, compatibility with ARM32
- **Weaknesses:** Higher instruction count, more complex interworking

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

---

## When to Choose Which

**Choose ARM-Thumb when:** power efficiency is paramount, especially for Microcontrollers

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

---

## Summary

ARM-Thumb and MOS-6502 represent different points in the spectrum of processor design. The 8-bit MOS-6502 and 16/32-bit ARM-Thumb serve different scale requirements. MOS-6502 excels in constrained environments where every transistor counts, while ARM-Thumb provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
