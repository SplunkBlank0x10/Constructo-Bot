# PowerPC vs Z80

## Overview

This document compares **PowerPC** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PowerPC | Z80 |
|-----------|----------|----------|
| **Bits** | 32/64 | 8 |
| **Type** | RISC | CISC |
| **Year** | 1991 | 1976 |
| **Creator** | AIM Alliance (Apple, IBM, Motorola) | Zilog (Federico Faggin) |
| **Endianness** | Big (default), supports little | Little |

---

## Design Philosophy

### PowerPC
> *Performance through compiler optimization - 32 GPRs, powerful branches, CR fields*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** PowerPC approaches computing with a risc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### PowerPC
32 × 32/64-bit GPRs, 32 × 64-bit FPRs, 8-field CR, LR, CTR

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** PowerPC offers many registers (many-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### PowerPC
8-field condition register, branch hints, AltiVec SIMD, Book E for embedded

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### PowerPC
IBM POWER + Motorola 88000 → AIM PowerPC → PowerPC e500/e600 → QorIQ

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### PowerPC
Apple Mac (1994-2006), IBM RS/6000, embedded, automotive, gaming (Xbox 360, PS3, Wii)

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### PowerPC
- **Strengths:** Clean design, good compiler target, AltiVec performance, embedded variants
- **Weaknesses:** Lost desktop to x86, fragmented ecosystem, AIM alliance dissolved

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose PowerPC when:** your application fits its domain (Apple Mac (1994-2006)) and you value its specific strengths

**Choose Z80 when:** power efficiency is paramount, especially for ZX Spectrum

---

## Summary

PowerPC and Z80 represent different points in the spectrum of processor design. The 8-bit Z80 and 32/64-bit PowerPC serve different scale requirements. Z80 excels in constrained environments where every transistor counts, while PowerPC provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
