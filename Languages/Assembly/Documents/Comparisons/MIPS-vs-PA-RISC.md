# MIPS vs PA-RISC

## Overview

This document compares **MIPS** and **PA-RISC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS | PA-RISC |
|-----------|----------|----------|
| **Bits** | 32 | 32/64 |
| **Type** | RISC | RISC |
| **Year** | 1981 | 1986 |
| **Creator** | Stanford University (MIPS Computer Systems) | Hewlett-Packard |
| **Endianness** | Bi-endian | Big |

---

## Design Philosophy

### MIPS
> *Keep pipeline simple, let compiler schedule - no hardware interlocks*

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

**Key Difference:** MIPS approaches computing with a risc philosophy, while PA-RISC takes a risc approach. 

---

## Register Architecture

### MIPS
32 × 32-bit ($0 hardwired to zero), HI/LO for multiply

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### MIPS
Branch delay slots, load/store architecture, coprocessor interface, academic clean design

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

---

## Historical Lineage

### MIPS
Stanford research → MIPS I → MIPS II → MIPS III (64-bit) → MIPS32/64

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

---

## Primary Use Cases

### MIPS
Workstations (SGI), embedded, gaming (PS1, PS2, N64), education

### PA-RISC
HP workstations, HP 9000 servers, some embedded

---

## Strengths & Weaknesses

### MIPS
- **Strengths:** Clean design, easy to teach, good compiler target, proven performance
- **Weaknesses:** Branch delay slots are burden, licensing issues, overshadowed by ARM/RISC-V

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

---

## When to Choose Which

**Choose MIPS when:** your application fits its domain (Workstations (SGI)) and you value its specific strengths

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

---

## Summary

MIPS and PA-RISC represent different points in the spectrum of processor design. The 32-bit MIPS and 32/64-bit PA-RISC serve different scale requirements. MIPS excels in constrained environments where every transistor counts, while PA-RISC provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
