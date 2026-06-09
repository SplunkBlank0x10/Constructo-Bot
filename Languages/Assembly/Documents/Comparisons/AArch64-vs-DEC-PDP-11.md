# AArch64 vs DEC-PDP-11

## Overview

This document compares **AArch64** and **DEC-PDP-11**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AArch64 | DEC-PDP-11 |
|-----------|----------|----------|
| **Bits** | 64 | 16 |
| **Type** | RISC | CISC |
| **Year** | 2011 | 1970 |
| **Creator** | ARM Ltd. | Digital Equipment Corporation (DEC) |
| **Endianness** | Bi-endian (mostly little in practice) | Little |

---

## Design Philosophy

### AArch64
> *Clean break from 32-bit ARM, learn from 30 years of experience*

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

**Key Difference:** AArch64 approaches computing with a risc philosophy, while DEC-PDP-11 takes a cisc approach. 

---

## Register Architecture

### AArch64
31 GPRs + zero register, dedicated SP/PC

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

**Comparison:** AArch64 offers few registers (few-style architecture), while DEC-PDP-11 provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### AArch64
No predication (mostly), SVE scalable vectors, 4 exception levels

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

---

## Historical Lineage

### AArch64
ARM → ARMv7 → ARMv8-A (AArch64)

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

---

## Primary Use Cases

### AArch64
Smartphones, servers, Apple Silicon, embedded

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

---

## Strengths & Weaknesses

### AArch64
- **Strengths:** Power efficiency, clean 64-bit design, massive ecosystem
- **Weaknesses:** Complex history, some legacy baggage from ARM32

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

---

## When to Choose Which

**Choose AArch64 when:** power efficiency is paramount, especially for Smartphones

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

---

## Summary

AArch64 and DEC-PDP-11 represent different points in the spectrum of processor design. Separated by 41 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1970 approach to ARM Ltd.'s 2011 vision. DEC-PDP-11 carries the constraints and wisdom of its era, while DEC-PDP-11 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
