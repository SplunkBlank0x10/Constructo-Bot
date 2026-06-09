# RISC-V vs WDC-65C02

## Overview

This document compares **RISC-V** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | RISC-V | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 32/64/128 | 8 |
| **Type** | RISC | CISC (CMOS enhanced 6502) |
| **Year** | 2010 | 1978 |
| **Creator** | UC Berkeley | Western Design Center (Bill Mensch) |
| **Endianness** | Little (default), bi-endian optional | Little |

---

## Design Philosophy

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** RISC-V approaches computing with a risc philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** RISC-V offers many registers (many-style architecture), while WDC-65C02 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

**Choose WDC-65C02 when:** power efficiency is paramount, especially for Apple IIc

---

## Summary

RISC-V and WDC-65C02 represent different points in the spectrum of processor design. Separated by 32 years, these architectures reflect the evolution from Western Design Center (Bill Mensch)'s 1978 approach to UC Berkeley's 2010 vision. WDC-65C02 carries the constraints and wisdom of its era, while WDC-65C02 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
