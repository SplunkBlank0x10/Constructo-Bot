# AArch64 vs Intel-8080

## Overview

This document compares **AArch64** and **Intel-8080**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AArch64 | Intel-8080 |
|-----------|----------|----------|
| **Bits** | 64 | 8 |
| **Type** | RISC | CISC |
| **Year** | 2011 | 1974 |
| **Creator** | ARM Ltd. | Intel |
| **Endianness** | Bi-endian (mostly little in practice) | Little |

---

## Design Philosophy

### AArch64
> *Clean break from 32-bit ARM, learn from 30 years of experience*

### Intel-8080
> *The microprocessor as a computer - general purpose, external memory*

**Key Difference:** AArch64 approaches computing with a risc philosophy, while Intel-8080 takes a cisc approach. 

---

## Register Architecture

### AArch64
31 GPRs + zero register, dedicated SP/PC

### Intel-8080
7 × 8-bit (A,B,C,D,E,H,L), pairs as 16-bit (BC,DE,HL)

**Comparison:** AArch64 offers few registers (few-style architecture), while Intel-8080 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### AArch64
No predication (mostly), SVE scalable vectors, 4 exception levels

### Intel-8080
64KB space, 3 power supplies, 5 interrupts, CP/M era, Altair/IMSAI

---

## Historical Lineage

### AArch64
ARM → ARMv7 → ARMv8-A (AArch64)

### Intel-8080
8008 → 8080 → 8085 → 8086 (not binary compatible but design lineage)

---

## Primary Use Cases

### AArch64
Smartphones, servers, Apple Silicon, embedded

### Intel-8080
Early personal computers, CP/M systems, embedded, industrial

---

## Strengths & Weaknesses

### AArch64
- **Strengths:** Power efficiency, clean 64-bit design, massive ecosystem
- **Weaknesses:** Complex history, some legacy baggage from ARM32

### Intel-8080
- **Strengths:** First widely successful general-purpose CPU, established 8-bit paradigm
- **Weaknesses:** Limited registers, complex support chips, multiple power supplies

---

## When to Choose Which

**Choose AArch64 when:** power efficiency is paramount, especially for Smartphones

**Choose Intel-8080 when:** your application fits its domain (Early personal computers) and you value its specific strengths

---

## Summary

AArch64 and Intel-8080 represent different points in the spectrum of processor design. Separated by 37 years, these architectures reflect the evolution from Intel's 1974 approach to ARM Ltd.'s 2011 vision. Intel-8080 carries the constraints and wisdom of its era, while Intel-8080 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
