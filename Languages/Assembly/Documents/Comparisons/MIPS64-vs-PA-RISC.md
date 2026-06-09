# MIPS64 vs PA-RISC

## Overview

This document compares **MIPS64** and **PA-RISC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS64 | PA-RISC |
|-----------|----------|----------|
| **Bits** | 64 | 32/64 |
| **Type** | RISC | RISC |
| **Year** | 1995 | 1986 |
| **Creator** | MIPS Technologies / Silicon Graphics | Hewlett-Packard |
| **Endianness** | Bi-endian | Big |

---

## Design Philosophy

### MIPS64
> *Extend, don't redesign - same principles, larger scale*

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

**Key Difference:** MIPS64 approaches computing with a risc philosophy, while PA-RISC takes a risc approach. 

---

## Register Architecture

### MIPS64
32 × 64-bit, same HI/LO, same delay slots

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### MIPS64
Backward compatible with MIPS32, N64 ABI, same pipeline philosophy

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

---

## Historical Lineage

### MIPS64
MIPS I → MIPS III → MIPS64

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

---

## Primary Use Cases

### MIPS64
High-end workstations, servers, some embedded

### PA-RISC
HP workstations, HP 9000 servers, some embedded

---

## Strengths & Weaknesses

### MIPS64
- **Strengths:** Continuity, familiar toolchain, 64-bit when needed
- **Weaknesses:** Carried MIPS32 baggage, delay slots still burden, market decline

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

---

## When to Choose Which

**Choose MIPS64 when:** your application fits its domain (High-end workstations) and you value its specific strengths

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

---

## Summary

MIPS64 and PA-RISC represent different points in the spectrum of processor design. The 32/64-bit PA-RISC and 64-bit MIPS64 serve different scale requirements. PA-RISC excels in constrained environments where every transistor counts, while MIPS64 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
