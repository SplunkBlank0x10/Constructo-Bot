# ARM vs IBM-System-360-370

## Overview

This document compares **ARM** and **IBM-System-360-370**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM | IBM-System-360-370 |
|-----------|----------|----------|
| **Bits** | 32 | 32 |
| **Type** | RISC | CISC |
| **Year** | 1985 | 1964 |
| **Creator** | Acorn Computers | IBM |
| **Endianness** | Bi-endian | Big (EBCDIC) |

---

## Design Philosophy

### ARM
> *Elegance through simplicity, power efficiency, every instruction conditional*

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

**Key Difference:** ARM approaches computing with a risc philosophy, while IBM-System-360-370 takes a cisc approach. 

---

## Register Architecture

### ARM
16 (R15=PC), condition codes on all instructions

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### ARM
Barrel shifter, LDM/STM block moves, Thumb mode, dominant mobile ISA

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

---

## Historical Lineage

### ARM
Acorn RISC Machine → ARM Holdings → ARMv7

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

---

## Primary Use Cases

### ARM
Mobile, embedded, microcontrollers (Cortex-M)

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

---

## Strengths & Weaknesses

### ARM
- **Strengths:** Power efficiency, code density with Thumb, massive ecosystem
- **Weaknesses:** 32-bit limitation, complex history of modes and extensions

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

---

## When to Choose Which

**Choose ARM when:** power efficiency is paramount, especially for Mobile

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

---

## Summary

ARM and IBM-System-360-370 represent different points in the spectrum of processor design. Separated by 21 years, these architectures reflect the evolution from IBM's 1964 approach to Acorn Computers's 1985 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
