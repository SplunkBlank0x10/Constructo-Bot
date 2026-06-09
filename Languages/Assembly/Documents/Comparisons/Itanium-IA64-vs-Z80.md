# Itanium-IA64 vs Z80

## Overview

This document compares **Itanium-IA64** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Itanium-IA64 | Z80 |
|-----------|----------|----------|
| **Bits** | 64 | 8 |
| **Type** | EPIC (Explicitly Parallel Instruction Computing) | CISC |
| **Year** | 2001 | 1976 |
| **Creator** | Intel & Hewlett-Packard | Zilog (Federico Faggin) |
| **Endianness** | Both (selected per page) | Little |

---

## Design Philosophy

### Itanium-IA64
> *Explicit parallelism - compiler schedules, hardware just executes*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** Itanium-IA64 approaches computing with a epic philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### Itanium-IA64
128 × 64-bit GPRs, 128 × 82-bit FPRs, 64 × 1-bit predicates, 8 branch

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** Itanium-IA64 offers many registers (many-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### Itanium-IA64
Bundles of 3 instructions + template, predication, rotating registers, no OoO hardware

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### Itanium-IA64
HP PA-RISC + Intel ambition → Itanium → discontinued 2021

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### Itanium-IA64
High-end servers, enterprise computing, HP-UX, some HPC

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### Itanium-IA64
- **Strengths:** Theoretical scalability, clean 64-bit, no legacy baggage
- **Weaknesses:** Compiler complexity, no OoO safety net, x86-64 won market, discontinued

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose Itanium-IA64 when:** your application fits its domain (High-end servers) and you value its specific strengths

**Choose Z80 when:** power efficiency is paramount, especially for ZX Spectrum

---

## Summary

Itanium-IA64 and Z80 represent different points in the spectrum of processor design. Separated by 25 years, these architectures reflect the evolution from Zilog (Federico Faggin)'s 1976 approach to Intel & Hewlett-Packard's 2001 vision. Z80 carries the constraints and wisdom of its era, while Z80 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
