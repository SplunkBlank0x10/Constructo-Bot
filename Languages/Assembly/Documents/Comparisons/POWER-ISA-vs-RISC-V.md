# POWER-ISA vs RISC-V

## Overview

This document compares **POWER-ISA** and **RISC-V**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | POWER-ISA | RISC-V |
|-----------|----------|----------|
| **Bits** | 64 | 32/64/128 |
| **Type** | RISC | RISC |
| **Year** | 1990 | 2010 |
| **Creator** | IBM | UC Berkeley |
| **Endianness** | Big (default), supports little | Little (default), bi-endian optional |

---

## Design Philosophy

### POWER-ISA
> *No compromise performance - cost secondary to throughput, reliability, density*

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

**Key Difference:** POWER-ISA approaches computing with a risc philosophy, while RISC-V takes a risc approach. 

---

## Register Architecture

### POWER-ISA
32 × 64-bit GPRs, 32 × 64-bit FPRs, VSX vectors

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### POWER-ISA
Hardware transactional memory, SMT8 (8 threads/core), decimal FP, CAPI/OpenCAPI

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

---

## Historical Lineage

### POWER-ISA
IBM POWER → POWER2 → POWER3 (64-bit) → POWER4-10 → Power10

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

---

## Primary Use Cases

### POWER-ISA
IBM servers, supercomputers (BlueGene, Summit), enterprise databases, HPC

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

---

## Strengths & Weaknesses

### POWER-ISA
- **Strengths:** Massive throughput, RAS, SMT, excellent for databases, open via OpenPOWER
- **Weaknesses:** Expensive, niche market, complex, IBM-centric ecosystem

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

---

## When to Choose Which

**Choose POWER-ISA when:** power efficiency is paramount, especially for IBM servers

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

POWER-ISA and RISC-V represent different points in the spectrum of processor design. The 32/64/128-bit RISC-V and 64-bit POWER-ISA serve different scale requirements. RISC-V excels in constrained environments where every transistor counts, while POWER-ISA provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
