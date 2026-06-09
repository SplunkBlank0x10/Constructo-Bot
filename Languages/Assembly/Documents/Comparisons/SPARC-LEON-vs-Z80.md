# SPARC-LEON vs Z80

## Overview

This document compares **SPARC-LEON** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | SPARC-LEON | Z80 |
|-----------|----------|----------|
| **Bits** | 32 | 8 |
| **Type** | RISC (radiation-hardened) | CISC |
| **Year** | 1997 | 1976 |
| **Creator** | Aeroflex Gaisler (now Cobham) | Zilog (Federico Faggin) |
| **Endianness** | Big | Little |

---

## Design Philosophy

### SPARC-LEON
> *Reliability above all - survive space radiation, detect and correct SEUs automatically*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** SPARC-LEON approaches computing with a risc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### SPARC-LEON
Same as SPARC V8 (32 visible, register windows)

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** SPARC-LEON offers many registers (many-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### SPARC-LEON
Triple modular redundancy (TMR), EDAC on memory, watchdog, open-source VHDL

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### SPARC-LEON
SPARC V8 → LEON → LEON2 → LEON3/4 (open source)

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### SPARC-LEON
Satellites, spacecraft, ESA missions, NASA missions, radiation environments

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### SPARC-LEON
- **Strengths:** Radiation tolerance, SPARC compatibility, open source, flight proven
- **Weaknesses:** Niche market, lower performance than commercial CPUs, expensive to qualify

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose SPARC-LEON when:** you need an open, royalty-free ISA with no licensing constraints

**Choose Z80 when:** power efficiency is paramount, especially for ZX Spectrum

---

## Summary

SPARC-LEON and Z80 represent different points in the spectrum of processor design. Separated by 21 years, these architectures reflect the evolution from Zilog (Federico Faggin)'s 1976 approach to Aeroflex Gaisler (now Cobham)'s 1997 vision. Z80 carries the constraints and wisdom of its era, while Z80 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
