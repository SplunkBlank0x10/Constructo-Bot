# AArch64 vs Z8000

## Overview

This document compares **AArch64** and **Z8000**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AArch64 | Z8000 |
|-----------|----------|----------|
| **Bits** | 64 | 16 |
| **Type** | RISC | CISC |
| **Year** | 2011 | 1979 |
| **Creator** | ARM Ltd. | Zilog |
| **Endianness** | Bi-endian (mostly little in practice) | Big |

---

## Design Philosophy

### AArch64
> *Clean break from 32-bit ARM, learn from 30 years of experience*

### Z8000
> *16-bit done right - more regular than 8086, flexible segmented or flat*

**Key Difference:** AArch64 approaches computing with a risc philosophy, while Z8000 takes a cisc approach. 

---

## Register Architecture

### AArch64
31 GPRs + zero register, dedicated SP/PC

### Z8000
16 × 16-bit (pairable to 32-bit), two stack pointers

**Comparison:** AArch64 offers few registers (few-style architecture), while Z8000 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### AArch64
No predication (mostly), SVE scalable vectors, 4 exception levels

### Z8000
Segmented (Z8001) or non-segmented (Z8002), string instructions, 23-bit addressing

---

## Historical Lineage

### AArch64
ARM → ARMv7 → ARMv8-A (AArch64)

### Z8000
Z80 → Z8000 (16-bit) → Z80000 (32-bit, rare) → discontinued

---

## Primary Use Cases

### AArch64
Smartphones, servers, Apple Silicon, embedded

### Z8000
Industrial control, military, some Unix workstations, embedded

---

## Strengths & Weaknesses

### AArch64
- **Strengths:** Power efficiency, clean 64-bit design, massive ecosystem
- **Weaknesses:** Complex history, some legacy baggage from ARM32

### Z8000
- **Strengths:** Clean design, orthogonal, flexible addressing, good for systems programming
- **Weaknesses:** Late to market, no software ecosystem, x86 won, discontinued

---

## When to Choose Which

**Choose AArch64 when:** power efficiency is paramount, especially for Smartphones

**Choose Z8000 when:** your application fits its domain (Industrial control) and you value its specific strengths

---

## Summary

AArch64 and Z8000 represent different points in the spectrum of processor design. Separated by 32 years, these architectures reflect the evolution from Zilog's 1979 approach to ARM Ltd.'s 2011 vision. Z8000 carries the constraints and wisdom of its era, while Z8000 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
