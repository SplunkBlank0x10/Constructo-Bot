# ARM vs WDC-65C02

## Overview

This document compares **ARM** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 32 | 8 |
| **Type** | RISC | CISC (CMOS enhanced 6502) |
| **Year** | 1985 | 1978 |
| **Creator** | Acorn Computers | Western Design Center (Bill Mensch) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### ARM
> *Elegance through simplicity, power efficiency, every instruction conditional*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** ARM approaches computing with a risc philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### ARM
16 (R15=PC), condition codes on all instructions

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** ARM offers many registers (many-style architecture), while WDC-65C02 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### ARM
Barrel shifter, LDM/STM block moves, Thumb mode, dominant mobile ISA

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### ARM
Acorn RISC Machine → ARM Holdings → ARMv7

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### ARM
Mobile, embedded, microcontrollers (Cortex-M)

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### ARM
- **Strengths:** Power efficiency, code density with Thumb, massive ecosystem
- **Weaknesses:** 32-bit limitation, complex history of modes and extensions

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose ARM when:** your application fits its domain (Mobile) and you value its specific strengths

**Choose WDC-65C02 when:** backward compatibility with massive existing software bases is critical

---

## Summary

ARM and WDC-65C02 represent different points in the spectrum of processor design. The 8-bit WDC-65C02 and 32-bit ARM serve different scale requirements. WDC-65C02 excels in constrained environments where every transistor counts, while ARM provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
