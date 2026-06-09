# MOS-6502 vs PIC

## Overview

This document compares **MOS-6502** and **PIC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MOS-6502 | PIC |
|-----------|----------|----------|
| **Bits** | 8 | 8/16 |
| **Type** | CISC | RISC (Harvard, minimal) |
| **Year** | 1975 | 1976 |
| **Creator** | MOS Technology (Chuck Peddle et al.) | General Instrument → Microchip Technology |
| **Endianness** | Little | Little |

---

## Design Philosophy

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

### PIC
> *Minimalism to the extreme - 35 instructions, every transistor earns its place*

**Key Difference:** MOS-6502 approaches computing with a cisc philosophy, while PIC takes a risc approach. 

---

## Register Architecture

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

### PIC
1 working register (W), banking via BSR

**Comparison:** Both architectures provide a minimal-register programming model, though the specific organization differs significantly.

---

## Notable Features

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

### PIC
Harvard architecture, banking, 2-stage pipeline, minimal instruction set, wide voltage

---

## Historical Lineage

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

### PIC
GI PIC1650 → Microchip PIC16/18 → PIC24/dsPIC → PIC32 (MIPS-based)

---

## Primary Use Cases

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

### PIC
Blinking LEDs, sensors, motor control, tiny embedded, education, hobby

---

## Strengths & Weaknesses

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

### PIC
- **Strengths:** Cheapest possible, robust, simple to understand, huge variety, low power
- **Weaknesses:** Minimal registers, banking complexity, quirky architecture, limited for complex tasks

---

## When to Choose Which

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

**Choose PIC when:** power efficiency is paramount, especially for Blinking LEDs

---

## Summary

MOS-6502 and PIC represent different points in the spectrum of processor design. The 8-bit MOS-6502 and 8/16-bit PIC serve different scale requirements. MOS-6502 excels in constrained environments where every transistor counts, while PIC provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
