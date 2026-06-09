# AArch64 vs PA-RISC

## Overview

This document compares **AArch64** and **PA-RISC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AArch64 | PA-RISC |
|-----------|----------|----------|
| **Bits** | 64 | 32/64 |
| **Type** | RISC | RISC |
| **Year** | 2011 | 1986 |
| **Creator** | ARM Ltd. | Hewlett-Packard |
| **Endianness** | Bi-endian (mostly little in practice) | Big |

---

## Design Philosophy

### AArch64
> *Clean break from 32-bit ARM, learn from 30 years of experience*

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

**Key Difference:** AArch64 approaches computing with a risc philosophy, while PA-RISC takes a risc approach. 

---

## Register Architecture

### AArch64
31 GPRs + zero register, dedicated SP/PC

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

**Comparison:** AArch64 offers few registers (few-style architecture), while PA-RISC provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### AArch64
No predication (mostly), SVE scalable vectors, 4 exception levels

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

---

## Historical Lineage

### AArch64
ARM → ARMv7 → ARMv8-A (AArch64)

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

---

## Primary Use Cases

### AArch64
Smartphones, servers, Apple Silicon, embedded

### PA-RISC
HP workstations, HP 9000 servers, some embedded

---

## Strengths & Weaknesses

### AArch64
- **Strengths:** Power efficiency, clean 64-bit design, massive ecosystem
- **Weaknesses:** Complex history, some legacy baggage from ARM32

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

---

## When to Choose Which

**Choose AArch64 when:** power efficiency is paramount, especially for Smartphones

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

---

## Summary

AArch64 and PA-RISC represent different points in the spectrum of processor design. Separated by 25 years, these architectures reflect the evolution from Hewlett-Packard's 1986 approach to ARM Ltd.'s 2011 vision. PA-RISC carries the constraints and wisdom of its era, while PA-RISC addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
