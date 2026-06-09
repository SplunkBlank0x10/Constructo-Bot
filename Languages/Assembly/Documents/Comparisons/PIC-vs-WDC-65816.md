# PIC vs WDC-65816

## Overview

This document compares **PIC** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PIC | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 8/16 | 16/8 |
| **Type** | RISC (Harvard, minimal) | CISC (16-bit 6502 evolution) |
| **Year** | 1976 | 1984 |
| **Creator** | General Instrument → Microchip Technology | Western Design Center (Bill Mensch) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### PIC
> *Minimalism to the extreme - 35 instructions, every transistor earns its place*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** PIC approaches computing with a risc philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### PIC
1 working register (W), banking via BSR

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** PIC offers minimal registers (minimal-style architecture), while WDC-65816 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### PIC
Harvard architecture, banking, 2-stage pipeline, minimal instruction set, wide voltage

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### PIC
GI PIC1650 → Microchip PIC16/18 → PIC24/dsPIC → PIC32 (MIPS-based)

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### PIC
Blinking LEDs, sensors, motor control, tiny embedded, education, hobby

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### PIC
- **Strengths:** Cheapest possible, robust, simple to understand, huge variety, low power
- **Weaknesses:** Minimal registers, banking complexity, quirky architecture, limited for complex tasks

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose PIC when:** cost is the primary constraint and the application is simple (Blinking LEDs)

**Choose WDC-65816 when:** backward compatibility with massive existing software bases is critical

---

## Summary

PIC and WDC-65816 represent different points in the spectrum of processor design. The 8/16-bit PIC and 16/8-bit WDC-65816 serve different scale requirements. PIC excels in constrained environments where every transistor counts, while WDC-65816 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
