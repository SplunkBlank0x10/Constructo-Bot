# AArch64 vs RISC-V

## Overview

This document compares **AArch64** and **RISC-V**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AArch64 | RISC-V |
|-----------|----------|----------|
| **Bits** | 64 | 32/64/128 |
| **Type** | RISC | RISC |
| **Year** | 2011 | 2010 |
| **Creator** | ARM Ltd. | UC Berkeley |
| **Endianness** | Bi-endian (mostly little in practice) | Little (default), bi-endian optional |

---

## Design Philosophy

### AArch64
> *Clean break from 32-bit ARM, learn from 30 years of experience*

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

**Key Difference:** AArch64 approaches computing with a risc philosophy, while RISC-V takes a risc approach. 

---

## Register Architecture

### AArch64
31 GPRs + zero register, dedicated SP/PC

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

**Comparison:** AArch64 offers few registers (few-style architecture), while RISC-V provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### AArch64
No predication (mostly), SVE scalable vectors, 4 exception levels

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

---

## Historical Lineage

### AArch64
ARM → ARMv7 → ARMv8-A (AArch64)

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

---

## Primary Use Cases

### AArch64
Smartphones, servers, Apple Silicon, embedded

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

---

## Strengths & Weaknesses

### AArch64
- **Strengths:** Power efficiency, clean 64-bit design, massive ecosystem
- **Weaknesses:** Complex history, some legacy baggage from ARM32

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

---

## When to Choose Which

**Choose AArch64 when:** power efficiency is paramount, especially for Smartphones

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

AArch64 and RISC-V represent different points in the spectrum of processor design. The 32/64/128-bit RISC-V and 64-bit AArch64 serve different scale requirements. RISC-V excels in constrained environments where every transistor counts, while AArch64 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
