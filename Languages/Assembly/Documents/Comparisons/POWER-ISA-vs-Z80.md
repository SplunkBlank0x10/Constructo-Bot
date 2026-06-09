# POWER-ISA vs Z80

## Overview

This document compares **POWER-ISA** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | POWER-ISA | Z80 |
|-----------|----------|----------|
| **Bits** | 64 | 8 |
| **Type** | RISC | CISC |
| **Year** | 1990 | 1976 |
| **Creator** | IBM | Zilog (Federico Faggin) |
| **Endianness** | Big (default), supports little | Little |

---

## Design Philosophy

### POWER-ISA
> *No compromise performance - cost secondary to throughput, reliability, density*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** POWER-ISA approaches computing with a risc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### POWER-ISA
32 × 64-bit GPRs, 32 × 64-bit FPRs, VSX vectors

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** POWER-ISA offers many registers (many-style architecture), while Z80 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### POWER-ISA
Hardware transactional memory, SMT8 (8 threads/core), decimal FP, CAPI/OpenCAPI

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### POWER-ISA
IBM POWER → POWER2 → POWER3 (64-bit) → POWER4-10 → Power10

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### POWER-ISA
IBM servers, supercomputers (BlueGene, Summit), enterprise databases, HPC

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### POWER-ISA
- **Strengths:** Massive throughput, RAS, SMT, excellent for databases, open via OpenPOWER
- **Weaknesses:** Expensive, niche market, complex, IBM-centric ecosystem

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose POWER-ISA when:** you need an open, royalty-free ISA with no licensing constraints

**Choose Z80 when:** backward compatibility with massive existing software bases is critical

---

## Summary

POWER-ISA and Z80 represent different points in the spectrum of processor design. The 8-bit Z80 and 64-bit POWER-ISA serve different scale requirements. Z80 excels in constrained environments where every transistor counts, while POWER-ISA provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
