# SPARC-LEON vs WDC-65C02

## Overview

This document compares **SPARC-LEON** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | SPARC-LEON | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 32 | 8 |
| **Type** | RISC (radiation-hardened) | CISC (CMOS enhanced 6502) |
| **Year** | 1997 | 1978 |
| **Creator** | Aeroflex Gaisler (now Cobham) | Western Design Center (Bill Mensch) |
| **Endianness** | Big | Little |

---

## Design Philosophy

### SPARC-LEON
> *Reliability above all - survive space radiation, detect and correct SEUs automatically*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** SPARC-LEON approaches computing with a risc philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### SPARC-LEON
Same as SPARC V8 (32 visible, register windows)

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** SPARC-LEON offers many registers (many-style architecture), while WDC-65C02 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### SPARC-LEON
Triple modular redundancy (TMR), EDAC on memory, watchdog, open-source VHDL

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### SPARC-LEON
SPARC V8 → LEON → LEON2 → LEON3/4 (open source)

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### SPARC-LEON
Satellites, spacecraft, ESA missions, NASA missions, radiation environments

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### SPARC-LEON
- **Strengths:** Radiation tolerance, SPARC compatibility, open source, flight proven
- **Weaknesses:** Niche market, lower performance than commercial CPUs, expensive to qualify

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose SPARC-LEON when:** you need an open, royalty-free ISA with no licensing constraints

**Choose WDC-65C02 when:** power efficiency is paramount, especially for Apple IIc

---

## Summary

SPARC-LEON and WDC-65C02 represent different points in the spectrum of processor design. The 8-bit WDC-65C02 and 32-bit SPARC-LEON serve different scale requirements. WDC-65C02 excels in constrained environments where every transistor counts, while SPARC-LEON provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
