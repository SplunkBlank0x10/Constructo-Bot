# MIPS64 vs RISC-V

## Overview

This document compares **MIPS64** and **RISC-V**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS64 | RISC-V |
|-----------|----------|----------|
| **Bits** | 64 | 32/64/128 |
| **Type** | RISC | RISC |
| **Year** | 1995 | 2010 |
| **Creator** | MIPS Technologies / Silicon Graphics | UC Berkeley |
| **Endianness** | Bi-endian | Little (default), bi-endian optional |

---

## Design Philosophy

### MIPS64
> *Extend, don't redesign - same principles, larger scale*

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

**Key Difference:** MIPS64 approaches computing with a risc philosophy, while RISC-V takes a risc approach. 

---

## Register Architecture

### MIPS64
32 × 64-bit, same HI/LO, same delay slots

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### MIPS64
Backward compatible with MIPS32, N64 ABI, same pipeline philosophy

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

---

## Historical Lineage

### MIPS64
MIPS I → MIPS III → MIPS64

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

---

## Primary Use Cases

### MIPS64
High-end workstations, servers, some embedded

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

---

## Strengths & Weaknesses

### MIPS64
- **Strengths:** Continuity, familiar toolchain, 64-bit when needed
- **Weaknesses:** Carried MIPS32 baggage, delay slots still burden, market decline

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

---

## When to Choose Which

**Choose MIPS64 when:** your application fits its domain (High-end workstations) and you value its specific strengths

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

MIPS64 and RISC-V represent different points in the spectrum of processor design. The 32/64/128-bit RISC-V and 64-bit MIPS64 serve different scale requirements. RISC-V excels in constrained environments where every transistor counts, while MIPS64 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
