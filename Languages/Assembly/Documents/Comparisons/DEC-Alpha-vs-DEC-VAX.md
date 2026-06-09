# DEC-Alpha vs DEC-VAX

## Overview

This document compares **DEC-Alpha** and **DEC-VAX**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-Alpha | DEC-VAX |
|-----------|----------|----------|
| **Bits** | 64 | 32 |
| **Type** | RISC | CISC |
| **Year** | 1992 | 1977 |
| **Creator** | Digital Equipment Corporation (DEC) | Digital Equipment Corporation (DEC) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-Alpha
> *64 bits, no compromises - pure 64-bit from scratch, no legacy*

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

**Key Difference:** DEC-Alpha approaches computing with a risc philosophy, while DEC-VAX takes a cisc approach. 

---

## Register Architecture

### DEC-Alpha
32 integer + 32 FP (R31/F31 hardwired to zero)

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### DEC-Alpha
No condition codes, no byte/halfword loads originally, designed for extreme clock speeds

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

---

## Historical Lineage

### DEC-Alpha
Clean sheet design, influenced by MIPS experience

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

---

## Primary Use Cases

### DEC-Alpha
High-end workstations, servers, scientific computing (Cray-like)

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

---

## Strengths & Weaknesses

### DEC-Alpha
- **Strengths:** Blazing fast for its era, clean design, excellent 64-bit implementation
- **Weaknesses:** DEC's demise, no 32-bit mode, compiler complexity

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

---

## When to Choose Which

**Choose DEC-Alpha when:** maximum single-thread performance is critical (High-end workstations)

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

---

## Summary

DEC-Alpha and DEC-VAX represent different points in the spectrum of processor design. The 32-bit DEC-VAX and 64-bit DEC-Alpha serve different scale requirements. DEC-VAX excels in constrained environments where every transistor counts, while DEC-Alpha provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
