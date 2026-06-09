# PA-RISC vs RISC-V

## Overview

This document compares **PA-RISC** and **RISC-V**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PA-RISC | RISC-V |
|-----------|----------|----------|
| **Bits** | 32/64 | 32/64/128 |
| **Type** | RISC | RISC |
| **Year** | 1986 | 2010 |
| **Creator** | Hewlett-Packard | UC Berkeley |
| **Endianness** | Big | Little (default), bi-endian optional |

---

## Design Philosophy

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

**Key Difference:** PA-RISC approaches computing with a risc philosophy, while RISC-V takes a risc approach. 

---

## Register Architecture

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

---

## Historical Lineage

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

---

## Primary Use Cases

### PA-RISC
HP workstations, HP 9000 servers, some embedded

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

---

## Strengths & Weaknesses

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

---

## When to Choose Which

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

PA-RISC and RISC-V represent different points in the spectrum of processor design. Separated by 24 years, these architectures reflect the evolution from Hewlett-Packard's 1986 approach to UC Berkeley's 2010 vision. PA-RISC carries the constraints and wisdom of its era, while PA-RISC addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
