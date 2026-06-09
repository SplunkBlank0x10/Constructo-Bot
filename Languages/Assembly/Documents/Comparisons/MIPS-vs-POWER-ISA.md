# MIPS vs POWER-ISA

## Overview

This document compares **MIPS** and **POWER-ISA**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS | POWER-ISA |
|-----------|----------|----------|
| **Bits** | 32 | 64 |
| **Type** | RISC | RISC |
| **Year** | 1981 | 1990 |
| **Creator** | Stanford University (MIPS Computer Systems) | IBM |
| **Endianness** | Bi-endian | Big (default), supports little |

---

## Design Philosophy

### MIPS
> *Keep pipeline simple, let compiler schedule - no hardware interlocks*

### POWER-ISA
> *No compromise performance - cost secondary to throughput, reliability, density*

**Key Difference:** MIPS approaches computing with a risc philosophy, while POWER-ISA takes a risc approach. 

---

## Register Architecture

### MIPS
32 × 32-bit ($0 hardwired to zero), HI/LO for multiply

### POWER-ISA
32 × 64-bit GPRs, 32 × 64-bit FPRs, VSX vectors

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### MIPS
Branch delay slots, load/store architecture, coprocessor interface, academic clean design

### POWER-ISA
Hardware transactional memory, SMT8 (8 threads/core), decimal FP, CAPI/OpenCAPI

---

## Historical Lineage

### MIPS
Stanford research → MIPS I → MIPS II → MIPS III (64-bit) → MIPS32/64

### POWER-ISA
IBM POWER → POWER2 → POWER3 (64-bit) → POWER4-10 → Power10

---

## Primary Use Cases

### MIPS
Workstations (SGI), embedded, gaming (PS1, PS2, N64), education

### POWER-ISA
IBM servers, supercomputers (BlueGene, Summit), enterprise databases, HPC

---

## Strengths & Weaknesses

### MIPS
- **Strengths:** Clean design, easy to teach, good compiler target, proven performance
- **Weaknesses:** Branch delay slots are burden, licensing issues, overshadowed by ARM/RISC-V

### POWER-ISA
- **Strengths:** Massive throughput, RAS, SMT, excellent for databases, open via OpenPOWER
- **Weaknesses:** Expensive, niche market, complex, IBM-centric ecosystem

---

## When to Choose Which

**Choose MIPS when:** your application fits its domain (Workstations (SGI)) and you value its specific strengths

**Choose POWER-ISA when:** power efficiency is paramount, especially for IBM servers

---

## Summary

MIPS and POWER-ISA represent different points in the spectrum of processor design. The 32-bit MIPS and 64-bit POWER-ISA serve different scale requirements. MIPS excels in constrained environments where every transistor counts, while POWER-ISA provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
