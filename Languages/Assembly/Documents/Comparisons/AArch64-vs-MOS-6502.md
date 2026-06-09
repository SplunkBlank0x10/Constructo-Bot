# AArch64 vs MOS-6502

## Overview

This document compares **AArch64** and **MOS-6502**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AArch64 | MOS-6502 |
|-----------|----------|----------|
| **Bits** | 64 | 8 |
| **Type** | RISC | CISC |
| **Year** | 2011 | 1975 |
| **Creator** | ARM Ltd. | MOS Technology (Chuck Peddle et al.) |
| **Endianness** | Bi-endian (mostly little in practice) | Little |

---

## Design Philosophy

### AArch64
> *Clean break from 32-bit ARM, learn from 30 years of experience*

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

**Key Difference:** AArch64 approaches computing with a risc philosophy, while MOS-6502 takes a cisc approach. 

---

## Register Architecture

### AArch64
31 GPRs + zero register, dedicated SP/PC

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

**Comparison:** AArch64 offers few registers (few-style architecture), while MOS-6502 provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### AArch64
No predication (mostly), SVE scalable vectors, 4 exception levels

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

---

## Historical Lineage

### AArch64
ARM → ARMv7 → ARMv8-A (AArch64)

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

---

## Primary Use Cases

### AArch64
Smartphones, servers, Apple Silicon, embedded

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

---

## Strengths & Weaknesses

### AArch64
- **Strengths:** Power efficiency, clean 64-bit design, massive ecosystem
- **Weaknesses:** Complex history, some legacy baggage from ARM32

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

---

## When to Choose Which

**Choose AArch64 when:** power efficiency is paramount, especially for Smartphones

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

---

## Summary

AArch64 and MOS-6502 represent different points in the spectrum of processor design. Separated by 36 years, these architectures reflect the evolution from MOS Technology (Chuck Peddle et al.)'s 1975 approach to ARM Ltd.'s 2011 vision. MOS-6502 carries the constraints and wisdom of its era, while MOS-6502 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
