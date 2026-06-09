# DEC-VAX vs Itanium-IA64

## Overview

This document compares **DEC-VAX** and **Itanium-IA64**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-VAX | Itanium-IA64 |
|-----------|----------|----------|
| **Bits** | 32 | 64 |
| **Type** | CISC | EPIC (Explicitly Parallel Instruction Computing) |
| **Year** | 1977 | 2001 |
| **Creator** | Digital Equipment Corporation (DEC) | Intel & Hewlett-Packard |
| **Endianness** | Little | Both (selected per page) |

---

## Design Philosophy

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

### Itanium-IA64
> *Explicit parallelism - compiler schedules, hardware just executes*

**Key Difference:** DEC-VAX approaches computing with a cisc philosophy, while Itanium-IA64 takes a epic approach. 

---

## Register Architecture

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

### Itanium-IA64
128 × 64-bit GPRs, 128 × 82-bit FPRs, 64 × 1-bit predicates, 8 branch

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

### Itanium-IA64
Bundles of 3 instructions + template, predication, rotating registers, no OoO hardware

---

## Historical Lineage

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

### Itanium-IA64
HP PA-RISC + Intel ambition → Itanium → discontinued 2021

---

## Primary Use Cases

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

### Itanium-IA64
High-end servers, enterprise computing, HP-UX, some HPC

---

## Strengths & Weaknesses

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

### Itanium-IA64
- **Strengths:** Theoretical scalability, clean 64-bit, no legacy baggage
- **Weaknesses:** Compiler complexity, no OoO safety net, x86-64 won market, discontinued

---

## When to Choose Which

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose Itanium-IA64 when:** your application fits its domain (High-end servers) and you value its specific strengths

---

## Summary

DEC-VAX and Itanium-IA64 represent different points in the spectrum of processor design. Separated by 24 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1977 approach to Intel & Hewlett-Packard's 2001 vision. DEC-VAX carries the constraints and wisdom of its era, while DEC-VAX addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
