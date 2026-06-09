# DEC-PDP-11 vs RISC-V

## Overview

This document compares **DEC-PDP-11** and **RISC-V**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | RISC-V |
|-----------|----------|----------|
| **Bits** | 16 | 32/64/128 |
| **Type** | CISC | RISC |
| **Year** | 1970 | 2010 |
| **Creator** | Digital Equipment Corporation (DEC) | UC Berkeley |
| **Endianness** | Little | Little (default), bi-endian optional |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while RISC-V takes a risc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while RISC-V provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

DEC-PDP-11 and RISC-V represent different points in the spectrum of processor design. Separated by 40 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1970 approach to UC Berkeley's 2010 vision. DEC-PDP-11 carries the constraints and wisdom of its era, while DEC-PDP-11 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
