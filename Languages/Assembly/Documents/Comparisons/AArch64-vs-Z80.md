# AArch64 vs Z80

## Overview

This document compares **AArch64** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AArch64 | Z80 |
|-----------|----------|----------|
| **Bits** | 64 | 8 |
| **Type** | RISC | CISC |
| **Year** | 2011 | 1976 |
| **Creator** | ARM Ltd. | Zilog (Federico Faggin) |
| **Endianness** | Bi-endian (mostly little in practice) | Little |

---

## Design Philosophy

### AArch64
> *Clean break from 32-bit ARM, learn from 30 years of experience*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** AArch64 approaches computing with a risc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### AArch64
31 GPRs + zero register, dedicated SP/PC

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** Both architectures provide a few-register programming model, though the specific organization differs significantly.

---

## Notable Features

### AArch64
No predication (mostly), SVE scalable vectors, 4 exception levels

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### AArch64
ARM → ARMv7 → ARMv8-A (AArch64)

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### AArch64
Smartphones, servers, Apple Silicon, embedded

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### AArch64
- **Strengths:** Power efficiency, clean 64-bit design, massive ecosystem
- **Weaknesses:** Complex history, some legacy baggage from ARM32

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose AArch64 when:** your application fits its domain (Smartphones) and you value its specific strengths

**Choose Z80 when:** backward compatibility with massive existing software bases is critical

---

## Summary

AArch64 and Z80 represent different points in the spectrum of processor design. Separated by 35 years, these architectures reflect the evolution from Zilog (Federico Faggin)'s 1976 approach to ARM Ltd.'s 2011 vision. Z80 carries the constraints and wisdom of its era, while Z80 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
