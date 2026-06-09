# DEC-Alpha vs RISC-V

## Overview

This document compares **DEC-Alpha** and **RISC-V**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-Alpha | RISC-V |
|-----------|----------|----------|
| **Bits** | 64 | 32/64/128 |
| **Type** | RISC | RISC |
| **Year** | 1992 | 2010 |
| **Creator** | Digital Equipment Corporation (DEC) | UC Berkeley |
| **Endianness** | Little | Little (default), bi-endian optional |

---

## Design Philosophy

### DEC-Alpha
> *64 bits, no compromises - pure 64-bit from scratch, no legacy*

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

**Key Difference:** DEC-Alpha approaches computing with a risc philosophy, while RISC-V takes a risc approach. 

---

## Register Architecture

### DEC-Alpha
32 integer + 32 FP (R31/F31 hardwired to zero)

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### DEC-Alpha
No condition codes, no byte/halfword loads originally, designed for extreme clock speeds

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

---

## Historical Lineage

### DEC-Alpha
Clean sheet design, influenced by MIPS experience

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

---

## Primary Use Cases

### DEC-Alpha
High-end workstations, servers, scientific computing (Cray-like)

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

---

## Strengths & Weaknesses

### DEC-Alpha
- **Strengths:** Blazing fast for its era, clean design, excellent 64-bit implementation
- **Weaknesses:** DEC's demise, no 32-bit mode, compiler complexity

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

---

## When to Choose Which

**Choose DEC-Alpha when:** maximum single-thread performance is critical (High-end workstations)

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

DEC-Alpha and RISC-V represent different points in the spectrum of processor design. The 32/64/128-bit RISC-V and 64-bit DEC-Alpha serve different scale requirements. RISC-V excels in constrained environments where every transistor counts, while DEC-Alpha provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
