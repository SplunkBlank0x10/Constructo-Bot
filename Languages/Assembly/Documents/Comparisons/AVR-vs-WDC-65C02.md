# AVR vs WDC-65C02

## Overview

This document compares **AVR** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AVR | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 8 | 8 |
| **Type** | RISC (modified Harvard) | CISC (CMOS enhanced 6502) |
| **Year** | 1996 | 1978 |
| **Creator** | Atmel (now Microchip) | Western Design Center (Bill Mensch) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### AVR
> *RISC for microcontrollers - compiler-friendly, single-cycle*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** AVR approaches computing with a risc philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### AVR
32 × 8-bit (R26-R31 as 16-bit pointers X,Y,Z)

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** AVR offers many registers (many-style architecture), while WDC-65C02 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### AVR
Single-cycle most ops, Harvard architecture, on-chip flash/EEPROM/SRAM

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### AVR
Clean sheet design, inspired by RISC principles

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### AVR
Arduino, embedded control, hobbyist projects, IoT

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### AVR
- **Strengths:** Easy to use, great toolchain, huge community, low power
- **Weaknesses:** 8-bit limitation, limited for complex algorithms

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose AVR when:** your application fits its domain (Arduino) and you value its specific strengths

**Choose WDC-65C02 when:** backward compatibility with massive existing software bases is critical

---

## Summary

AVR and WDC-65C02 represent different points in the spectrum of processor design. The RISC philosophy of AVR and the CISC approach of WDC-65C02 represent fundamentally different tradeoffs between hardware complexity and software simplicity. Neither is universally superior—the right choice depends on the specific constraints of power, cost, performance, and legacy requirements.

---

*Generated for the Assembly Hello World Collection*
