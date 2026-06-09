# PA-RISC vs SPARC-LEON

## Overview

This document compares **PA-RISC** and **SPARC-LEON**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PA-RISC | SPARC-LEON |
|-----------|----------|----------|
| **Bits** | 32/64 | 32 |
| **Type** | RISC | RISC (radiation-hardened) |
| **Year** | 1986 | 1997 |
| **Creator** | Hewlett-Packard | Aeroflex Gaisler (now Cobham) |
| **Endianness** | Big | Big |

---

## Design Philosophy

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

### SPARC-LEON
> *Reliability above all - survive space radiation, detect and correct SEUs automatically*

**Key Difference:** PA-RISC approaches computing with a risc philosophy, while SPARC-LEON takes a risc approach. 

---

## Register Architecture

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

### SPARC-LEON
Same as SPARC V8 (32 visible, register windows)

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

### SPARC-LEON
Triple modular redundancy (TMR), EDAC on memory, watchdog, open-source VHDL

---

## Historical Lineage

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

### SPARC-LEON
SPARC V8 → LEON → LEON2 → LEON3/4 (open source)

---

## Primary Use Cases

### PA-RISC
HP workstations, HP 9000 servers, some embedded

### SPARC-LEON
Satellites, spacecraft, ESA missions, NASA missions, radiation environments

---

## Strengths & Weaknesses

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

### SPARC-LEON
- **Strengths:** Radiation tolerance, SPARC compatibility, open source, flight proven
- **Weaknesses:** Niche market, lower performance than commercial CPUs, expensive to qualify

---

## When to Choose Which

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

**Choose SPARC-LEON when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

PA-RISC and SPARC-LEON represent different points in the spectrum of processor design. The 32/64-bit PA-RISC and 32-bit SPARC-LEON serve different scale requirements. PA-RISC excels in constrained environments where every transistor counts, while SPARC-LEON provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
