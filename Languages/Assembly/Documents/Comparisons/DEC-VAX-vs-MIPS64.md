# DEC-VAX vs MIPS64

## Overview

This document compares **DEC-VAX** and **MIPS64**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-VAX | MIPS64 |
|-----------|----------|----------|
| **Bits** | 32 | 64 |
| **Type** | CISC | RISC |
| **Year** | 1977 | 1995 |
| **Creator** | Digital Equipment Corporation (DEC) | MIPS Technologies / Silicon Graphics |
| **Endianness** | Little | Bi-endian |

---

## Design Philosophy

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

### MIPS64
> *Extend, don't redesign - same principles, larger scale*

**Key Difference:** DEC-VAX approaches computing with a cisc philosophy, while MIPS64 takes a risc approach. 

---

## Register Architecture

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

### MIPS64
32 × 64-bit, same HI/LO, same delay slots

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

### MIPS64
Backward compatible with MIPS32, N64 ABI, same pipeline philosophy

---

## Historical Lineage

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

### MIPS64
MIPS I → MIPS III → MIPS64

---

## Primary Use Cases

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

### MIPS64
High-end workstations, servers, some embedded

---

## Strengths & Weaknesses

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

### MIPS64
- **Strengths:** Continuity, familiar toolchain, 64-bit when needed
- **Weaknesses:** Carried MIPS32 baggage, delay slots still burden, market decline

---

## When to Choose Which

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose MIPS64 when:** your application fits its domain (High-end workstations) and you value its specific strengths

---

## Summary

DEC-VAX and MIPS64 represent different points in the spectrum of processor design. The 32-bit DEC-VAX and 64-bit MIPS64 serve different scale requirements. DEC-VAX excels in constrained environments where every transistor counts, while MIPS64 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
