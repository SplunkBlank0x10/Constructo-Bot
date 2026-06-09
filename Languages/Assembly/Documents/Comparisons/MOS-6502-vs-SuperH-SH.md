# MOS-6502 vs SuperH-SH

## Overview

This document compares **MOS-6502** and **SuperH-SH**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MOS-6502 | SuperH-SH |
|-----------|----------|----------|
| **Bits** | 8 | 32 |
| **Type** | CISC | RISC (compressed) |
| **Year** | 1975 | 1992 |
| **Creator** | MOS Technology (Chuck Peddle et al.) | Hitachi (now Renesas) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

### SuperH-SH
> *Density without complexity - native 16-bit instructions, not an add-on*

**Key Difference:** MOS-6502 approaches computing with a cisc philosophy, while SuperH-SH takes a risc approach. 

---

## Register Architecture

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

### SuperH-SH
16 × 32-bit, 16-bit instruction encoding, 32-bit data path

**Comparison:** MOS-6502 offers minimal registers (minimal-style architecture), while SuperH-SH provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

### SuperH-SH
16-bit fixed instructions, delayed branches, MAC for DSP, 5-stage pipeline

---

## Historical Lineage

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

### SuperH-SH
Hitachi H8 → SH-1/2 (Sega) → SH-3/4 (Dreamcast, PDA) → SH-2A (Renesas)

---

## Primary Use Cases

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

### SuperH-SH
Sega Saturn/Dreamcast, automotive, PDAs, industrial, consumer

---

## Strengths & Weaknesses

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

### SuperH-SH
- **Strengths:** Excellent code density, good performance, low power, automotive proven
- **Weaknesses:** Niche now, overshadowed by ARM, Renesas-only ecosystem

---

## When to Choose Which

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

**Choose SuperH-SH when:** power efficiency is paramount, especially for Sega Saturn/Dreamcast

---

## Summary

MOS-6502 and SuperH-SH represent different points in the spectrum of processor design. The 8-bit MOS-6502 and 32-bit SuperH-SH serve different scale requirements. MOS-6502 excels in constrained environments where every transistor counts, while SuperH-SH provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
