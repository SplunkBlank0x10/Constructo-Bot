# Intel-8085 vs MOS-6502

## Overview

This document compares **Intel-8085** and **MOS-6502**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Intel-8085 | MOS-6502 |
|-----------|----------|----------|
| **Bits** | 8 | 8 |
| **Type** | CISC | CISC |
| **Year** | 1976 | 1975 |
| **Creator** | Intel | MOS Technology (Chuck Peddle et al.) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### Intel-8085
> *Simplify the system - integrate clock, single 5V supply*

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

**Key Difference:** Intel-8085 approaches computing with a cisc philosophy, while MOS-6502 takes a cisc approach. 

---

## Register Architecture

### Intel-8085
Same as 8080 (A,B,C,D,E,H,L)

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

**Comparison:** Intel-8085 offers few registers (few-style architecture), while MOS-6502 provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### Intel-8085
Integrated clock generator, SID/SOD serial lines, 5 interrupts, 8080 compatible

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

---

## Historical Lineage

### Intel-8085
8080 → 8085 (enhanced)

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

---

## Primary Use Cases

### Intel-8085
Embedded systems, industrial controllers, educational kits, early portables

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

---

## Strengths & Weaknesses

### Intel-8085
- **Strengths:** Simpler system design, lower power, 8080 compatible, integrated features
- **Weaknesses:** Still 8-bit, limited vs 16-bit emerging, soon overshadowed

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

---

## When to Choose Which

**Choose Intel-8085 when:** power efficiency is paramount, especially for Embedded systems

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

---

## Summary

Intel-8085 and MOS-6502 represent different points in the spectrum of processor design. Both Intel-8085 and MOS-6502 share the CISC design philosophy, yet diverge significantly in implementation details, ecosystem maturity, and target applications. The choice between them often comes down to existing codebases, available tools, and specific performance requirements rather than fundamental architectural superiority.

---

*Generated for the Assembly Hello World Collection*
