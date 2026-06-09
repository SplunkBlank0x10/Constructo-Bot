# DEC-VAX vs RISC-V

## Overview

This document compares **DEC-VAX** and **RISC-V**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-VAX | RISC-V |
|-----------|----------|----------|
| **Bits** | 32 | 32/64/128 |
| **Type** | CISC | RISC |
| **Year** | 1977 | 2010 |
| **Creator** | Digital Equipment Corporation (DEC) | UC Berkeley |
| **Endianness** | Little | Little (default), bi-endian optional |

---

## Design Philosophy

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

**Key Difference:** DEC-VAX approaches computing with a cisc philosophy, while RISC-V takes a risc approach. 

---

## Register Architecture

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

---

## Historical Lineage

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

---

## Primary Use Cases

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

---

## Strengths & Weaknesses

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

---

## When to Choose Which

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

DEC-VAX and RISC-V represent different points in the spectrum of processor design. Separated by 33 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1977 approach to UC Berkeley's 2010 vision. DEC-VAX carries the constraints and wisdom of its era, while DEC-VAX addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
