# SPARCv9 vs Z80

## Overview

This document compares **SPARCv9** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | SPARCv9 | Z80 |
|-----------|----------|----------|
| **Bits** | 64 | 8 |
| **Type** | RISC | CISC |
| **Year** | 1993 | 1976 |
| **Creator** | Sun Microsystems / SPARC International | Zilog (Federico Faggin) |
| **Endianness** | Big (default), little supported | Little |

---

## Design Philosophy

### SPARCv9
> *Extend the windows - preserve SPARC mechanism, adapt to 64-bit servers*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** SPARCv9 approaches computing with a risc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### SPARCv9
64-bit, more windows available, same window mechanism

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** Both architectures provide a few-register programming model, though the specific organization differs significantly.

---

## Notable Features

### SPARCv9
VIS SIMD, little-endian option, prefetch, conditional moves, 64-bit addressing

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### SPARCv9
SPARC V8 → SPARCv9 → UltraSPARC → Rock (cancelled) → SPARC64 (Fujitsu)

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### SPARCv9
Sun servers, Fujitsu supercomputers (K computer), enterprise

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### SPARCv9
- **Strengths:** 64-bit SPARC, VIS performance, proven in enterprise, Fujitsu continuation
- **Weaknesses:** Sun's demise, niche market now, x86-64 dominance in servers

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose SPARCv9 when:** your application fits its domain (Sun servers) and you value its specific strengths

**Choose Z80 when:** power efficiency is paramount, especially for ZX Spectrum

---

## Summary

SPARCv9 and Z80 represent different points in the spectrum of processor design. The 8-bit Z80 and 64-bit SPARCv9 serve different scale requirements. Z80 excels in constrained environments where every transistor counts, while SPARCv9 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
