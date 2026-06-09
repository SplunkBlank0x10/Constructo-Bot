# MOS-6502 vs PowerPC

## Overview

This document compares **MOS-6502** and **PowerPC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MOS-6502 | PowerPC |
|-----------|----------|----------|
| **Bits** | 8 | 32/64 |
| **Type** | CISC | RISC |
| **Year** | 1975 | 1991 |
| **Creator** | MOS Technology (Chuck Peddle et al.) | AIM Alliance (Apple, IBM, Motorola) |
| **Endianness** | Little | Big (default), supports little |

---

## Design Philosophy

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

### PowerPC
> *Performance through compiler optimization - 32 GPRs, powerful branches, CR fields*

**Key Difference:** MOS-6502 approaches computing with a cisc philosophy, while PowerPC takes a risc approach. 

---

## Register Architecture

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

### PowerPC
32 × 32/64-bit GPRs, 32 × 64-bit FPRs, 8-field CR, LR, CTR

**Comparison:** MOS-6502 offers minimal registers (minimal-style architecture), while PowerPC provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

### PowerPC
8-field condition register, branch hints, AltiVec SIMD, Book E for embedded

---

## Historical Lineage

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

### PowerPC
IBM POWER + Motorola 88000 → AIM PowerPC → PowerPC e500/e600 → QorIQ

---

## Primary Use Cases

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

### PowerPC
Apple Mac (1994-2006), IBM RS/6000, embedded, automotive, gaming (Xbox 360, PS3, Wii)

---

## Strengths & Weaknesses

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

### PowerPC
- **Strengths:** Clean design, good compiler target, AltiVec performance, embedded variants
- **Weaknesses:** Lost desktop to x86, fragmented ecosystem, AIM alliance dissolved

---

## When to Choose Which

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

**Choose PowerPC when:** your application fits its domain (Apple Mac (1994-2006)) and you value its specific strengths

---

## Summary

MOS-6502 and PowerPC represent different points in the spectrum of processor design. The 8-bit MOS-6502 and 32/64-bit PowerPC serve different scale requirements. MOS-6502 excels in constrained environments where every transistor counts, while PowerPC provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
