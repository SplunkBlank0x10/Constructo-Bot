# AArch64 vs MIPS64

## Overview

This document compares **AArch64** and **MIPS64**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AArch64 | MIPS64 |
|-----------|----------|----------|
| **Bits** | 64 | 64 |
| **Type** | RISC | RISC |
| **Year** | 2011 | 1995 |
| **Creator** | ARM Ltd. | MIPS Technologies / Silicon Graphics |
| **Endianness** | Bi-endian (mostly little in practice) | Bi-endian |

---

## Design Philosophy

### AArch64
> *Clean break from 32-bit ARM, learn from 30 years of experience*

### MIPS64
> *Extend, don't redesign - same principles, larger scale*

**Key Difference:** AArch64 approaches computing with a risc philosophy, while MIPS64 takes a risc approach. 

---

## Register Architecture

### AArch64
31 GPRs + zero register, dedicated SP/PC

### MIPS64
32 × 64-bit, same HI/LO, same delay slots

**Comparison:** AArch64 offers few registers (few-style architecture), while MIPS64 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### AArch64
No predication (mostly), SVE scalable vectors, 4 exception levels

### MIPS64
Backward compatible with MIPS32, N64 ABI, same pipeline philosophy

---

## Historical Lineage

### AArch64
ARM → ARMv7 → ARMv8-A (AArch64)

### MIPS64
MIPS I → MIPS III → MIPS64

---

## Primary Use Cases

### AArch64
Smartphones, servers, Apple Silicon, embedded

### MIPS64
High-end workstations, servers, some embedded

---

## Strengths & Weaknesses

### AArch64
- **Strengths:** Power efficiency, clean 64-bit design, massive ecosystem
- **Weaknesses:** Complex history, some legacy baggage from ARM32

### MIPS64
- **Strengths:** Continuity, familiar toolchain, 64-bit when needed
- **Weaknesses:** Carried MIPS32 baggage, delay slots still burden, market decline

---

## When to Choose Which

**Choose AArch64 when:** power efficiency is paramount, especially for Smartphones

**Choose MIPS64 when:** your application fits its domain (High-end workstations) and you value its specific strengths

---

## Summary

AArch64 and MIPS64 represent different points in the spectrum of processor design. Both AArch64 and MIPS64 share the RISC design philosophy, yet diverge significantly in implementation details, ecosystem maturity, and target applications. The choice between them often comes down to existing codebases, available tools, and specific performance requirements rather than fundamental architectural superiority.

---

*Generated for the Assembly Hello World Collection*
