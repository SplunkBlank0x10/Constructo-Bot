# LoongArch vs POWER-ISA

## Overview

This document compares **LoongArch** and **POWER-ISA**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | LoongArch | POWER-ISA |
|-----------|----------|----------|
| **Bits** | 32/64 | 64 |
| **Type** | RISC | RISC |
| **Year** | 2020 | 1990 |
| **Creator** | Loongson Technology (China) | IBM |
| **Endianness** | Both | Big (default), supports little |

---

## Design Philosophy

### LoongArch
> *Independence through design - technological sovereignty, free from foreign IP*

### POWER-ISA
> *No compromise performance - cost secondary to throughput, reliability, density*

**Key Difference:** LoongArch approaches computing with a risc philosophy, while POWER-ISA takes a risc approach. 

---

## Register Architecture

### LoongArch
32 × 64-bit GPRs, 32 × FP, 32 × 256-bit vector

### POWER-ISA
32 × 64-bit GPRs, 32 × 64-bit FPRs, VSX vectors

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### LoongArch
No branch delay slots (unlike MIPS), binary translation for x86/ARM/MIPS, 4 privilege levels

### POWER-ISA
Hardware transactional memory, SMT8 (8 threads/core), decimal FP, CAPI/OpenCAPI

---

## Historical Lineage

### LoongArch
MIPS-compatible Loongson → clean-sheet LoongArch

### POWER-ISA
IBM POWER → POWER2 → POWER3 (64-bit) → POWER4-10 → Power10

---

## Primary Use Cases

### LoongArch
Chinese government, education, domestic servers, desktops, embedded

### POWER-ISA
IBM servers, supercomputers (BlueGene, Summit), enterprise databases, HPC

---

## Strengths & Weaknesses

### LoongArch
- **Strengths:** Sovereignty, modern design, MIPS familiarity, no licensing fees
- **Weaknesses:** Immature ecosystem, limited software, geopolitical niche

### POWER-ISA
- **Strengths:** Massive throughput, RAS, SMT, excellent for databases, open via OpenPOWER
- **Weaknesses:** Expensive, niche market, complex, IBM-centric ecosystem

---

## When to Choose Which

**Choose LoongArch when:** technological sovereignty and independence from foreign IP is required

**Choose POWER-ISA when:** power efficiency is paramount, especially for IBM servers

---

## Summary

LoongArch and POWER-ISA represent different points in the spectrum of processor design. Separated by 30 years, these architectures reflect the evolution from IBM's 1990 approach to Loongson Technology (China)'s 2020 vision. POWER-ISA carries the constraints and wisdom of its era, while POWER-ISA addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
