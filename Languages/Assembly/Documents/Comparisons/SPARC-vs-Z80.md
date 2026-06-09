# SPARC vs Z80

## Overview

This document compares **SPARC** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | SPARC | Z80 |
|-----------|----------|----------|
| **Bits** | 32 | 8 |
| **Type** | RISC | CISC |
| **Year** | 1985 | 1976 |
| **Creator** | Sun Microsystems (David Patterson et al.) | Zilog (Federico Faggin) |
| **Endianness** | Big | Little |

---

## Design Philosophy

### SPARC
> *Windows on the world - register windows eliminate save/restore on calls*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** SPARC approaches computing with a risc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### SPARC
32 visible (8 global, 8 in, 8 local, 8 out), windows overlap caller/callee

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** SPARC offers many registers (many-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### SPARC
Register windows, SAVE/RESTORE instructions, tagged arithmetic, open licensing

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### SPARC
Berkeley RISC I/II → SPARC (1985) → SPARC V8 → SPARCv9 (64-bit)

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### SPARC
Sun workstations/servers, Fujitsu supercomputers, embedded (LEON), education

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### SPARC
- **Strengths:** Fast procedure calls, elegant window mechanism, open specification
- **Weaknesses:** Window overflow complexity, big-endian default, Sun's demise, niche now

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose SPARC when:** you need an open, royalty-free ISA with no licensing constraints

**Choose Z80 when:** power efficiency is paramount, especially for ZX Spectrum

---

## Summary

SPARC and Z80 represent different points in the spectrum of processor design. The 8-bit Z80 and 32-bit SPARC serve different scale requirements. Z80 excels in constrained environments where every transistor counts, while SPARC provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
