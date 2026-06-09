# PA-RISC vs SuperH-SH

## Overview

This document compares **PA-RISC** and **SuperH-SH**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PA-RISC | SuperH-SH |
|-----------|----------|----------|
| **Bits** | 32/64 | 32 |
| **Type** | RISC | RISC (compressed) |
| **Year** | 1986 | 1992 |
| **Creator** | Hewlett-Packard | Hitachi (now Renesas) |
| **Endianness** | Big | Little |

---

## Design Philosophy

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

### SuperH-SH
> *Density without complexity - native 16-bit instructions, not an add-on*

**Key Difference:** PA-RISC approaches computing with a risc philosophy, while SuperH-SH takes a risc approach. 

---

## Register Architecture

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

### SuperH-SH
16 × 32-bit, 16-bit instruction encoding, 32-bit data path

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

### SuperH-SH
16-bit fixed instructions, delayed branches, MAC for DSP, 5-stage pipeline

---

## Historical Lineage

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

### SuperH-SH
Hitachi H8 → SH-1/2 (Sega) → SH-3/4 (Dreamcast, PDA) → SH-2A (Renesas)

---

## Primary Use Cases

### PA-RISC
HP workstations, HP 9000 servers, some embedded

### SuperH-SH
Sega Saturn/Dreamcast, automotive, PDAs, industrial, consumer

---

## Strengths & Weaknesses

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

### SuperH-SH
- **Strengths:** Excellent code density, good performance, low power, automotive proven
- **Weaknesses:** Niche now, overshadowed by ARM, Renesas-only ecosystem

---

## When to Choose Which

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

**Choose SuperH-SH when:** power efficiency is paramount, especially for Sega Saturn/Dreamcast

---

## Summary

PA-RISC and SuperH-SH represent different points in the spectrum of processor design. The 32/64-bit PA-RISC and 32-bit SuperH-SH serve different scale requirements. PA-RISC excels in constrained environments where every transistor counts, while SuperH-SH provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
