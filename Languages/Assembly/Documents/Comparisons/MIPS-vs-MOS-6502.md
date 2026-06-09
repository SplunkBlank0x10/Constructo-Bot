# MIPS vs MOS-6502

## Overview

This document compares **MIPS** and **MOS-6502**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS | MOS-6502 |
|-----------|----------|----------|
| **Bits** | 32 | 8 |
| **Type** | RISC | CISC |
| **Year** | 1981 | 1975 |
| **Creator** | Stanford University (MIPS Computer Systems) | MOS Technology (Chuck Peddle et al.) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### MIPS
> *Keep pipeline simple, let compiler schedule - no hardware interlocks*

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

**Key Difference:** MIPS approaches computing with a risc philosophy, while MOS-6502 takes a cisc approach. 

---

## Register Architecture

### MIPS
32 × 32-bit ($0 hardwired to zero), HI/LO for multiply

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

**Comparison:** MIPS offers many registers (many-style architecture), while MOS-6502 provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MIPS
Branch delay slots, load/store architecture, coprocessor interface, academic clean design

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

---

## Historical Lineage

### MIPS
Stanford research → MIPS I → MIPS II → MIPS III (64-bit) → MIPS32/64

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

---

## Primary Use Cases

### MIPS
Workstations (SGI), embedded, gaming (PS1, PS2, N64), education

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

---

## Strengths & Weaknesses

### MIPS
- **Strengths:** Clean design, easy to teach, good compiler target, proven performance
- **Weaknesses:** Branch delay slots are burden, licensing issues, overshadowed by ARM/RISC-V

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

---

## When to Choose Which

**Choose MIPS when:** your application fits its domain (Workstations (SGI)) and you value its specific strengths

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

---

## Summary

MIPS and MOS-6502 represent different points in the spectrum of processor design. The 8-bit MOS-6502 and 32-bit MIPS serve different scale requirements. MOS-6502 excels in constrained environments where every transistor counts, while MIPS provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
