# Itanium-IA64 vs WDC-65C02

## Overview

This document compares **Itanium-IA64** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Itanium-IA64 | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 64 | 8 |
| **Type** | EPIC (Explicitly Parallel Instruction Computing) | CISC (CMOS enhanced 6502) |
| **Year** | 2001 | 1978 |
| **Creator** | Intel & Hewlett-Packard | Western Design Center (Bill Mensch) |
| **Endianness** | Both (selected per page) | Little |

---

## Design Philosophy

### Itanium-IA64
> *Explicit parallelism - compiler schedules, hardware just executes*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** Itanium-IA64 approaches computing with a epic philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### Itanium-IA64
128 × 64-bit GPRs, 128 × 82-bit FPRs, 64 × 1-bit predicates, 8 branch

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** Itanium-IA64 offers many registers (many-style architecture), while WDC-65C02 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### Itanium-IA64
Bundles of 3 instructions + template, predication, rotating registers, no OoO hardware

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### Itanium-IA64
HP PA-RISC + Intel ambition → Itanium → discontinued 2021

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### Itanium-IA64
High-end servers, enterprise computing, HP-UX, some HPC

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### Itanium-IA64
- **Strengths:** Theoretical scalability, clean 64-bit, no legacy baggage
- **Weaknesses:** Compiler complexity, no OoO safety net, x86-64 won market, discontinued

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose Itanium-IA64 when:** your application fits its domain (High-end servers) and you value its specific strengths

**Choose WDC-65C02 when:** power efficiency is paramount, especially for Apple IIc

---

## Summary

Itanium-IA64 and WDC-65C02 represent different points in the spectrum of processor design. Separated by 23 years, these architectures reflect the evolution from Western Design Center (Bill Mensch)'s 1978 approach to Intel & Hewlett-Packard's 2001 vision. WDC-65C02 carries the constraints and wisdom of its era, while WDC-65C02 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
