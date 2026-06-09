# Intel-8080 vs POWER-ISA

## Overview

This document compares **Intel-8080** and **POWER-ISA**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Intel-8080 | POWER-ISA |
|-----------|----------|----------|
| **Bits** | 8 | 64 |
| **Type** | CISC | RISC |
| **Year** | 1974 | 1990 |
| **Creator** | Intel | IBM |
| **Endianness** | Little | Big (default), supports little |

---

## Design Philosophy

### Intel-8080
> *The microprocessor as a computer - general purpose, external memory*

### POWER-ISA
> *No compromise performance - cost secondary to throughput, reliability, density*

**Key Difference:** Intel-8080 approaches computing with a cisc philosophy, while POWER-ISA takes a risc approach. 

---

## Register Architecture

### Intel-8080
7 × 8-bit (A,B,C,D,E,H,L), pairs as 16-bit (BC,DE,HL)

### POWER-ISA
32 × 64-bit GPRs, 32 × 64-bit FPRs, VSX vectors

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### Intel-8080
64KB space, 3 power supplies, 5 interrupts, CP/M era, Altair/IMSAI

### POWER-ISA
Hardware transactional memory, SMT8 (8 threads/core), decimal FP, CAPI/OpenCAPI

---

## Historical Lineage

### Intel-8080
8008 → 8080 → 8085 → 8086 (not binary compatible but design lineage)

### POWER-ISA
IBM POWER → POWER2 → POWER3 (64-bit) → POWER4-10 → Power10

---

## Primary Use Cases

### Intel-8080
Early personal computers, CP/M systems, embedded, industrial

### POWER-ISA
IBM servers, supercomputers (BlueGene, Summit), enterprise databases, HPC

---

## Strengths & Weaknesses

### Intel-8080
- **Strengths:** First widely successful general-purpose CPU, established 8-bit paradigm
- **Weaknesses:** Limited registers, complex support chips, multiple power supplies

### POWER-ISA
- **Strengths:** Massive throughput, RAS, SMT, excellent for databases, open via OpenPOWER
- **Weaknesses:** Expensive, niche market, complex, IBM-centric ecosystem

---

## When to Choose Which

**Choose Intel-8080 when:** your application fits its domain (Early personal computers) and you value its specific strengths

**Choose POWER-ISA when:** power efficiency is paramount, especially for IBM servers

---

## Summary

Intel-8080 and POWER-ISA represent different points in the spectrum of processor design. The 8-bit Intel-8080 and 64-bit POWER-ISA serve different scale requirements. Intel-8080 excels in constrained environments where every transistor counts, while POWER-ISA provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
