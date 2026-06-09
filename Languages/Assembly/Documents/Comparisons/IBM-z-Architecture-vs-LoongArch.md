# IBM-z-Architecture vs LoongArch

## Overview

This document compares **IBM-z-Architecture** and **LoongArch**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-z-Architecture | LoongArch |
|-----------|----------|----------|
| **Bits** | 64 | 32/64 |
| **Type** | CISC | RISC |
| **Year** | 2000 | 2020 |
| **Creator** | IBM | Loongson Technology (China) |
| **Endianness** | Big | Both |

---

## Design Philosophy

### IBM-z-Architecture
> *The architecture that outlives companies - 60+ years backward compatibility*

### LoongArch
> *Independence through design - technological sovereignty, free from foreign IP*

**Key Difference:** IBM-z-Architecture approaches computing with a cisc philosophy, while LoongArch takes a risc approach. 

---

## Register Architecture

### IBM-z-Architecture
16 × 64-bit GPRs, 16 × 64-bit FPRs, 32 × 128-bit vector

### LoongArch
32 × 64-bit GPRs, 32 × FP, 32 × 256-bit vector

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-z-Architecture
Hardware transactional memory, cryptographic instructions, RAS as architecture, LPARs

### LoongArch
No branch delay slots (unlike MIPS), binary translation for x86/ARM/MIPS, 4 privilege levels

---

## Historical Lineage

### IBM-z-Architecture
System/360 → System/370 → ESA/390 → z/Architecture

### LoongArch
MIPS-compatible Loongson → clean-sheet LoongArch

---

## Primary Use Cases

### IBM-z-Architecture
Banking, finance, insurance, government, critical enterprise

### LoongArch
Chinese government, education, domestic servers, desktops, embedded

---

## Strengths & Weaknesses

### IBM-z-Architecture
- **Strengths:** Unmatched reliability, compatibility, security, I/O throughput
- **Weaknesses:** Extremely expensive, proprietary, niche market, complex

### LoongArch
- **Strengths:** Sovereignty, modern design, MIPS familiarity, no licensing fees
- **Weaknesses:** Immature ecosystem, limited software, geopolitical niche

---

## When to Choose Which

**Choose IBM-z-Architecture when:** backward compatibility with massive existing software bases is critical

**Choose LoongArch when:** technological sovereignty and independence from foreign IP is required

---

## Summary

IBM-z-Architecture and LoongArch represent different points in the spectrum of processor design. The 32/64-bit LoongArch and 64-bit IBM-z-Architecture serve different scale requirements. LoongArch excels in constrained environments where every transistor counts, while IBM-z-Architecture provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
