# DEC-VAX vs POWER-ISA

## Overview

This document compares **DEC-VAX** and **POWER-ISA**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-VAX | POWER-ISA |
|-----------|----------|----------|
| **Bits** | 32 | 64 |
| **Type** | CISC | RISC |
| **Year** | 1977 | 1990 |
| **Creator** | Digital Equipment Corporation (DEC) | IBM |
| **Endianness** | Little | Big (default), supports little |

---

## Design Philosophy

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

### POWER-ISA
> *No compromise performance - cost secondary to throughput, reliability, density*

**Key Difference:** DEC-VAX approaches computing with a cisc philosophy, while POWER-ISA takes a risc approach. 

---

## Register Architecture

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

### POWER-ISA
32 × 64-bit GPRs, 32 × 64-bit FPRs, VSX vectors

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

### POWER-ISA
Hardware transactional memory, SMT8 (8 threads/core), decimal FP, CAPI/OpenCAPI

---

## Historical Lineage

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

### POWER-ISA
IBM POWER → POWER2 → POWER3 (64-bit) → POWER4-10 → Power10

---

## Primary Use Cases

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

### POWER-ISA
IBM servers, supercomputers (BlueGene, Summit), enterprise databases, HPC

---

## Strengths & Weaknesses

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

### POWER-ISA
- **Strengths:** Massive throughput, RAS, SMT, excellent for databases, open via OpenPOWER
- **Weaknesses:** Expensive, niche market, complex, IBM-centric ecosystem

---

## When to Choose Which

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose POWER-ISA when:** power efficiency is paramount, especially for IBM servers

---

## Summary

DEC-VAX and POWER-ISA represent different points in the spectrum of processor design. The 32-bit DEC-VAX and 64-bit POWER-ISA serve different scale requirements. DEC-VAX excels in constrained environments where every transistor counts, while POWER-ISA provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
