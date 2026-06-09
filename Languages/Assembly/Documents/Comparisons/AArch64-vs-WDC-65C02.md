# AArch64 vs WDC-65C02

## Overview

This document compares **AArch64** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AArch64 | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 64 | 8 |
| **Type** | RISC | CISC (CMOS enhanced 6502) |
| **Year** | 2011 | 1978 |
| **Creator** | ARM Ltd. | Western Design Center (Bill Mensch) |
| **Endianness** | Bi-endian (mostly little in practice) | Little |

---

## Design Philosophy

### AArch64
> *Clean break from 32-bit ARM, learn from 30 years of experience*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** AArch64 approaches computing with a risc philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### AArch64
31 GPRs + zero register, dedicated SP/PC

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** Both architectures provide a few-register programming model, though the specific organization differs significantly.

---

## Notable Features

### AArch64
No predication (mostly), SVE scalable vectors, 4 exception levels

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### AArch64
ARM → ARMv7 → ARMv8-A (AArch64)

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### AArch64
Smartphones, servers, Apple Silicon, embedded

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### AArch64
- **Strengths:** Power efficiency, clean 64-bit design, massive ecosystem
- **Weaknesses:** Complex history, some legacy baggage from ARM32

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose AArch64 when:** your application fits its domain (Smartphones) and you value its specific strengths

**Choose WDC-65C02 when:** backward compatibility with massive existing software bases is critical

---

## Summary

AArch64 and WDC-65C02 represent different points in the spectrum of processor design. Separated by 33 years, these architectures reflect the evolution from Western Design Center (Bill Mensch)'s 1978 approach to ARM Ltd.'s 2011 vision. WDC-65C02 carries the constraints and wisdom of its era, while WDC-65C02 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
