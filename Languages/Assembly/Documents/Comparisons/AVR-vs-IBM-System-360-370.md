# AVR vs IBM-System-360-370

## Overview

This document compares **AVR** and **IBM-System-360-370**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AVR | IBM-System-360-370 |
|-----------|----------|----------|
| **Bits** | 8 | 32 |
| **Type** | RISC (modified Harvard) | CISC |
| **Year** | 1996 | 1964 |
| **Creator** | Atmel (now Microchip) | IBM |
| **Endianness** | Little | Big (EBCDIC) |

---

## Design Philosophy

### AVR
> *RISC for microcontrollers - compiler-friendly, single-cycle*

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

**Key Difference:** AVR approaches computing with a risc philosophy, while IBM-System-360-370 takes a cisc approach. 

---

## Register Architecture

### AVR
32 × 8-bit (R26-R31 as 16-bit pointers X,Y,Z)

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### AVR
Single-cycle most ops, Harvard architecture, on-chip flash/EEPROM/SRAM

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

---

## Historical Lineage

### AVR
Clean sheet design, inspired by RISC principles

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

---

## Primary Use Cases

### AVR
Arduino, embedded control, hobbyist projects, IoT

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

---

## Strengths & Weaknesses

### AVR
- **Strengths:** Easy to use, great toolchain, huge community, low power
- **Weaknesses:** 8-bit limitation, limited for complex algorithms

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

---

## When to Choose Which

**Choose AVR when:** power efficiency is paramount, especially for Arduino

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

---

## Summary

AVR and IBM-System-360-370 represent different points in the spectrum of processor design. Separated by 32 years, these architectures reflect the evolution from IBM's 1964 approach to Atmel (now Microchip)'s 1996 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
