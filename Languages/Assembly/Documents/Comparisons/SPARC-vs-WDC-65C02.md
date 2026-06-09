# SPARC vs WDC-65C02

## Overview

This document compares **SPARC** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | SPARC | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 32 | 8 |
| **Type** | RISC | CISC (CMOS enhanced 6502) |
| **Year** | 1985 | 1978 |
| **Creator** | Sun Microsystems (David Patterson et al.) | Western Design Center (Bill Mensch) |
| **Endianness** | Big | Little |

---

## Design Philosophy

### SPARC
> *Windows on the world - register windows eliminate save/restore on calls*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** SPARC approaches computing with a risc philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### SPARC
32 visible (8 global, 8 in, 8 local, 8 out), windows overlap caller/callee

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** SPARC offers many registers (many-style architecture), while WDC-65C02 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### SPARC
Register windows, SAVE/RESTORE instructions, tagged arithmetic, open licensing

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### SPARC
Berkeley RISC I/II → SPARC (1985) → SPARC V8 → SPARCv9 (64-bit)

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### SPARC
Sun workstations/servers, Fujitsu supercomputers, embedded (LEON), education

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### SPARC
- **Strengths:** Fast procedure calls, elegant window mechanism, open specification
- **Weaknesses:** Window overflow complexity, big-endian default, Sun's demise, niche now

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose SPARC when:** you need an open, royalty-free ISA with no licensing constraints

**Choose WDC-65C02 when:** power efficiency is paramount, especially for Apple IIc

---

## Summary

SPARC and WDC-65C02 represent different points in the spectrum of processor design. The 8-bit WDC-65C02 and 32-bit SPARC serve different scale requirements. WDC-65C02 excels in constrained environments where every transistor counts, while SPARC provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
