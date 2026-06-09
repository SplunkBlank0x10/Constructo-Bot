# PowerPC vs WDC-65816

## Overview

This document compares **PowerPC** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PowerPC | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 32/64 | 16/8 |
| **Type** | RISC | CISC (16-bit 6502 evolution) |
| **Year** | 1991 | 1984 |
| **Creator** | AIM Alliance (Apple, IBM, Motorola) | Western Design Center (Bill Mensch) |
| **Endianness** | Big (default), supports little | Little |

---

## Design Philosophy

### PowerPC
> *Performance through compiler optimization - 32 GPRs, powerful branches, CR fields*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** PowerPC approaches computing with a risc philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### PowerPC
32 × 32/64-bit GPRs, 32 × 64-bit FPRs, 8-field CR, LR, CTR

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### PowerPC
8-field condition register, branch hints, AltiVec SIMD, Book E for embedded

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### PowerPC
IBM POWER + Motorola 88000 → AIM PowerPC → PowerPC e500/e600 → QorIQ

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### PowerPC
Apple Mac (1994-2006), IBM RS/6000, embedded, automotive, gaming (Xbox 360, PS3, Wii)

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### PowerPC
- **Strengths:** Clean design, good compiler target, AltiVec performance, embedded variants
- **Weaknesses:** Lost desktop to x86, fragmented ecosystem, AIM alliance dissolved

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose PowerPC when:** your application fits its domain (Apple Mac (1994-2006)) and you value its specific strengths

**Choose WDC-65816 when:** power efficiency is paramount, especially for Apple IIGS

---

## Summary

PowerPC and WDC-65816 represent different points in the spectrum of processor design. The 16/8-bit WDC-65816 and 32/64-bit PowerPC serve different scale requirements. WDC-65816 excels in constrained environments where every transistor counts, while PowerPC provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
