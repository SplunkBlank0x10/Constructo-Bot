# RISC-V vs Z8000

## Overview

This document compares **RISC-V** and **Z8000**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | RISC-V | Z8000 |
|-----------|----------|----------|
| **Bits** | 32/64/128 | 16 |
| **Type** | RISC | CISC |
| **Year** | 2010 | 1979 |
| **Creator** | UC Berkeley | Zilog |
| **Endianness** | Little (default), bi-endian optional | Big |

---

## Design Philosophy

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

### Z8000
> *16-bit done right - more regular than 8086, flexible segmented or flat*

**Key Difference:** RISC-V approaches computing with a risc philosophy, while Z8000 takes a cisc approach. 

---

## Register Architecture

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

### Z8000
16 × 16-bit (pairable to 32-bit), two stack pointers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

### Z8000
Segmented (Z8001) or non-segmented (Z8002), string instructions, 23-bit addressing

---

## Historical Lineage

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

### Z8000
Z80 → Z8000 (16-bit) → Z80000 (32-bit, rare) → discontinued

---

## Primary Use Cases

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

### Z8000
Industrial control, military, some Unix workstations, embedded

---

## Strengths & Weaknesses

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

### Z8000
- **Strengths:** Clean design, orthogonal, flexible addressing, good for systems programming
- **Weaknesses:** Late to market, no software ecosystem, x86 won, discontinued

---

## When to Choose Which

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

**Choose Z8000 when:** your application fits its domain (Industrial control) and you value its specific strengths

---

## Summary

RISC-V and Z8000 represent different points in the spectrum of processor design. Separated by 31 years, these architectures reflect the evolution from Zilog's 1979 approach to UC Berkeley's 2010 vision. Z8000 carries the constraints and wisdom of its era, while Z8000 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
