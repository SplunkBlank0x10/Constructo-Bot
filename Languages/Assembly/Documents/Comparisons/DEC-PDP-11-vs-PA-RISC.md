# DEC-PDP-11 vs PA-RISC

## Overview

This document compares **DEC-PDP-11** and **PA-RISC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | PA-RISC |
|-----------|----------|----------|
| **Bits** | 16 | 32/64 |
| **Type** | CISC | RISC |
| **Year** | 1970 | 1986 |
| **Creator** | Digital Equipment Corporation (DEC) | Hewlett-Packard |
| **Endianness** | Little | Big |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while PA-RISC takes a risc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while PA-RISC provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### PA-RISC
HP workstations, HP 9000 servers, some embedded

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

---

## Summary

DEC-PDP-11 and PA-RISC represent different points in the spectrum of processor design. The 16-bit DEC-PDP-11 and 32/64-bit PA-RISC serve different scale requirements. DEC-PDP-11 excels in constrained environments where every transistor counts, while PA-RISC provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
