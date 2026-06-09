# MIPS vs PIC

## Overview

This document compares **MIPS** and **PIC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS | PIC |
|-----------|----------|----------|
| **Bits** | 32 | 8/16 |
| **Type** | RISC | RISC (Harvard, minimal) |
| **Year** | 1981 | 1976 |
| **Creator** | Stanford University (MIPS Computer Systems) | General Instrument → Microchip Technology |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### MIPS
> *Keep pipeline simple, let compiler schedule - no hardware interlocks*

### PIC
> *Minimalism to the extreme - 35 instructions, every transistor earns its place*

**Key Difference:** MIPS approaches computing with a risc philosophy, while PIC takes a risc approach. 

---

## Register Architecture

### MIPS
32 × 32-bit ($0 hardwired to zero), HI/LO for multiply

### PIC
1 working register (W), banking via BSR

**Comparison:** MIPS offers many registers (many-style architecture), while PIC provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MIPS
Branch delay slots, load/store architecture, coprocessor interface, academic clean design

### PIC
Harvard architecture, banking, 2-stage pipeline, minimal instruction set, wide voltage

---

## Historical Lineage

### MIPS
Stanford research → MIPS I → MIPS II → MIPS III (64-bit) → MIPS32/64

### PIC
GI PIC1650 → Microchip PIC16/18 → PIC24/dsPIC → PIC32 (MIPS-based)

---

## Primary Use Cases

### MIPS
Workstations (SGI), embedded, gaming (PS1, PS2, N64), education

### PIC
Blinking LEDs, sensors, motor control, tiny embedded, education, hobby

---

## Strengths & Weaknesses

### MIPS
- **Strengths:** Clean design, easy to teach, good compiler target, proven performance
- **Weaknesses:** Branch delay slots are burden, licensing issues, overshadowed by ARM/RISC-V

### PIC
- **Strengths:** Cheapest possible, robust, simple to understand, huge variety, low power
- **Weaknesses:** Minimal registers, banking complexity, quirky architecture, limited for complex tasks

---

## When to Choose Which

**Choose MIPS when:** your application fits its domain (Workstations (SGI)) and you value its specific strengths

**Choose PIC when:** power efficiency is paramount, especially for Blinking LEDs

---

## Summary

MIPS and PIC represent different points in the spectrum of processor design. The 8/16-bit PIC and 32-bit MIPS serve different scale requirements. PIC excels in constrained environments where every transistor counts, while MIPS provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
