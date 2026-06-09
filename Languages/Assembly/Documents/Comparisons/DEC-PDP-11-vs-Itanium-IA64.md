# DEC-PDP-11 vs Itanium-IA64

## Overview

This document compares **DEC-PDP-11** and **Itanium-IA64**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | Itanium-IA64 |
|-----------|----------|----------|
| **Bits** | 16 | 64 |
| **Type** | CISC | EPIC (Explicitly Parallel Instruction Computing) |
| **Year** | 1970 | 2001 |
| **Creator** | Digital Equipment Corporation (DEC) | Intel & Hewlett-Packard |
| **Endianness** | Little | Both (selected per page) |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### Itanium-IA64
> *Explicit parallelism - compiler schedules, hardware just executes*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while Itanium-IA64 takes a epic approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### Itanium-IA64
128 × 64-bit GPRs, 128 × 82-bit FPRs, 64 × 1-bit predicates, 8 branch

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while Itanium-IA64 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### Itanium-IA64
Bundles of 3 instructions + template, predication, rotating registers, no OoO hardware

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### Itanium-IA64
HP PA-RISC + Intel ambition → Itanium → discontinued 2021

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### Itanium-IA64
High-end servers, enterprise computing, HP-UX, some HPC

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### Itanium-IA64
- **Strengths:** Theoretical scalability, clean 64-bit, no legacy baggage
- **Weaknesses:** Compiler complexity, no OoO safety net, x86-64 won market, discontinued

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose Itanium-IA64 when:** your application fits its domain (High-end servers) and you value its specific strengths

---

## Summary

DEC-PDP-11 and Itanium-IA64 represent different points in the spectrum of processor design. Separated by 31 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1970 approach to Intel & Hewlett-Packard's 2001 vision. DEC-PDP-11 carries the constraints and wisdom of its era, while DEC-PDP-11 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
