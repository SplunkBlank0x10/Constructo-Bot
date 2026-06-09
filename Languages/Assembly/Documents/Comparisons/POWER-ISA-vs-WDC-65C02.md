# POWER-ISA vs WDC-65C02

## Overview

This document compares **POWER-ISA** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | POWER-ISA | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 64 | 8 |
| **Type** | RISC | CISC (CMOS enhanced 6502) |
| **Year** | 1990 | 1978 |
| **Creator** | IBM | Western Design Center (Bill Mensch) |
| **Endianness** | Big (default), supports little | Little |

---

## Design Philosophy

### POWER-ISA
> *No compromise performance - cost secondary to throughput, reliability, density*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** POWER-ISA approaches computing with a risc philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### POWER-ISA
32 × 64-bit GPRs, 32 × 64-bit FPRs, VSX vectors

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** POWER-ISA offers many registers (many-style architecture), while WDC-65C02 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### POWER-ISA
Hardware transactional memory, SMT8 (8 threads/core), decimal FP, CAPI/OpenCAPI

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### POWER-ISA
IBM POWER → POWER2 → POWER3 (64-bit) → POWER4-10 → Power10

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### POWER-ISA
IBM servers, supercomputers (BlueGene, Summit), enterprise databases, HPC

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### POWER-ISA
- **Strengths:** Massive throughput, RAS, SMT, excellent for databases, open via OpenPOWER
- **Weaknesses:** Expensive, niche market, complex, IBM-centric ecosystem

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose POWER-ISA when:** you need an open, royalty-free ISA with no licensing constraints

**Choose WDC-65C02 when:** backward compatibility with massive existing software bases is critical

---

## Summary

POWER-ISA and WDC-65C02 represent different points in the spectrum of processor design. The 8-bit WDC-65C02 and 64-bit POWER-ISA serve different scale requirements. WDC-65C02 excels in constrained environments where every transistor counts, while POWER-ISA provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
