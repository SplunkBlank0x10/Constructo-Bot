# ARM vs PIC

## Overview

This document compares **ARM** and **PIC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM | PIC |
|-----------|----------|----------|
| **Bits** | 32 | 8/16 |
| **Type** | RISC | RISC (Harvard, minimal) |
| **Year** | 1985 | 1976 |
| **Creator** | Acorn Computers | General Instrument → Microchip Technology |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### ARM
> *Elegance through simplicity, power efficiency, every instruction conditional*

### PIC
> *Minimalism to the extreme - 35 instructions, every transistor earns its place*

**Key Difference:** ARM approaches computing with a risc philosophy, while PIC takes a risc approach. 

---

## Register Architecture

### ARM
16 (R15=PC), condition codes on all instructions

### PIC
1 working register (W), banking via BSR

**Comparison:** ARM offers many registers (many-style architecture), while PIC provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### ARM
Barrel shifter, LDM/STM block moves, Thumb mode, dominant mobile ISA

### PIC
Harvard architecture, banking, 2-stage pipeline, minimal instruction set, wide voltage

---

## Historical Lineage

### ARM
Acorn RISC Machine → ARM Holdings → ARMv7

### PIC
GI PIC1650 → Microchip PIC16/18 → PIC24/dsPIC → PIC32 (MIPS-based)

---

## Primary Use Cases

### ARM
Mobile, embedded, microcontrollers (Cortex-M)

### PIC
Blinking LEDs, sensors, motor control, tiny embedded, education, hobby

---

## Strengths & Weaknesses

### ARM
- **Strengths:** Power efficiency, code density with Thumb, massive ecosystem
- **Weaknesses:** 32-bit limitation, complex history of modes and extensions

### PIC
- **Strengths:** Cheapest possible, robust, simple to understand, huge variety, low power
- **Weaknesses:** Minimal registers, banking complexity, quirky architecture, limited for complex tasks

---

## When to Choose Which

**Choose ARM when:** your application fits its domain (Mobile) and you value its specific strengths

**Choose PIC when:** cost is the primary constraint and the application is simple (Blinking LEDs)

---

## Summary

ARM and PIC represent different points in the spectrum of processor design. The 8/16-bit PIC and 32-bit ARM serve different scale requirements. PIC excels in constrained environments where every transistor counts, while ARM provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
