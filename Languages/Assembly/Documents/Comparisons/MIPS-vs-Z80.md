# MIPS vs Z80

## Overview

This document compares **MIPS** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS | Z80 |
|-----------|----------|----------|
| **Bits** | 32 | 8 |
| **Type** | RISC | CISC |
| **Year** | 1981 | 1976 |
| **Creator** | Stanford University (MIPS Computer Systems) | Zilog (Federico Faggin) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### MIPS
> *Keep pipeline simple, let compiler schedule - no hardware interlocks*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** MIPS approaches computing with a risc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### MIPS
32 × 32-bit ($0 hardwired to zero), HI/LO for multiply

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** MIPS offers many registers (many-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MIPS
Branch delay slots, load/store architecture, coprocessor interface, academic clean design

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### MIPS
Stanford research → MIPS I → MIPS II → MIPS III (64-bit) → MIPS32/64

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### MIPS
Workstations (SGI), embedded, gaming (PS1, PS2, N64), education

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### MIPS
- **Strengths:** Clean design, easy to teach, good compiler target, proven performance
- **Weaknesses:** Branch delay slots are burden, licensing issues, overshadowed by ARM/RISC-V

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose MIPS when:** your application fits its domain (Workstations (SGI)) and you value its specific strengths

**Choose Z80 when:** power efficiency is paramount, especially for ZX Spectrum

---

## Summary

MIPS and Z80 represent different points in the spectrum of processor design. The 8-bit Z80 and 32-bit MIPS serve different scale requirements. Z80 excels in constrained environments where every transistor counts, while MIPS provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
