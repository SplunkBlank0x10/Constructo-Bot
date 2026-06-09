# AVR vs MOS-6502

## Overview

This document compares **AVR** and **MOS-6502**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AVR | MOS-6502 |
|-----------|----------|----------|
| **Bits** | 8 | 8 |
| **Type** | RISC (modified Harvard) | CISC |
| **Year** | 1996 | 1975 |
| **Creator** | Atmel (now Microchip) | MOS Technology (Chuck Peddle et al.) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### AVR
> *RISC for microcontrollers - compiler-friendly, single-cycle*

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

**Key Difference:** AVR approaches computing with a risc philosophy, while MOS-6502 takes a cisc approach. 

---

## Register Architecture

### AVR
32 × 8-bit (R26-R31 as 16-bit pointers X,Y,Z)

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

**Comparison:** AVR offers many registers (many-style architecture), while MOS-6502 provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### AVR
Single-cycle most ops, Harvard architecture, on-chip flash/EEPROM/SRAM

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

---

## Historical Lineage

### AVR
Clean sheet design, inspired by RISC principles

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

---

## Primary Use Cases

### AVR
Arduino, embedded control, hobbyist projects, IoT

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

---

## Strengths & Weaknesses

### AVR
- **Strengths:** Easy to use, great toolchain, huge community, low power
- **Weaknesses:** 8-bit limitation, limited for complex algorithms

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

---

## When to Choose Which

**Choose AVR when:** power efficiency is paramount, especially for Arduino

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

---

## Summary

AVR and MOS-6502 represent different points in the spectrum of processor design. Separated by 21 years, these architectures reflect the evolution from MOS Technology (Chuck Peddle et al.)'s 1975 approach to Atmel (now Microchip)'s 1996 vision. MOS-6502 carries the constraints and wisdom of its era, while MOS-6502 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
