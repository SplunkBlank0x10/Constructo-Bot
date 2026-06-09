# Motorola-6800 vs Z80

## Overview

This document compares **Motorola-6800** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Motorola-6800 | Z80 |
|-----------|----------|----------|
| **Bits** | 8 | 8 |
| **Type** | CISC | CISC |
| **Year** | 1974 | 1976 |
| **Creator** | Motorola | Zilog (Federico Faggin) |
| **Endianness** | Big | Little |

---

## Design Philosophy

### Motorola-6800
> *Minimal viable computing - simple enough to understand, 5V single supply*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** Motorola-6800 approaches computing with a cisc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### Motorola-6800
A, B (accumulators), X (index), SP, PC

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** Motorola-6800 offers minimal registers (minimal-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### Motorola-6800
Single 5V supply (vs Intel's 3-voltage), 64KB space, influenced 6502

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### Motorola-6800
6800 → 6809 (enhanced) → 68000 (16/32-bit leap)

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### Motorola-6800
Automotive, industrial control, early personal computers, education

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### Motorola-6800
- **Strengths:** Simple, reliable, single supply, good interrupt handling, regular instruction set
- **Weaknesses:** Limited registers, soon overshadowed by 6502 (cheaper) and Z80 (more capable)

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose Motorola-6800 when:** fault tolerance and reliability are non-negotiable (e.g., Automotive)

**Choose Z80 when:** power efficiency is paramount, especially for ZX Spectrum

---

## Summary

Motorola-6800 and Z80 represent different points in the spectrum of processor design. Both Motorola-6800 and Z80 share the CISC design philosophy, yet diverge significantly in implementation details, ecosystem maturity, and target applications. The choice between them often comes down to existing codebases, available tools, and specific performance requirements rather than fundamental architectural superiority.

---

*Generated for the Assembly Hello World Collection*
