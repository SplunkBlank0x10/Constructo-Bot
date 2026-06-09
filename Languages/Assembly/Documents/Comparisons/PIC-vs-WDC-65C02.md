# PIC vs WDC-65C02

## Overview

This document compares **PIC** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PIC | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 8/16 | 8 |
| **Type** | RISC (Harvard, minimal) | CISC (CMOS enhanced 6502) |
| **Year** | 1976 | 1978 |
| **Creator** | General Instrument → Microchip Technology | Western Design Center (Bill Mensch) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### PIC
> *Minimalism to the extreme - 35 instructions, every transistor earns its place*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** PIC approaches computing with a risc philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### PIC
1 working register (W), banking via BSR

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** PIC offers minimal registers (minimal-style architecture), while WDC-65C02 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### PIC
Harvard architecture, banking, 2-stage pipeline, minimal instruction set, wide voltage

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### PIC
GI PIC1650 → Microchip PIC16/18 → PIC24/dsPIC → PIC32 (MIPS-based)

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### PIC
Blinking LEDs, sensors, motor control, tiny embedded, education, hobby

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### PIC
- **Strengths:** Cheapest possible, robust, simple to understand, huge variety, low power
- **Weaknesses:** Minimal registers, banking complexity, quirky architecture, limited for complex tasks

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose PIC when:** cost is the primary constraint and the application is simple (Blinking LEDs)

**Choose WDC-65C02 when:** backward compatibility with massive existing software bases is critical

---

## Summary

PIC and WDC-65C02 represent different points in the spectrum of processor design. The 8/16-bit PIC and 8-bit WDC-65C02 serve different scale requirements. PIC excels in constrained environments where every transistor counts, while WDC-65C02 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
