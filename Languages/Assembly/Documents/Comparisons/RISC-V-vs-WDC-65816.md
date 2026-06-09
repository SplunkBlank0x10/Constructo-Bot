# RISC-V vs WDC-65816

## Overview

This document compares **RISC-V** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | RISC-V | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 32/64/128 | 16/8 |
| **Type** | RISC | CISC (16-bit 6502 evolution) |
| **Year** | 2010 | 1984 |
| **Creator** | UC Berkeley | Western Design Center (Bill Mensch) |
| **Endianness** | Little (default), bi-endian optional | Little |

---

## Design Philosophy

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** RISC-V approaches computing with a risc philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

**Choose WDC-65816 when:** power efficiency is paramount, especially for Apple IIGS

---

## Summary

RISC-V and WDC-65816 represent different points in the spectrum of processor design. Separated by 26 years, these architectures reflect the evolution from Western Design Center (Bill Mensch)'s 1984 approach to UC Berkeley's 2010 vision. WDC-65816 carries the constraints and wisdom of its era, while WDC-65816 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
