# DEC-PDP-11 vs Xtensa

## Overview

This document compares **DEC-PDP-11** and **Xtensa**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | Xtensa |
|-----------|----------|----------|
| **Bits** | 16 | 32 |
| **Type** | CISC | RISC (configurable) |
| **Year** | 1970 | 1999 |
| **Creator** | Digital Equipment Corporation (DEC) | Tensilica (now Cadence) |
| **Endianness** | Little | Both |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### Xtensa
> *The processor you need, not the processor you get - hardware adapts to software*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while Xtensa takes a risc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### Xtensa
16 × 32-bit (base), extensible with custom instructions

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while Xtensa provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### Xtensa
Configurable base, TIE language for custom instructions, auto-generated toolchain

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### Xtensa
Clean sheet design by Tensilica

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### Xtensa
WiFi, Bluetooth, audio DSP, video, baseband, custom SoCs (Espressif ESP32)

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### Xtensa
- **Strengths:** Customizable, good density, low power, auto-generated tools, proven in volume
- **Weaknesses:** Cadence licensing, niche ecosystem, complexity in configuration

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose Xtensa when:** power efficiency is paramount, especially for WiFi

---

## Summary

DEC-PDP-11 and Xtensa represent different points in the spectrum of processor design. Separated by 29 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1970 approach to Tensilica (now Cadence)'s 1999 vision. DEC-PDP-11 carries the constraints and wisdom of its era, while DEC-PDP-11 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
