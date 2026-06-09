# IBM-z-Architecture vs PA-RISC

## Overview

This document compares **IBM-z-Architecture** and **PA-RISC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-z-Architecture | PA-RISC |
|-----------|----------|----------|
| **Bits** | 64 | 32/64 |
| **Type** | CISC | RISC |
| **Year** | 2000 | 1986 |
| **Creator** | IBM | Hewlett-Packard |
| **Endianness** | Big | Big |

---

## Design Philosophy

### IBM-z-Architecture
> *The architecture that outlives companies - 60+ years backward compatibility*

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

**Key Difference:** IBM-z-Architecture approaches computing with a cisc philosophy, while PA-RISC takes a risc approach. 

---

## Register Architecture

### IBM-z-Architecture
16 × 64-bit GPRs, 16 × 64-bit FPRs, 32 × 128-bit vector

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-z-Architecture
Hardware transactional memory, cryptographic instructions, RAS as architecture, LPARs

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

---

## Historical Lineage

### IBM-z-Architecture
System/360 → System/370 → ESA/390 → z/Architecture

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

---

## Primary Use Cases

### IBM-z-Architecture
Banking, finance, insurance, government, critical enterprise

### PA-RISC
HP workstations, HP 9000 servers, some embedded

---

## Strengths & Weaknesses

### IBM-z-Architecture
- **Strengths:** Unmatched reliability, compatibility, security, I/O throughput
- **Weaknesses:** Extremely expensive, proprietary, niche market, complex

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

---

## When to Choose Which

**Choose IBM-z-Architecture when:** backward compatibility with massive existing software bases is critical

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

---

## Summary

IBM-z-Architecture and PA-RISC represent different points in the spectrum of processor design. The 32/64-bit PA-RISC and 64-bit IBM-z-Architecture serve different scale requirements. PA-RISC excels in constrained environments where every transistor counts, while IBM-z-Architecture provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
