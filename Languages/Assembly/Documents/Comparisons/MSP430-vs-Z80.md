# MSP430 vs Z80

## Overview

This document compares **MSP430** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MSP430 | Z80 |
|-----------|----------|----------|
| **Bits** | 16 | 8 |
| **Type** | RISC (von Neumann) | CISC |
| **Year** | 1998 | 1976 |
| **Creator** | Texas Instruments | Zilog (Federico Faggin) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### MSP430
> *Ultra-low power without compromise - coin cell for years, instant wake*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** MSP430 approaches computing with a risc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### MSP430
16 × 16-bit (R0=PC, R1=SP, R2=SR, R3=constant generator)

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** MSP430 offers many registers (many-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MSP430
5 low-power modes, flexible clock, instant wake, unified memory, von Neumann in MCU

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### MSP430
Clean sheet design for TI

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### MSP430
Battery sensors, medical devices, utility meters, energy harvesting, IoT

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### MSP430
- **Strengths:** Extremely low power, easy to use, great for battery operation, integrated analog
- **Weaknesses:** 16-bit limitation, less performance than 32-bit ARM, TI-centric ecosystem

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose MSP430 when:** your application fits its domain (Battery sensors) and you value its specific strengths

**Choose Z80 when:** backward compatibility with massive existing software bases is critical

---

## Summary

MSP430 and Z80 represent different points in the spectrum of processor design. Separated by 22 years, these architectures reflect the evolution from Zilog (Federico Faggin)'s 1976 approach to Texas Instruments's 1998 vision. Z80 carries the constraints and wisdom of its era, while Z80 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
