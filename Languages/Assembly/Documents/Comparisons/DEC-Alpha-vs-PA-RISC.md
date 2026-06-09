# DEC-Alpha vs PA-RISC

## Overview

This document compares **DEC-Alpha** and **PA-RISC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-Alpha | PA-RISC |
|-----------|----------|----------|
| **Bits** | 64 | 32/64 |
| **Type** | RISC | RISC |
| **Year** | 1992 | 1986 |
| **Creator** | Digital Equipment Corporation (DEC) | Hewlett-Packard |
| **Endianness** | Little | Big |

---

## Design Philosophy

### DEC-Alpha
> *64 bits, no compromises - pure 64-bit from scratch, no legacy*

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

**Key Difference:** DEC-Alpha approaches computing with a risc philosophy, while PA-RISC takes a risc approach. 

---

## Register Architecture

### DEC-Alpha
32 integer + 32 FP (R31/F31 hardwired to zero)

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### DEC-Alpha
No condition codes, no byte/halfword loads originally, designed for extreme clock speeds

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

---

## Historical Lineage

### DEC-Alpha
Clean sheet design, influenced by MIPS experience

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

---

## Primary Use Cases

### DEC-Alpha
High-end workstations, servers, scientific computing (Cray-like)

### PA-RISC
HP workstations, HP 9000 servers, some embedded

---

## Strengths & Weaknesses

### DEC-Alpha
- **Strengths:** Blazing fast for its era, clean design, excellent 64-bit implementation
- **Weaknesses:** DEC's demise, no 32-bit mode, compiler complexity

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

---

## When to Choose Which

**Choose DEC-Alpha when:** maximum single-thread performance is critical (High-end workstations)

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

---

## Summary

DEC-Alpha and PA-RISC represent different points in the spectrum of processor design. The 32/64-bit PA-RISC and 64-bit DEC-Alpha serve different scale requirements. PA-RISC excels in constrained environments where every transistor counts, while DEC-Alpha provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
