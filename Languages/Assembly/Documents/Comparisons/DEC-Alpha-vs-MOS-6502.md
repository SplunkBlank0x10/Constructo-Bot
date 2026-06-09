# DEC-Alpha vs MOS-6502

## Overview

This document compares **DEC-Alpha** and **MOS-6502**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-Alpha | MOS-6502 |
|-----------|----------|----------|
| **Bits** | 64 | 8 |
| **Type** | RISC | CISC |
| **Year** | 1992 | 1975 |
| **Creator** | Digital Equipment Corporation (DEC) | MOS Technology (Chuck Peddle et al.) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-Alpha
> *64 bits, no compromises - pure 64-bit from scratch, no legacy*

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

**Key Difference:** DEC-Alpha approaches computing with a risc philosophy, while MOS-6502 takes a cisc approach. 

---

## Register Architecture

### DEC-Alpha
32 integer + 32 FP (R31/F31 hardwired to zero)

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

**Comparison:** DEC-Alpha offers many registers (many-style architecture), while MOS-6502 provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-Alpha
No condition codes, no byte/halfword loads originally, designed for extreme clock speeds

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

---

## Historical Lineage

### DEC-Alpha
Clean sheet design, influenced by MIPS experience

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

---

## Primary Use Cases

### DEC-Alpha
High-end workstations, servers, scientific computing (Cray-like)

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

---

## Strengths & Weaknesses

### DEC-Alpha
- **Strengths:** Blazing fast for its era, clean design, excellent 64-bit implementation
- **Weaknesses:** DEC's demise, no 32-bit mode, compiler complexity

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

---

## When to Choose Which

**Choose DEC-Alpha when:** maximum single-thread performance is critical (High-end workstations)

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

---

## Summary

DEC-Alpha and MOS-6502 represent different points in the spectrum of processor design. The 8-bit MOS-6502 and 64-bit DEC-Alpha serve different scale requirements. MOS-6502 excels in constrained environments where every transistor counts, while DEC-Alpha provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
