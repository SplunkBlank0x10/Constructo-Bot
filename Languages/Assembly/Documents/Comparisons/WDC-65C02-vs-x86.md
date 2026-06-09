# WDC-65C02 vs x86

## Overview

This document compares **WDC-65C02** and **x86**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | WDC-65C02 | x86 |
|-----------|----------|----------|
| **Bits** | 8 | 32 |
| **Type** | CISC (CMOS enhanced 6502) | CISC |
| **Year** | 1978 | 1985 |
| **Creator** | Western Design Center (Bill Mensch) | Intel |
| **Endianness** | Little | Little |

---

## Design Philosophy

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

### x86
> *Software longevity through hardware complexity - cruft carries forward*

**Key Difference:** WDC-65C02 approaches computing with a cisc philosophy, while x86 takes a cisc approach. 

---

## Register Architecture

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

### x86
8 × 32-bit (EAX-EDX, ESI, EDI, EBP, ESP)

**Comparison:** WDC-65C02 offers few registers (few-style architecture), while x86 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

### x86
Variable-length 1-15 bytes, segmentation, real/protected modes, x87/SSE

---

## Historical Lineage

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

### x86
8086 → 80286 → 80386 → Pentium → Core → x86-64

---

## Primary Use Cases

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

### x86
PCs, servers, laptops, dominant general-purpose computing 1985-2000s

---

## Strengths & Weaknesses

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

### x86
- **Strengths:** Massive software base, backward compatibility, performance, ecosystem
- **Weaknesses:** Complex decode, legacy baggage, power hungry, security issues from complexity

---

## When to Choose Which

**Choose WDC-65C02 when:** power efficiency is paramount, especially for Apple IIc

**Choose x86 when:** backward compatibility with massive existing software bases is critical

---

## Summary

WDC-65C02 and x86 represent different points in the spectrum of processor design. The 8-bit WDC-65C02 and 32-bit x86 serve different scale requirements. WDC-65C02 excels in constrained environments where every transistor counts, while x86 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
