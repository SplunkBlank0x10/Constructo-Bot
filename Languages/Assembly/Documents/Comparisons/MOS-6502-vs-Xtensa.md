# MOS-6502 vs Xtensa

## Overview

This document compares **MOS-6502** and **Xtensa**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MOS-6502 | Xtensa |
|-----------|----------|----------|
| **Bits** | 8 | 32 |
| **Type** | CISC | RISC (configurable) |
| **Year** | 1975 | 1999 |
| **Creator** | MOS Technology (Chuck Peddle et al.) | Tensilica (now Cadence) |
| **Endianness** | Little | Both |

---

## Design Philosophy

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

### Xtensa
> *The processor you need, not the processor you get - hardware adapts to software*

**Key Difference:** MOS-6502 approaches computing with a cisc philosophy, while Xtensa takes a risc approach. 

---

## Register Architecture

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

### Xtensa
16 × 32-bit (base), extensible with custom instructions

**Comparison:** MOS-6502 offers minimal registers (minimal-style architecture), while Xtensa provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

### Xtensa
Configurable base, TIE language for custom instructions, auto-generated toolchain

---

## Historical Lineage

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

### Xtensa
Clean sheet design by Tensilica

---

## Primary Use Cases

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

### Xtensa
WiFi, Bluetooth, audio DSP, video, baseband, custom SoCs (Espressif ESP32)

---

## Strengths & Weaknesses

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

### Xtensa
- **Strengths:** Customizable, good density, low power, auto-generated tools, proven in volume
- **Weaknesses:** Cadence licensing, niche ecosystem, complexity in configuration

---

## When to Choose Which

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

**Choose Xtensa when:** power efficiency is paramount, especially for WiFi

---

## Summary

MOS-6502 and Xtensa represent different points in the spectrum of processor design. Separated by 24 years, these architectures reflect the evolution from MOS Technology (Chuck Peddle et al.)'s 1975 approach to Tensilica (now Cadence)'s 1999 vision. MOS-6502 carries the constraints and wisdom of its era, while MOS-6502 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
