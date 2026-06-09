# MOS-6502 vs MSP430

## Overview

This document compares **MOS-6502** and **MSP430**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MOS-6502 | MSP430 |
|-----------|----------|----------|
| **Bits** | 8 | 16 |
| **Type** | CISC | RISC (von Neumann) |
| **Year** | 1975 | 1998 |
| **Creator** | MOS Technology (Chuck Peddle et al.) | Texas Instruments |
| **Endianness** | Little | Little |

---

## Design Philosophy

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

### MSP430
> *Ultra-low power without compromise - coin cell for years, instant wake*

**Key Difference:** MOS-6502 approaches computing with a cisc philosophy, while MSP430 takes a risc approach. 

---

## Register Architecture

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

### MSP430
16 × 16-bit (R0=PC, R1=SP, R2=SR, R3=constant generator)

**Comparison:** MOS-6502 offers minimal registers (minimal-style architecture), while MSP430 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

### MSP430
5 low-power modes, flexible clock, instant wake, unified memory, von Neumann in MCU

---

## Historical Lineage

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

### MSP430
Clean sheet design for TI

---

## Primary Use Cases

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

### MSP430
Battery sensors, medical devices, utility meters, energy harvesting, IoT

---

## Strengths & Weaknesses

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

### MSP430
- **Strengths:** Extremely low power, easy to use, great for battery operation, integrated analog
- **Weaknesses:** 16-bit limitation, less performance than 32-bit ARM, TI-centric ecosystem

---

## When to Choose Which

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

**Choose MSP430 when:** power efficiency is paramount, especially for Battery sensors

---

## Summary

MOS-6502 and MSP430 represent different points in the spectrum of processor design. Separated by 23 years, these architectures reflect the evolution from MOS Technology (Chuck Peddle et al.)'s 1975 approach to Texas Instruments's 1998 vision. MOS-6502 carries the constraints and wisdom of its era, while MOS-6502 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
