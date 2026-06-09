# DEC-VAX vs SuperH-SH

## Overview

This document compares **DEC-VAX** and **SuperH-SH**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-VAX | SuperH-SH |
|-----------|----------|----------|
| **Bits** | 32 | 32 |
| **Type** | CISC | RISC (compressed) |
| **Year** | 1977 | 1992 |
| **Creator** | Digital Equipment Corporation (DEC) | Hitachi (now Renesas) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

### SuperH-SH
> *Density without complexity - native 16-bit instructions, not an add-on*

**Key Difference:** DEC-VAX approaches computing with a cisc philosophy, while SuperH-SH takes a risc approach. 

---

## Register Architecture

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

### SuperH-SH
16 × 32-bit, 16-bit instruction encoding, 32-bit data path

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

### SuperH-SH
16-bit fixed instructions, delayed branches, MAC for DSP, 5-stage pipeline

---

## Historical Lineage

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

### SuperH-SH
Hitachi H8 → SH-1/2 (Sega) → SH-3/4 (Dreamcast, PDA) → SH-2A (Renesas)

---

## Primary Use Cases

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

### SuperH-SH
Sega Saturn/Dreamcast, automotive, PDAs, industrial, consumer

---

## Strengths & Weaknesses

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

### SuperH-SH
- **Strengths:** Excellent code density, good performance, low power, automotive proven
- **Weaknesses:** Niche now, overshadowed by ARM, Renesas-only ecosystem

---

## When to Choose Which

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose SuperH-SH when:** power efficiency is paramount, especially for Sega Saturn/Dreamcast

---

## Summary

DEC-VAX and SuperH-SH represent different points in the spectrum of processor design. The CISC philosophy of DEC-VAX and the RISC approach of SuperH-SH represent fundamentally different tradeoffs between hardware complexity and software simplicity. Neither is universally superior—the right choice depends on the specific constraints of power, cost, performance, and legacy requirements.

---

*Generated for the Assembly Hello World Collection*
