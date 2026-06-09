# PA-RISC vs PIC

## Overview

This document compares **PA-RISC** and **PIC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PA-RISC | PIC |
|-----------|----------|----------|
| **Bits** | 32/64 | 8/16 |
| **Type** | RISC | RISC (Harvard, minimal) |
| **Year** | 1986 | 1976 |
| **Creator** | Hewlett-Packard | General Instrument → Microchip Technology |
| **Endianness** | Big | Little |

---

## Design Philosophy

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

### PIC
> *Minimalism to the extreme - 35 instructions, every transistor earns its place*

**Key Difference:** PA-RISC approaches computing with a risc philosophy, while PIC takes a risc approach. 

---

## Register Architecture

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

### PIC
1 working register (W), banking via BSR

**Comparison:** PA-RISC offers many registers (many-style architecture), while PIC provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

### PIC
Harvard architecture, banking, 2-stage pipeline, minimal instruction set, wide voltage

---

## Historical Lineage

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

### PIC
GI PIC1650 → Microchip PIC16/18 → PIC24/dsPIC → PIC32 (MIPS-based)

---

## Primary Use Cases

### PA-RISC
HP workstations, HP 9000 servers, some embedded

### PIC
Blinking LEDs, sensors, motor control, tiny embedded, education, hobby

---

## Strengths & Weaknesses

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

### PIC
- **Strengths:** Cheapest possible, robust, simple to understand, huge variety, low power
- **Weaknesses:** Minimal registers, banking complexity, quirky architecture, limited for complex tasks

---

## When to Choose Which

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

**Choose PIC when:** power efficiency is paramount, especially for Blinking LEDs

---

## Summary

PA-RISC and PIC represent different points in the spectrum of processor design. The 8/16-bit PIC and 32/64-bit PA-RISC serve different scale requirements. PIC excels in constrained environments where every transistor counts, while PA-RISC provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
