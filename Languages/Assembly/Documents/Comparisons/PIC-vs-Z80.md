# PIC vs Z80

## Overview

This document compares **PIC** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PIC | Z80 |
|-----------|----------|----------|
| **Bits** | 8/16 | 8 |
| **Type** | RISC (Harvard, minimal) | CISC |
| **Year** | 1976 | 1976 |
| **Creator** | General Instrument → Microchip Technology | Zilog (Federico Faggin) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### PIC
> *Minimalism to the extreme - 35 instructions, every transistor earns its place*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** PIC approaches computing with a risc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### PIC
1 working register (W), banking via BSR

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** PIC offers minimal registers (minimal-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### PIC
Harvard architecture, banking, 2-stage pipeline, minimal instruction set, wide voltage

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### PIC
GI PIC1650 → Microchip PIC16/18 → PIC24/dsPIC → PIC32 (MIPS-based)

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### PIC
Blinking LEDs, sensors, motor control, tiny embedded, education, hobby

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### PIC
- **Strengths:** Cheapest possible, robust, simple to understand, huge variety, low power
- **Weaknesses:** Minimal registers, banking complexity, quirky architecture, limited for complex tasks

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose PIC when:** cost is the primary constraint and the application is simple (Blinking LEDs)

**Choose Z80 when:** backward compatibility with massive existing software bases is critical

---

## Summary

PIC and Z80 represent different points in the spectrum of processor design. The 8/16-bit PIC and 8-bit Z80 serve different scale requirements. PIC excels in constrained environments where every transistor counts, while Z80 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
