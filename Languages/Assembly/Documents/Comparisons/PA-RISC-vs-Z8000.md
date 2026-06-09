# PA-RISC vs Z8000

## Overview

This document compares **PA-RISC** and **Z8000**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PA-RISC | Z8000 |
|-----------|----------|----------|
| **Bits** | 32/64 | 16 |
| **Type** | RISC | CISC |
| **Year** | 1986 | 1979 |
| **Creator** | Hewlett-Packard | Zilog |
| **Endianness** | Big | Big |

---

## Design Philosophy

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

### Z8000
> *16-bit done right - more regular than 8086, flexible segmented or flat*

**Key Difference:** PA-RISC approaches computing with a risc philosophy, while Z8000 takes a cisc approach. 

---

## Register Architecture

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

### Z8000
16 × 16-bit (pairable to 32-bit), two stack pointers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

### Z8000
Segmented (Z8001) or non-segmented (Z8002), string instructions, 23-bit addressing

---

## Historical Lineage

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

### Z8000
Z80 → Z8000 (16-bit) → Z80000 (32-bit, rare) → discontinued

---

## Primary Use Cases

### PA-RISC
HP workstations, HP 9000 servers, some embedded

### Z8000
Industrial control, military, some Unix workstations, embedded

---

## Strengths & Weaknesses

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

### Z8000
- **Strengths:** Clean design, orthogonal, flexible addressing, good for systems programming
- **Weaknesses:** Late to market, no software ecosystem, x86 won, discontinued

---

## When to Choose Which

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

**Choose Z8000 when:** your application fits its domain (Industrial control) and you value its specific strengths

---

## Summary

PA-RISC and Z8000 represent different points in the spectrum of processor design. The 16-bit Z8000 and 32/64-bit PA-RISC serve different scale requirements. Z8000 excels in constrained environments where every transistor counts, while PA-RISC provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
