# Intel-8051 vs MOS-6502

## Overview

This document compares **Intel-8051** and **MOS-6502**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Intel-8051 | MOS-6502 |
|-----------|----------|----------|
| **Bits** | 8 | 8 |
| **Type** | CISC (Harvard) | CISC |
| **Year** | 1980 | 1975 |
| **Creator** | Intel | MOS Technology (Chuck Peddle et al.) |
| **Endianness** | Little (mostly) | Little |

---

## Design Philosophy

### Intel-8051
> *Integration over simplicity - single chip with CPU, RAM, ROM, I/O, timers*

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

**Key Difference:** Intel-8051 approaches computing with a cisc philosophy, while MOS-6502 takes a cisc approach. 

---

## Register Architecture

### Intel-8051
A (accumulator), B, DPTR, 4 banks of R0-R7, bit-addressable RAM

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

**Comparison:** Both architectures provide a minimal-register programming model, though the specific organization differs significantly.

---

## Notable Features

### Intel-8051
Bit-addressable RAM, Boolean processor, 4 register banks, most manufactured MCU ever

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

---

## Historical Lineage

### Intel-8051
8048 → 8051 → 8052 → thousands of variants

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

---

## Primary Use Cases

### Intel-8051
Industrial control, appliances, automotive, legacy embedded

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

---

## Strengths & Weaknesses

### Intel-8051
- **Strengths:** Ubiquitous, cheap, familiar, huge ecosystem, robust
- **Weaknesses:** 8-bit limitation, outdated, power-hungry vs modern MCUs

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

---

## When to Choose Which

**Choose Intel-8051 when:** cost is the primary constraint and the application is simple (Industrial control)

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

---

## Summary

Intel-8051 and MOS-6502 represent different points in the spectrum of processor design. Both Intel-8051 and MOS-6502 share the CISC design philosophy, yet diverge significantly in implementation details, ecosystem maturity, and target applications. The choice between them often comes down to existing codebases, available tools, and specific performance requirements rather than fundamental architectural superiority.

---

*Generated for the Assembly Hello World Collection*
