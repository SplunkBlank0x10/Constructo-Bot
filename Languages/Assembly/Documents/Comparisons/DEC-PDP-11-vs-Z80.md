# DEC-PDP-11 vs Z80

## Overview

This document compares **DEC-PDP-11** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | Z80 |
|-----------|----------|----------|
| **Bits** | 16 | 8 |
| **Type** | CISC | CISC |
| **Year** | 1970 | 1976 |
| **Creator** | Digital Equipment Corporation (DEC) | Zilog (Federico Faggin) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose Z80 when:** power efficiency is paramount, especially for ZX Spectrum

---

## Summary

DEC-PDP-11 and Z80 represent different points in the spectrum of processor design. The 8-bit Z80 and 16-bit DEC-PDP-11 serve different scale requirements. Z80 excels in constrained environments where every transistor counts, while DEC-PDP-11 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
