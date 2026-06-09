# IBM-System-360-370 vs POWER-ISA

## Overview

This document compares **IBM-System-360-370** and **POWER-ISA**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | POWER-ISA |
|-----------|----------|----------|
| **Bits** | 32 | 64 |
| **Type** | CISC | RISC |
| **Year** | 1964 | 1990 |
| **Creator** | IBM | IBM |
| **Endianness** | Big (EBCDIC) | Big (default), supports little |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### POWER-ISA
> *No compromise performance - cost secondary to throughput, reliability, density*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while POWER-ISA takes a risc approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### POWER-ISA
32 × 64-bit GPRs, 32 × 64-bit FPRs, VSX vectors

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### POWER-ISA
Hardware transactional memory, SMT8 (8 threads/core), decimal FP, CAPI/OpenCAPI

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### POWER-ISA
IBM POWER → POWER2 → POWER3 (64-bit) → POWER4-10 → Power10

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### POWER-ISA
IBM servers, supercomputers (BlueGene, Summit), enterprise databases, HPC

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### POWER-ISA
- **Strengths:** Massive throughput, RAS, SMT, excellent for databases, open via OpenPOWER
- **Weaknesses:** Expensive, niche market, complex, IBM-centric ecosystem

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose POWER-ISA when:** power efficiency is paramount, especially for IBM servers

---

## Summary

IBM-System-360-370 and POWER-ISA represent different points in the spectrum of processor design. Separated by 26 years, these architectures reflect the evolution from IBM's 1964 approach to IBM's 1990 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
