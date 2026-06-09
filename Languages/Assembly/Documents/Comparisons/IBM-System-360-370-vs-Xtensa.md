# IBM-System-360-370 vs Xtensa

## Overview

This document compares **IBM-System-360-370** and **Xtensa**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | Xtensa |
|-----------|----------|----------|
| **Bits** | 32 | 32 |
| **Type** | CISC | RISC (configurable) |
| **Year** | 1964 | 1999 |
| **Creator** | IBM | Tensilica (now Cadence) |
| **Endianness** | Big (EBCDIC) | Both |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### Xtensa
> *The processor you need, not the processor you get - hardware adapts to software*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while Xtensa takes a risc approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### Xtensa
16 × 32-bit (base), extensible with custom instructions

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### Xtensa
Configurable base, TIE language for custom instructions, auto-generated toolchain

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### Xtensa
Clean sheet design by Tensilica

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### Xtensa
WiFi, Bluetooth, audio DSP, video, baseband, custom SoCs (Espressif ESP32)

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### Xtensa
- **Strengths:** Customizable, good density, low power, auto-generated tools, proven in volume
- **Weaknesses:** Cadence licensing, niche ecosystem, complexity in configuration

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose Xtensa when:** power efficiency is paramount, especially for WiFi

---

## Summary

IBM-System-360-370 and Xtensa represent different points in the spectrum of processor design. Separated by 35 years, these architectures reflect the evolution from IBM's 1964 approach to Tensilica (now Cadence)'s 1999 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
