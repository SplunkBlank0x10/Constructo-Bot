# AArch64 vs DEC-VAX

## Overview

This document compares **AArch64** and **DEC-VAX**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AArch64 | DEC-VAX |
|-----------|----------|----------|
| **Bits** | 64 | 32 |
| **Type** | RISC | CISC |
| **Year** | 2011 | 1977 |
| **Creator** | ARM Ltd. | Digital Equipment Corporation (DEC) |
| **Endianness** | Bi-endian (mostly little in practice) | Little |

---

## Design Philosophy

### AArch64
> *Clean break from 32-bit ARM, learn from 30 years of experience*

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

**Key Difference:** AArch64 approaches computing with a risc philosophy, while DEC-VAX takes a cisc approach. 

---

## Register Architecture

### AArch64
31 GPRs + zero register, dedicated SP/PC

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

**Comparison:** AArch64 offers few registers (few-style architecture), while DEC-VAX provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### AArch64
No predication (mostly), SVE scalable vectors, 4 exception levels

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

---

## Historical Lineage

### AArch64
ARM → ARMv7 → ARMv8-A (AArch64)

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

---

## Primary Use Cases

### AArch64
Smartphones, servers, Apple Silicon, embedded

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

---

## Strengths & Weaknesses

### AArch64
- **Strengths:** Power efficiency, clean 64-bit design, massive ecosystem
- **Weaknesses:** Complex history, some legacy baggage from ARM32

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

---

## When to Choose Which

**Choose AArch64 when:** power efficiency is paramount, especially for Smartphones

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

---

## Summary

AArch64 and DEC-VAX represent different points in the spectrum of processor design. Separated by 34 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1977 approach to ARM Ltd.'s 2011 vision. DEC-VAX carries the constraints and wisdom of its era, while DEC-VAX addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
