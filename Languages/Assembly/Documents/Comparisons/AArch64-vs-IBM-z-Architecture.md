# AArch64 vs IBM-z-Architecture

## Overview

This document compares **AArch64** and **IBM-z-Architecture**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AArch64 | IBM-z-Architecture |
|-----------|----------|----------|
| **Bits** | 64 | 64 |
| **Type** | RISC | CISC |
| **Year** | 2011 | 2000 |
| **Creator** | ARM Ltd. | IBM |
| **Endianness** | Bi-endian (mostly little in practice) | Big |

---

## Design Philosophy

### AArch64
> *Clean break from 32-bit ARM, learn from 30 years of experience*

### IBM-z-Architecture
> *The architecture that outlives companies - 60+ years backward compatibility*

**Key Difference:** AArch64 approaches computing with a risc philosophy, while IBM-z-Architecture takes a cisc approach. 

---

## Register Architecture

### AArch64
31 GPRs + zero register, dedicated SP/PC

### IBM-z-Architecture
16 × 64-bit GPRs, 16 × 64-bit FPRs, 32 × 128-bit vector

**Comparison:** AArch64 offers few registers (few-style architecture), while IBM-z-Architecture provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### AArch64
No predication (mostly), SVE scalable vectors, 4 exception levels

### IBM-z-Architecture
Hardware transactional memory, cryptographic instructions, RAS as architecture, LPARs

---

## Historical Lineage

### AArch64
ARM → ARMv7 → ARMv8-A (AArch64)

### IBM-z-Architecture
System/360 → System/370 → ESA/390 → z/Architecture

---

## Primary Use Cases

### AArch64
Smartphones, servers, Apple Silicon, embedded

### IBM-z-Architecture
Banking, finance, insurance, government, critical enterprise

---

## Strengths & Weaknesses

### AArch64
- **Strengths:** Power efficiency, clean 64-bit design, massive ecosystem
- **Weaknesses:** Complex history, some legacy baggage from ARM32

### IBM-z-Architecture
- **Strengths:** Unmatched reliability, compatibility, security, I/O throughput
- **Weaknesses:** Extremely expensive, proprietary, niche market, complex

---

## When to Choose Which

**Choose AArch64 when:** power efficiency is paramount, especially for Smartphones

**Choose IBM-z-Architecture when:** backward compatibility with massive existing software bases is critical

---

## Summary

AArch64 and IBM-z-Architecture represent different points in the spectrum of processor design. The RISC philosophy of AArch64 and the CISC approach of IBM-z-Architecture represent fundamentally different tradeoffs between hardware complexity and software simplicity. Neither is universally superior—the right choice depends on the specific constraints of power, cost, performance, and legacy requirements.

---

*Generated for the Assembly Hello World Collection*
