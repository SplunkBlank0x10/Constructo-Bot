# WDC-65C02 vs Z80

## Overview

This document compares **WDC-65C02** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | WDC-65C02 | Z80 |
|-----------|----------|----------|
| **Bits** | 8 | 8 |
| **Type** | CISC (CMOS enhanced 6502) | CISC |
| **Year** | 1978 | 1976 |
| **Creator** | Western Design Center (Bill Mensch) | Zilog (Federico Faggin) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** WDC-65C02 approaches computing with a cisc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** Both architectures provide a few-register programming model, though the specific organization differs significantly.

---

## Notable Features

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose WDC-65C02 when:** backward compatibility with massive existing software bases is critical

**Choose Z80 when:** backward compatibility with massive existing software bases is critical

---

## Summary

WDC-65C02 and Z80 represent different points in the spectrum of processor design. Both WDC-65C02 and Z80 share the CISC design philosophy, yet diverge significantly in implementation details, ecosystem maturity, and target applications. The choice between them often comes down to existing codebases, available tools, and specific performance requirements rather than fundamental architectural superiority.

---

*Generated for the Assembly Hello World Collection*
