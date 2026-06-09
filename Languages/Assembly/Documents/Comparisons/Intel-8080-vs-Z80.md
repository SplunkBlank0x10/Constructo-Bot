# Intel-8080 vs Z80

## Overview

This document compares **Intel-8080** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Intel-8080 | Z80 |
|-----------|----------|----------|
| **Bits** | 8 | 8 |
| **Type** | CISC | CISC |
| **Year** | 1974 | 1976 |
| **Creator** | Intel | Zilog (Federico Faggin) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### Intel-8080
> *The microprocessor as a computer - general purpose, external memory*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** Intel-8080 approaches computing with a cisc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### Intel-8080
7 × 8-bit (A,B,C,D,E,H,L), pairs as 16-bit (BC,DE,HL)

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** Intel-8080 offers many registers (many-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### Intel-8080
64KB space, 3 power supplies, 5 interrupts, CP/M era, Altair/IMSAI

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### Intel-8080
8008 → 8080 → 8085 → 8086 (not binary compatible but design lineage)

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### Intel-8080
Early personal computers, CP/M systems, embedded, industrial

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### Intel-8080
- **Strengths:** First widely successful general-purpose CPU, established 8-bit paradigm
- **Weaknesses:** Limited registers, complex support chips, multiple power supplies

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose Intel-8080 when:** your application fits its domain (Early personal computers) and you value its specific strengths

**Choose Z80 when:** power efficiency is paramount, especially for ZX Spectrum

---

## Summary

Intel-8080 and Z80 represent different points in the spectrum of processor design. Both Intel-8080 and Z80 share the CISC design philosophy, yet diverge significantly in implementation details, ecosystem maturity, and target applications. The choice between them often comes down to existing codebases, available tools, and specific performance requirements rather than fundamental architectural superiority.

---

*Generated for the Assembly Hello World Collection*
