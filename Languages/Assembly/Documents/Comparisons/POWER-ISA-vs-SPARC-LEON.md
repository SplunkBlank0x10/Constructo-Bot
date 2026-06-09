# POWER-ISA vs SPARC-LEON

## Overview

This document compares **POWER-ISA** and **SPARC-LEON**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | POWER-ISA | SPARC-LEON |
|-----------|----------|----------|
| **Bits** | 64 | 32 |
| **Type** | RISC | RISC (radiation-hardened) |
| **Year** | 1990 | 1997 |
| **Creator** | IBM | Aeroflex Gaisler (now Cobham) |
| **Endianness** | Big (default), supports little | Big |

---

## Design Philosophy

### POWER-ISA
> *No compromise performance - cost secondary to throughput, reliability, density*

### SPARC-LEON
> *Reliability above all - survive space radiation, detect and correct SEUs automatically*

**Key Difference:** POWER-ISA approaches computing with a risc philosophy, while SPARC-LEON takes a risc approach. 

---

## Register Architecture

### POWER-ISA
32 × 64-bit GPRs, 32 × 64-bit FPRs, VSX vectors

### SPARC-LEON
Same as SPARC V8 (32 visible, register windows)

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### POWER-ISA
Hardware transactional memory, SMT8 (8 threads/core), decimal FP, CAPI/OpenCAPI

### SPARC-LEON
Triple modular redundancy (TMR), EDAC on memory, watchdog, open-source VHDL

---

## Historical Lineage

### POWER-ISA
IBM POWER → POWER2 → POWER3 (64-bit) → POWER4-10 → Power10

### SPARC-LEON
SPARC V8 → LEON → LEON2 → LEON3/4 (open source)

---

## Primary Use Cases

### POWER-ISA
IBM servers, supercomputers (BlueGene, Summit), enterprise databases, HPC

### SPARC-LEON
Satellites, spacecraft, ESA missions, NASA missions, radiation environments

---

## Strengths & Weaknesses

### POWER-ISA
- **Strengths:** Massive throughput, RAS, SMT, excellent for databases, open via OpenPOWER
- **Weaknesses:** Expensive, niche market, complex, IBM-centric ecosystem

### SPARC-LEON
- **Strengths:** Radiation tolerance, SPARC compatibility, open source, flight proven
- **Weaknesses:** Niche market, lower performance than commercial CPUs, expensive to qualify

---

## When to Choose Which

**Choose POWER-ISA when:** power efficiency is paramount, especially for IBM servers

**Choose SPARC-LEON when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

POWER-ISA and SPARC-LEON represent different points in the spectrum of processor design. The 32-bit SPARC-LEON and 64-bit POWER-ISA serve different scale requirements. SPARC-LEON excels in constrained environments where every transistor counts, while POWER-ISA provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
