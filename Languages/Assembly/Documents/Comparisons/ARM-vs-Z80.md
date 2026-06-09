# ARM vs Z80

## Overview

This document compares **ARM** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM | Z80 |
|-----------|----------|----------|
| **Bits** | 32 | 8 |
| **Type** | RISC | CISC |
| **Year** | 1985 | 1976 |
| **Creator** | Acorn Computers | Zilog (Federico Faggin) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### ARM
> *Elegance through simplicity, power efficiency, every instruction conditional*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** ARM approaches computing with a risc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### ARM
16 (R15=PC), condition codes on all instructions

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** ARM offers many registers (many-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### ARM
Barrel shifter, LDM/STM block moves, Thumb mode, dominant mobile ISA

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### ARM
Acorn RISC Machine → ARM Holdings → ARMv7

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### ARM
Mobile, embedded, microcontrollers (Cortex-M)

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### ARM
- **Strengths:** Power efficiency, code density with Thumb, massive ecosystem
- **Weaknesses:** 32-bit limitation, complex history of modes and extensions

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose ARM when:** your application fits its domain (Mobile) and you value its specific strengths

**Choose Z80 when:** backward compatibility with massive existing software bases is critical

---

## Summary

ARM and Z80 represent different points in the spectrum of processor design. The 8-bit Z80 and 32-bit ARM serve different scale requirements. Z80 excels in constrained environments where every transistor counts, while ARM provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
