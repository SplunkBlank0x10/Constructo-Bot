# RISC-V vs Z80

## Overview

This document compares **RISC-V** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | RISC-V | Z80 |
|-----------|----------|----------|
| **Bits** | 32/64/128 | 8 |
| **Type** | RISC | CISC |
| **Year** | 2010 | 1976 |
| **Creator** | UC Berkeley | Zilog (Federico Faggin) |
| **Endianness** | Little (default), bi-endian optional | Little |

---

## Design Philosophy

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** RISC-V approaches computing with a risc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** RISC-V offers many registers (many-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

**Choose Z80 when:** power efficiency is paramount, especially for ZX Spectrum

---

## Summary

RISC-V and Z80 represent different points in the spectrum of processor design. Separated by 34 years, these architectures reflect the evolution from Zilog (Federico Faggin)'s 1976 approach to UC Berkeley's 2010 vision. Z80 carries the constraints and wisdom of its era, while Z80 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
