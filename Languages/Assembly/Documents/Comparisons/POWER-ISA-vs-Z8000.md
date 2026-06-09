# POWER-ISA vs Z8000

## Overview

This document compares **POWER-ISA** and **Z8000**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | POWER-ISA | Z8000 |
|-----------|----------|----------|
| **Bits** | 64 | 16 |
| **Type** | RISC | CISC |
| **Year** | 1990 | 1979 |
| **Creator** | IBM | Zilog |
| **Endianness** | Big (default), supports little | Big |

---

## Design Philosophy

### POWER-ISA
> *No compromise performance - cost secondary to throughput, reliability, density*

### Z8000
> *16-bit done right - more regular than 8086, flexible segmented or flat*

**Key Difference:** POWER-ISA approaches computing with a risc philosophy, while Z8000 takes a cisc approach. 

---

## Register Architecture

### POWER-ISA
32 × 64-bit GPRs, 32 × 64-bit FPRs, VSX vectors

### Z8000
16 × 16-bit (pairable to 32-bit), two stack pointers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### POWER-ISA
Hardware transactional memory, SMT8 (8 threads/core), decimal FP, CAPI/OpenCAPI

### Z8000
Segmented (Z8001) or non-segmented (Z8002), string instructions, 23-bit addressing

---

## Historical Lineage

### POWER-ISA
IBM POWER → POWER2 → POWER3 (64-bit) → POWER4-10 → Power10

### Z8000
Z80 → Z8000 (16-bit) → Z80000 (32-bit, rare) → discontinued

---

## Primary Use Cases

### POWER-ISA
IBM servers, supercomputers (BlueGene, Summit), enterprise databases, HPC

### Z8000
Industrial control, military, some Unix workstations, embedded

---

## Strengths & Weaknesses

### POWER-ISA
- **Strengths:** Massive throughput, RAS, SMT, excellent for databases, open via OpenPOWER
- **Weaknesses:** Expensive, niche market, complex, IBM-centric ecosystem

### Z8000
- **Strengths:** Clean design, orthogonal, flexible addressing, good for systems programming
- **Weaknesses:** Late to market, no software ecosystem, x86 won, discontinued

---

## When to Choose Which

**Choose POWER-ISA when:** power efficiency is paramount, especially for IBM servers

**Choose Z8000 when:** your application fits its domain (Industrial control) and you value its specific strengths

---

## Summary

POWER-ISA and Z8000 represent different points in the spectrum of processor design. The 16-bit Z8000 and 64-bit POWER-ISA serve different scale requirements. Z8000 excels in constrained environments where every transistor counts, while POWER-ISA provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
