# AArch64 vs LoongArch

## Overview

This document compares **AArch64** and **LoongArch**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AArch64 | LoongArch |
|-----------|----------|----------|
| **Bits** | 64 | 32/64 |
| **Type** | RISC | RISC |
| **Year** | 2011 | 2020 |
| **Creator** | ARM Ltd. | Loongson Technology (China) |
| **Endianness** | Bi-endian (mostly little in practice) | Both |

---

## Design Philosophy

### AArch64
> *Clean break from 32-bit ARM, learn from 30 years of experience*

### LoongArch
> *Independence through design - technological sovereignty, free from foreign IP*

**Key Difference:** AArch64 approaches computing with a risc philosophy, while LoongArch takes a risc approach. 

---

## Register Architecture

### AArch64
31 GPRs + zero register, dedicated SP/PC

### LoongArch
32 × 64-bit GPRs, 32 × FP, 32 × 256-bit vector

**Comparison:** AArch64 offers few registers (few-style architecture), while LoongArch provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### AArch64
No predication (mostly), SVE scalable vectors, 4 exception levels

### LoongArch
No branch delay slots (unlike MIPS), binary translation for x86/ARM/MIPS, 4 privilege levels

---

## Historical Lineage

### AArch64
ARM → ARMv7 → ARMv8-A (AArch64)

### LoongArch
MIPS-compatible Loongson → clean-sheet LoongArch

---

## Primary Use Cases

### AArch64
Smartphones, servers, Apple Silicon, embedded

### LoongArch
Chinese government, education, domestic servers, desktops, embedded

---

## Strengths & Weaknesses

### AArch64
- **Strengths:** Power efficiency, clean 64-bit design, massive ecosystem
- **Weaknesses:** Complex history, some legacy baggage from ARM32

### LoongArch
- **Strengths:** Sovereignty, modern design, MIPS familiarity, no licensing fees
- **Weaknesses:** Immature ecosystem, limited software, geopolitical niche

---

## When to Choose Which

**Choose AArch64 when:** power efficiency is paramount, especially for Smartphones

**Choose LoongArch when:** technological sovereignty and independence from foreign IP is required

---

## Summary

AArch64 and LoongArch represent different points in the spectrum of processor design. The 32/64-bit LoongArch and 64-bit AArch64 serve different scale requirements. LoongArch excels in constrained environments where every transistor counts, while AArch64 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
