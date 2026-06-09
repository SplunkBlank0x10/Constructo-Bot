# DEC-Alpha vs Z80

## Overview

This document compares **DEC-Alpha** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-Alpha | Z80 |
|-----------|----------|----------|
| **Bits** | 64 | 8 |
| **Type** | RISC | CISC |
| **Year** | 1992 | 1976 |
| **Creator** | Digital Equipment Corporation (DEC) | Zilog (Federico Faggin) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-Alpha
> *64 bits, no compromises - pure 64-bit from scratch, no legacy*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** DEC-Alpha approaches computing with a risc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### DEC-Alpha
32 integer + 32 FP (R31/F31 hardwired to zero)

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** DEC-Alpha offers many registers (many-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-Alpha
No condition codes, no byte/halfword loads originally, designed for extreme clock speeds

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### DEC-Alpha
Clean sheet design, influenced by MIPS experience

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### DEC-Alpha
High-end workstations, servers, scientific computing (Cray-like)

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### DEC-Alpha
- **Strengths:** Blazing fast for its era, clean design, excellent 64-bit implementation
- **Weaknesses:** DEC's demise, no 32-bit mode, compiler complexity

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose DEC-Alpha when:** maximum single-thread performance is critical (High-end workstations)

**Choose Z80 when:** power efficiency is paramount, especially for ZX Spectrum

---

## Summary

DEC-Alpha and Z80 represent different points in the spectrum of processor design. The 8-bit Z80 and 64-bit DEC-Alpha serve different scale requirements. Z80 excels in constrained environments where every transistor counts, while DEC-Alpha provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
