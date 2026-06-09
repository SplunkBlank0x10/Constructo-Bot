# DEC-PDP-11 vs SuperH-SH

## Overview

This document compares **DEC-PDP-11** and **SuperH-SH**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | SuperH-SH |
|-----------|----------|----------|
| **Bits** | 16 | 32 |
| **Type** | CISC | RISC (compressed) |
| **Year** | 1970 | 1992 |
| **Creator** | Digital Equipment Corporation (DEC) | Hitachi (now Renesas) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### SuperH-SH
> *Density without complexity - native 16-bit instructions, not an add-on*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while SuperH-SH takes a risc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### SuperH-SH
16 × 32-bit, 16-bit instruction encoding, 32-bit data path

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while SuperH-SH provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### SuperH-SH
16-bit fixed instructions, delayed branches, MAC for DSP, 5-stage pipeline

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### SuperH-SH
Hitachi H8 → SH-1/2 (Sega) → SH-3/4 (Dreamcast, PDA) → SH-2A (Renesas)

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### SuperH-SH
Sega Saturn/Dreamcast, automotive, PDAs, industrial, consumer

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### SuperH-SH
- **Strengths:** Excellent code density, good performance, low power, automotive proven
- **Weaknesses:** Niche now, overshadowed by ARM, Renesas-only ecosystem

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose SuperH-SH when:** power efficiency is paramount, especially for Sega Saturn/Dreamcast

---

## Summary

DEC-PDP-11 and SuperH-SH represent different points in the spectrum of processor design. Separated by 22 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1970 approach to Hitachi (now Renesas)'s 1992 vision. DEC-PDP-11 carries the constraints and wisdom of its era, while DEC-PDP-11 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
