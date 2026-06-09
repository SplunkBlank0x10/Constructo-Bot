# AArch64 vs IBM-System-360-370

## Overview

This document compares **AArch64** and **IBM-System-360-370**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AArch64 | IBM-System-360-370 |
|-----------|----------|----------|
| **Bits** | 64 | 32 |
| **Type** | RISC | CISC |
| **Year** | 2011 | 1964 |
| **Creator** | ARM Ltd. | IBM |
| **Endianness** | Bi-endian (mostly little in practice) | Big (EBCDIC) |

---

## Design Philosophy

### AArch64
> *Clean break from 32-bit ARM, learn from 30 years of experience*

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

**Key Difference:** AArch64 approaches computing with a risc philosophy, while IBM-System-360-370 takes a cisc approach. 

---

## Register Architecture

### AArch64
31 GPRs + zero register, dedicated SP/PC

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

**Comparison:** AArch64 offers few registers (few-style architecture), while IBM-System-360-370 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### AArch64
No predication (mostly), SVE scalable vectors, 4 exception levels

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

---

## Historical Lineage

### AArch64
ARM → ARMv7 → ARMv8-A (AArch64)

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

---

## Primary Use Cases

### AArch64
Smartphones, servers, Apple Silicon, embedded

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

---

## Strengths & Weaknesses

### AArch64
- **Strengths:** Power efficiency, clean 64-bit design, massive ecosystem
- **Weaknesses:** Complex history, some legacy baggage from ARM32

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

---

## When to Choose Which

**Choose AArch64 when:** power efficiency is paramount, especially for Smartphones

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

---

## Summary

AArch64 and IBM-System-360-370 represent different points in the spectrum of processor design. Separated by 47 years, these architectures reflect the evolution from IBM's 1964 approach to ARM Ltd.'s 2011 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
