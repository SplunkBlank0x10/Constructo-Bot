# POWER-ISA vs WDC-65816

## Overview

This document compares **POWER-ISA** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | POWER-ISA | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 64 | 16/8 |
| **Type** | RISC | CISC (16-bit 6502 evolution) |
| **Year** | 1990 | 1984 |
| **Creator** | IBM | Western Design Center (Bill Mensch) |
| **Endianness** | Big (default), supports little | Little |

---

## Design Philosophy

### POWER-ISA
> *No compromise performance - cost secondary to throughput, reliability, density*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** POWER-ISA approaches computing with a risc philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### POWER-ISA
32 × 64-bit GPRs, 32 × 64-bit FPRs, VSX vectors

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### POWER-ISA
Hardware transactional memory, SMT8 (8 threads/core), decimal FP, CAPI/OpenCAPI

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### POWER-ISA
IBM POWER → POWER2 → POWER3 (64-bit) → POWER4-10 → Power10

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### POWER-ISA
IBM servers, supercomputers (BlueGene, Summit), enterprise databases, HPC

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### POWER-ISA
- **Strengths:** Massive throughput, RAS, SMT, excellent for databases, open via OpenPOWER
- **Weaknesses:** Expensive, niche market, complex, IBM-centric ecosystem

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose POWER-ISA when:** you need an open, royalty-free ISA with no licensing constraints

**Choose WDC-65816 when:** backward compatibility with massive existing software bases is critical

---

## Summary

POWER-ISA and WDC-65816 represent different points in the spectrum of processor design. The 16/8-bit WDC-65816 and 64-bit POWER-ISA serve different scale requirements. WDC-65816 excels in constrained environments where every transistor counts, while POWER-ISA provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
