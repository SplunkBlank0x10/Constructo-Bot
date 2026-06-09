# ARM vs MOS-6502

## Overview

This document compares **ARM** and **MOS-6502**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM | MOS-6502 |
|-----------|----------|----------|
| **Bits** | 32 | 8 |
| **Type** | RISC | CISC |
| **Year** | 1985 | 1975 |
| **Creator** | Acorn Computers | MOS Technology (Chuck Peddle et al.) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### ARM
> *Elegance through simplicity, power efficiency, every instruction conditional*

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

**Key Difference:** ARM approaches computing with a risc philosophy, while MOS-6502 takes a cisc approach. 

---

## Register Architecture

### ARM
16 (R15=PC), condition codes on all instructions

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

**Comparison:** ARM offers many registers (many-style architecture), while MOS-6502 provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### ARM
Barrel shifter, LDM/STM block moves, Thumb mode, dominant mobile ISA

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

---

## Historical Lineage

### ARM
Acorn RISC Machine → ARM Holdings → ARMv7

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

---

## Primary Use Cases

### ARM
Mobile, embedded, microcontrollers (Cortex-M)

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

---

## Strengths & Weaknesses

### ARM
- **Strengths:** Power efficiency, code density with Thumb, massive ecosystem
- **Weaknesses:** 32-bit limitation, complex history of modes and extensions

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

---

## When to Choose Which

**Choose ARM when:** power efficiency is paramount, especially for Mobile

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

---

## Summary

ARM and MOS-6502 represent different points in the spectrum of processor design. The 8-bit MOS-6502 and 32-bit ARM serve different scale requirements. MOS-6502 excels in constrained environments where every transistor counts, while ARM provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
