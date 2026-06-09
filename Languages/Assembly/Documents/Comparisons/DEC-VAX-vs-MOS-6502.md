# DEC-VAX vs MOS-6502

## Overview

This document compares **DEC-VAX** and **MOS-6502**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-VAX | MOS-6502 |
|-----------|----------|----------|
| **Bits** | 32 | 8 |
| **Type** | CISC | CISC |
| **Year** | 1977 | 1975 |
| **Creator** | Digital Equipment Corporation (DEC) | MOS Technology (Chuck Peddle et al.) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

**Key Difference:** DEC-VAX approaches computing with a cisc philosophy, while MOS-6502 takes a cisc approach. 

---

## Register Architecture

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

**Comparison:** DEC-VAX offers many registers (many-style architecture), while MOS-6502 provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

---

## Historical Lineage

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

---

## Primary Use Cases

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

---

## Strengths & Weaknesses

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

---

## When to Choose Which

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

---

## Summary

DEC-VAX and MOS-6502 represent different points in the spectrum of processor design. The 8-bit MOS-6502 and 32-bit DEC-VAX serve different scale requirements. MOS-6502 excels in constrained environments where every transistor counts, while DEC-VAX provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
