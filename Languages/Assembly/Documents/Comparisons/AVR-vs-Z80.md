# AVR vs Z80

## Overview

This document compares **AVR** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AVR | Z80 |
|-----------|----------|----------|
| **Bits** | 8 | 8 |
| **Type** | RISC (modified Harvard) | CISC |
| **Year** | 1996 | 1976 |
| **Creator** | Atmel (now Microchip) | Zilog (Federico Faggin) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### AVR
> *RISC for microcontrollers - compiler-friendly, single-cycle*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** AVR approaches computing with a risc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### AVR
32 × 8-bit (R26-R31 as 16-bit pointers X,Y,Z)

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** AVR offers many registers (many-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### AVR
Single-cycle most ops, Harvard architecture, on-chip flash/EEPROM/SRAM

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### AVR
Clean sheet design, inspired by RISC principles

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### AVR
Arduino, embedded control, hobbyist projects, IoT

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### AVR
- **Strengths:** Easy to use, great toolchain, huge community, low power
- **Weaknesses:** 8-bit limitation, limited for complex algorithms

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose AVR when:** your application fits its domain (Arduino) and you value its specific strengths

**Choose Z80 when:** backward compatibility with massive existing software bases is critical

---

## Summary

AVR and Z80 represent different points in the spectrum of processor design. The RISC philosophy of AVR and the CISC approach of Z80 represent fundamentally different tradeoffs between hardware complexity and software simplicity. Neither is universally superior—the right choice depends on the specific constraints of power, cost, performance, and legacy requirements.

---

*Generated for the Assembly Hello World Collection*
