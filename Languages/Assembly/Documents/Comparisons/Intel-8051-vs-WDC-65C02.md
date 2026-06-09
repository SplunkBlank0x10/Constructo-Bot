# Intel-8051 vs WDC-65C02

## Overview

This document compares **Intel-8051** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Intel-8051 | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 8 | 8 |
| **Type** | CISC (Harvard) | CISC (CMOS enhanced 6502) |
| **Year** | 1980 | 1978 |
| **Creator** | Intel | Western Design Center (Bill Mensch) |
| **Endianness** | Little (mostly) | Little |

---

## Design Philosophy

### Intel-8051
> *Integration over simplicity - single chip with CPU, RAM, ROM, I/O, timers*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** Intel-8051 approaches computing with a cisc philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### Intel-8051
A (accumulator), B, DPTR, 4 banks of R0-R7, bit-addressable RAM

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** Intel-8051 offers minimal registers (minimal-style architecture), while WDC-65C02 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### Intel-8051
Bit-addressable RAM, Boolean processor, 4 register banks, most manufactured MCU ever

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### Intel-8051
8048 → 8051 → 8052 → thousands of variants

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### Intel-8051
Industrial control, appliances, automotive, legacy embedded

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### Intel-8051
- **Strengths:** Ubiquitous, cheap, familiar, huge ecosystem, robust
- **Weaknesses:** 8-bit limitation, outdated, power-hungry vs modern MCUs

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose Intel-8051 when:** cost is the primary constraint and the application is simple (Industrial control)

**Choose WDC-65C02 when:** power efficiency is paramount, especially for Apple IIc

---

## Summary

Intel-8051 and WDC-65C02 represent different points in the spectrum of processor design. Both Intel-8051 and WDC-65C02 share the CISC design philosophy, yet diverge significantly in implementation details, ecosystem maturity, and target applications. The choice between them often comes down to existing codebases, available tools, and specific performance requirements rather than fundamental architectural superiority.

---

*Generated for the Assembly Hello World Collection*
