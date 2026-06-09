# MIPS64 vs Z80

## Overview

This document compares **MIPS64** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS64 | Z80 |
|-----------|----------|----------|
| **Bits** | 64 | 8 |
| **Type** | RISC | CISC |
| **Year** | 1995 | 1976 |
| **Creator** | MIPS Technologies / Silicon Graphics | Zilog (Federico Faggin) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### MIPS64
> *Extend, don't redesign - same principles, larger scale*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** MIPS64 approaches computing with a risc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### MIPS64
32 × 64-bit, same HI/LO, same delay slots

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** MIPS64 offers many registers (many-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MIPS64
Backward compatible with MIPS32, N64 ABI, same pipeline philosophy

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### MIPS64
MIPS I → MIPS III → MIPS64

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### MIPS64
High-end workstations, servers, some embedded

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### MIPS64
- **Strengths:** Continuity, familiar toolchain, 64-bit when needed
- **Weaknesses:** Carried MIPS32 baggage, delay slots still burden, market decline

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose MIPS64 when:** your application fits its domain (High-end workstations) and you value its specific strengths

**Choose Z80 when:** power efficiency is paramount, especially for ZX Spectrum

---

## Summary

MIPS64 and Z80 represent different points in the spectrum of processor design. The 8-bit Z80 and 64-bit MIPS64 serve different scale requirements. Z80 excels in constrained environments where every transistor counts, while MIPS64 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
