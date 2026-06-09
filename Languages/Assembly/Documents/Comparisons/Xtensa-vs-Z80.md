# Xtensa vs Z80

## Overview

This document compares **Xtensa** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Xtensa | Z80 |
|-----------|----------|----------|
| **Bits** | 32 | 8 |
| **Type** | RISC (configurable) | CISC |
| **Year** | 1999 | 1976 |
| **Creator** | Tensilica (now Cadence) | Zilog (Federico Faggin) |
| **Endianness** | Both | Little |

---

## Design Philosophy

### Xtensa
> *The processor you need, not the processor you get - hardware adapts to software*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** Xtensa approaches computing with a risc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### Xtensa
16 × 32-bit (base), extensible with custom instructions

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** Xtensa offers many registers (many-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### Xtensa
Configurable base, TIE language for custom instructions, auto-generated toolchain

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### Xtensa
Clean sheet design by Tensilica

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### Xtensa
WiFi, Bluetooth, audio DSP, video, baseband, custom SoCs (Espressif ESP32)

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### Xtensa
- **Strengths:** Customizable, good density, low power, auto-generated tools, proven in volume
- **Weaknesses:** Cadence licensing, niche ecosystem, complexity in configuration

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose Xtensa when:** application-specific customization of the processor is needed

**Choose Z80 when:** backward compatibility with massive existing software bases is critical

---

## Summary

Xtensa and Z80 represent different points in the spectrum of processor design. Separated by 23 years, these architectures reflect the evolution from Zilog (Federico Faggin)'s 1976 approach to Tensilica (now Cadence)'s 1999 vision. Z80 carries the constraints and wisdom of its era, while Z80 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
