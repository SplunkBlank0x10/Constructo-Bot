# PA-RISC vs POWER-ISA

## Overview

This document compares **PA-RISC** and **POWER-ISA**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PA-RISC | POWER-ISA |
|-----------|----------|----------|
| **Bits** | 32/64 | 64 |
| **Type** | RISC | RISC |
| **Year** | 1986 | 1990 |
| **Creator** | Hewlett-Packard | IBM |
| **Endianness** | Big | Big (default), supports little |

---

## Design Philosophy

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

### POWER-ISA
> *No compromise performance - cost secondary to throughput, reliability, density*

**Key Difference:** PA-RISC approaches computing with a risc philosophy, while POWER-ISA takes a risc approach. 

---

## Register Architecture

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

### POWER-ISA
32 × 64-bit GPRs, 32 × 64-bit FPRs, VSX vectors

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

### POWER-ISA
Hardware transactional memory, SMT8 (8 threads/core), decimal FP, CAPI/OpenCAPI

---

## Historical Lineage

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

### POWER-ISA
IBM POWER → POWER2 → POWER3 (64-bit) → POWER4-10 → Power10

---

## Primary Use Cases

### PA-RISC
HP workstations, HP 9000 servers, some embedded

### POWER-ISA
IBM servers, supercomputers (BlueGene, Summit), enterprise databases, HPC

---

## Strengths & Weaknesses

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

### POWER-ISA
- **Strengths:** Massive throughput, RAS, SMT, excellent for databases, open via OpenPOWER
- **Weaknesses:** Expensive, niche market, complex, IBM-centric ecosystem

---

## When to Choose Which

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

**Choose POWER-ISA when:** power efficiency is paramount, especially for IBM servers

---

## Summary

PA-RISC and POWER-ISA represent different points in the spectrum of processor design. The 32/64-bit PA-RISC and 64-bit POWER-ISA serve different scale requirements. PA-RISC excels in constrained environments where every transistor counts, while POWER-ISA provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
