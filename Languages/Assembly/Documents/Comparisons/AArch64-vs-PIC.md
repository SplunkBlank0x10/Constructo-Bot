# AArch64 vs PIC

## Overview

This document compares **AArch64** and **PIC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AArch64 | PIC |
|-----------|----------|----------|
| **Bits** | 64 | 8/16 |
| **Type** | RISC | RISC (Harvard, minimal) |
| **Year** | 2011 | 1976 |
| **Creator** | ARM Ltd. | General Instrument → Microchip Technology |
| **Endianness** | Bi-endian (mostly little in practice) | Little |

---

## Design Philosophy

### AArch64
> *Clean break from 32-bit ARM, learn from 30 years of experience*

### PIC
> *Minimalism to the extreme - 35 instructions, every transistor earns its place*

**Key Difference:** AArch64 approaches computing with a risc philosophy, while PIC takes a risc approach. 

---

## Register Architecture

### AArch64
31 GPRs + zero register, dedicated SP/PC

### PIC
1 working register (W), banking via BSR

**Comparison:** AArch64 offers few registers (few-style architecture), while PIC provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### AArch64
No predication (mostly), SVE scalable vectors, 4 exception levels

### PIC
Harvard architecture, banking, 2-stage pipeline, minimal instruction set, wide voltage

---

## Historical Lineage

### AArch64
ARM → ARMv7 → ARMv8-A (AArch64)

### PIC
GI PIC1650 → Microchip PIC16/18 → PIC24/dsPIC → PIC32 (MIPS-based)

---

## Primary Use Cases

### AArch64
Smartphones, servers, Apple Silicon, embedded

### PIC
Blinking LEDs, sensors, motor control, tiny embedded, education, hobby

---

## Strengths & Weaknesses

### AArch64
- **Strengths:** Power efficiency, clean 64-bit design, massive ecosystem
- **Weaknesses:** Complex history, some legacy baggage from ARM32

### PIC
- **Strengths:** Cheapest possible, robust, simple to understand, huge variety, low power
- **Weaknesses:** Minimal registers, banking complexity, quirky architecture, limited for complex tasks

---

## When to Choose Which

**Choose AArch64 when:** your application fits its domain (Smartphones) and you value its specific strengths

**Choose PIC when:** cost is the primary constraint and the application is simple (Blinking LEDs)

---

## Summary

AArch64 and PIC represent different points in the spectrum of processor design. Separated by 35 years, these architectures reflect the evolution from General Instrument → Microchip Technology's 1976 approach to ARM Ltd.'s 2011 vision. PIC carries the constraints and wisdom of its era, while PIC addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
