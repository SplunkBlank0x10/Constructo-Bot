# PIC vs RISC-V

## Overview

This document compares **PIC** and **RISC-V**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PIC | RISC-V |
|-----------|----------|----------|
| **Bits** | 8/16 | 32/64/128 |
| **Type** | RISC (Harvard, minimal) | RISC |
| **Year** | 1976 | 2010 |
| **Creator** | General Instrument → Microchip Technology | UC Berkeley |
| **Endianness** | Little | Little (default), bi-endian optional |

---

## Design Philosophy

### PIC
> *Minimalism to the extreme - 35 instructions, every transistor earns its place*

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

**Key Difference:** PIC approaches computing with a risc philosophy, while RISC-V takes a risc approach. 

---

## Register Architecture

### PIC
1 working register (W), banking via BSR

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

**Comparison:** PIC offers minimal registers (minimal-style architecture), while RISC-V provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### PIC
Harvard architecture, banking, 2-stage pipeline, minimal instruction set, wide voltage

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

---

## Historical Lineage

### PIC
GI PIC1650 → Microchip PIC16/18 → PIC24/dsPIC → PIC32 (MIPS-based)

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

---

## Primary Use Cases

### PIC
Blinking LEDs, sensors, motor control, tiny embedded, education, hobby

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

---

## Strengths & Weaknesses

### PIC
- **Strengths:** Cheapest possible, robust, simple to understand, huge variety, low power
- **Weaknesses:** Minimal registers, banking complexity, quirky architecture, limited for complex tasks

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

---

## When to Choose Which

**Choose PIC when:** power efficiency is paramount, especially for Blinking LEDs

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

PIC and RISC-V represent different points in the spectrum of processor design. Separated by 34 years, these architectures reflect the evolution from General Instrument → Microchip Technology's 1976 approach to UC Berkeley's 2010 vision. PIC carries the constraints and wisdom of its era, while PIC addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
