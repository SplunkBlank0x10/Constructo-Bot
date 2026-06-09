# PA-RISC vs Xtensa

## Overview

This document compares **PA-RISC** and **Xtensa**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PA-RISC | Xtensa |
|-----------|----------|----------|
| **Bits** | 32/64 | 32 |
| **Type** | RISC | RISC (configurable) |
| **Year** | 1986 | 1999 |
| **Creator** | Hewlett-Packard | Tensilica (now Cadence) |
| **Endianness** | Big | Both |

---

## Design Philosophy

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

### Xtensa
> *The processor you need, not the processor you get - hardware adapts to software*

**Key Difference:** PA-RISC approaches computing with a risc philosophy, while Xtensa takes a risc approach. 

---

## Register Architecture

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

### Xtensa
16 × 32-bit (base), extensible with custom instructions

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

### Xtensa
Configurable base, TIE language for custom instructions, auto-generated toolchain

---

## Historical Lineage

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

### Xtensa
Clean sheet design by Tensilica

---

## Primary Use Cases

### PA-RISC
HP workstations, HP 9000 servers, some embedded

### Xtensa
WiFi, Bluetooth, audio DSP, video, baseband, custom SoCs (Espressif ESP32)

---

## Strengths & Weaknesses

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

### Xtensa
- **Strengths:** Customizable, good density, low power, auto-generated tools, proven in volume
- **Weaknesses:** Cadence licensing, niche ecosystem, complexity in configuration

---

## When to Choose Which

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

**Choose Xtensa when:** power efficiency is paramount, especially for WiFi

---

## Summary

PA-RISC and Xtensa represent different points in the spectrum of processor design. The 32/64-bit PA-RISC and 32-bit Xtensa serve different scale requirements. PA-RISC excels in constrained environments where every transistor counts, while Xtensa provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
