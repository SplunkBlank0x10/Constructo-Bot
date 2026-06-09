# SuperH-SH vs WDC-65C02

## Overview

This document compares **SuperH-SH** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | SuperH-SH | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 32 | 8 |
| **Type** | RISC (compressed) | CISC (CMOS enhanced 6502) |
| **Year** | 1992 | 1978 |
| **Creator** | Hitachi (now Renesas) | Western Design Center (Bill Mensch) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### SuperH-SH
> *Density without complexity - native 16-bit instructions, not an add-on*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** SuperH-SH approaches computing with a risc philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### SuperH-SH
16 × 32-bit, 16-bit instruction encoding, 32-bit data path

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** SuperH-SH offers many registers (many-style architecture), while WDC-65C02 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### SuperH-SH
16-bit fixed instructions, delayed branches, MAC for DSP, 5-stage pipeline

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### SuperH-SH
Hitachi H8 → SH-1/2 (Sega) → SH-3/4 (Dreamcast, PDA) → SH-2A (Renesas)

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### SuperH-SH
Sega Saturn/Dreamcast, automotive, PDAs, industrial, consumer

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### SuperH-SH
- **Strengths:** Excellent code density, good performance, low power, automotive proven
- **Weaknesses:** Niche now, overshadowed by ARM, Renesas-only ecosystem

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose SuperH-SH when:** your application fits its domain (Sega Saturn/Dreamcast) and you value its specific strengths

**Choose WDC-65C02 when:** backward compatibility with massive existing software bases is critical

---

## Summary

SuperH-SH and WDC-65C02 represent different points in the spectrum of processor design. The 8-bit WDC-65C02 and 32-bit SuperH-SH serve different scale requirements. WDC-65C02 excels in constrained environments where every transistor counts, while SuperH-SH provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
