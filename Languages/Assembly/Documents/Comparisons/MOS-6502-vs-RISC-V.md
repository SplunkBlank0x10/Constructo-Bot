# MOS-6502 vs RISC-V

## Overview

This document compares **MOS-6502** and **RISC-V**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MOS-6502 | RISC-V |
|-----------|----------|----------|
| **Bits** | 8 | 32/64/128 |
| **Type** | CISC | RISC |
| **Year** | 1975 | 2010 |
| **Creator** | MOS Technology (Chuck Peddle et al.) | UC Berkeley |
| **Endianness** | Little | Little (default), bi-endian optional |

---

## Design Philosophy

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

**Key Difference:** MOS-6502 approaches computing with a cisc philosophy, while RISC-V takes a risc approach. 

---

## Register Architecture

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

**Comparison:** MOS-6502 offers minimal registers (minimal-style architecture), while RISC-V provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

---

## Historical Lineage

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

---

## Primary Use Cases

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

---

## Strengths & Weaknesses

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

---

## When to Choose Which

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

MOS-6502 and RISC-V represent different points in the spectrum of processor design. Separated by 35 years, these architectures reflect the evolution from MOS Technology (Chuck Peddle et al.)'s 1975 approach to UC Berkeley's 2010 vision. MOS-6502 carries the constraints and wisdom of its era, while MOS-6502 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
