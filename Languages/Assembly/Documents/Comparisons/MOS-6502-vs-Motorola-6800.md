# MOS-6502 vs Motorola-6800

## Overview

This document compares **MOS-6502** and **Motorola-6800**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MOS-6502 | Motorola-6800 |
|-----------|----------|----------|
| **Bits** | 8 | 8 |
| **Type** | CISC | CISC |
| **Year** | 1975 | 1974 |
| **Creator** | MOS Technology (Chuck Peddle et al.) | Motorola |
| **Endianness** | Little | Big |

---

## Design Philosophy

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

### Motorola-6800
> *Minimal viable computing - simple enough to understand, 5V single supply*

**Key Difference:** MOS-6502 approaches computing with a cisc philosophy, while Motorola-6800 takes a cisc approach. 

---

## Register Architecture

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

### Motorola-6800
A, B (accumulators), X (index), SP, PC

**Comparison:** Both architectures provide a minimal-register programming model, though the specific organization differs significantly.

---

## Notable Features

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

### Motorola-6800
Single 5V supply (vs Intel's 3-voltage), 64KB space, influenced 6502

---

## Historical Lineage

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

### Motorola-6800
6800 → 6809 (enhanced) → 68000 (16/32-bit leap)

---

## Primary Use Cases

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

### Motorola-6800
Automotive, industrial control, early personal computers, education

---

## Strengths & Weaknesses

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

### Motorola-6800
- **Strengths:** Simple, reliable, single supply, good interrupt handling, regular instruction set
- **Weaknesses:** Limited registers, soon overshadowed by 6502 (cheaper) and Z80 (more capable)

---

## When to Choose Which

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

**Choose Motorola-6800 when:** fault tolerance and reliability are non-negotiable (e.g., Automotive)

---

## Summary

MOS-6502 and Motorola-6800 represent different points in the spectrum of processor design. Both MOS-6502 and Motorola-6800 share the CISC design philosophy, yet diverge significantly in implementation details, ecosystem maturity, and target applications. The choice between them often comes down to existing codebases, available tools, and specific performance requirements rather than fundamental architectural superiority.

---

*Generated for the Assembly Hello World Collection*
