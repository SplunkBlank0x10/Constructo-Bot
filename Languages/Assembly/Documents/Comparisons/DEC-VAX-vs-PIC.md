# DEC-VAX vs PIC

## Overview

This document compares **DEC-VAX** and **PIC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-VAX | PIC |
|-----------|----------|----------|
| **Bits** | 32 | 8/16 |
| **Type** | CISC | RISC (Harvard, minimal) |
| **Year** | 1977 | 1976 |
| **Creator** | Digital Equipment Corporation (DEC) | General Instrument → Microchip Technology |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

### PIC
> *Minimalism to the extreme - 35 instructions, every transistor earns its place*

**Key Difference:** DEC-VAX approaches computing with a cisc philosophy, while PIC takes a risc approach. 

---

## Register Architecture

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

### PIC
1 working register (W), banking via BSR

**Comparison:** DEC-VAX offers many registers (many-style architecture), while PIC provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

### PIC
Harvard architecture, banking, 2-stage pipeline, minimal instruction set, wide voltage

---

## Historical Lineage

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

### PIC
GI PIC1650 → Microchip PIC16/18 → PIC24/dsPIC → PIC32 (MIPS-based)

---

## Primary Use Cases

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

### PIC
Blinking LEDs, sensors, motor control, tiny embedded, education, hobby

---

## Strengths & Weaknesses

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

### PIC
- **Strengths:** Cheapest possible, robust, simple to understand, huge variety, low power
- **Weaknesses:** Minimal registers, banking complexity, quirky architecture, limited for complex tasks

---

## When to Choose Which

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose PIC when:** power efficiency is paramount, especially for Blinking LEDs

---

## Summary

DEC-VAX and PIC represent different points in the spectrum of processor design. The 8/16-bit PIC and 32-bit DEC-VAX serve different scale requirements. PIC excels in constrained environments where every transistor counts, while DEC-VAX provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
