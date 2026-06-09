# MIPS64 vs MOS-6502

## Overview

This document compares **MIPS64** and **MOS-6502**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS64 | MOS-6502 |
|-----------|----------|----------|
| **Bits** | 64 | 8 |
| **Type** | RISC | CISC |
| **Year** | 1995 | 1975 |
| **Creator** | MIPS Technologies / Silicon Graphics | MOS Technology (Chuck Peddle et al.) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### MIPS64
> *Extend, don't redesign - same principles, larger scale*

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

**Key Difference:** MIPS64 approaches computing with a risc philosophy, while MOS-6502 takes a cisc approach. 

---

## Register Architecture

### MIPS64
32 × 64-bit, same HI/LO, same delay slots

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

**Comparison:** MIPS64 offers many registers (many-style architecture), while MOS-6502 provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MIPS64
Backward compatible with MIPS32, N64 ABI, same pipeline philosophy

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

---

## Historical Lineage

### MIPS64
MIPS I → MIPS III → MIPS64

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

---

## Primary Use Cases

### MIPS64
High-end workstations, servers, some embedded

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

---

## Strengths & Weaknesses

### MIPS64
- **Strengths:** Continuity, familiar toolchain, 64-bit when needed
- **Weaknesses:** Carried MIPS32 baggage, delay slots still burden, market decline

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

---

## When to Choose Which

**Choose MIPS64 when:** your application fits its domain (High-end workstations) and you value its specific strengths

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

---

## Summary

MIPS64 and MOS-6502 represent different points in the spectrum of processor design. The 8-bit MOS-6502 and 64-bit MIPS64 serve different scale requirements. MOS-6502 excels in constrained environments where every transistor counts, while MIPS64 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
