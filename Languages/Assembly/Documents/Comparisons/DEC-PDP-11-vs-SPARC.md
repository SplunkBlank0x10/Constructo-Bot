# DEC-PDP-11 vs SPARC

## Overview

This document compares **DEC-PDP-11** and **SPARC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | SPARC |
|-----------|----------|----------|
| **Bits** | 16 | 32 |
| **Type** | CISC | RISC |
| **Year** | 1970 | 1985 |
| **Creator** | Digital Equipment Corporation (DEC) | Sun Microsystems (David Patterson et al.) |
| **Endianness** | Little | Big |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### SPARC
> *Windows on the world - register windows eliminate save/restore on calls*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while SPARC takes a risc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### SPARC
32 visible (8 global, 8 in, 8 local, 8 out), windows overlap caller/callee

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while SPARC provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### SPARC
Register windows, SAVE/RESTORE instructions, tagged arithmetic, open licensing

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### SPARC
Berkeley RISC I/II → SPARC (1985) → SPARC V8 → SPARCv9 (64-bit)

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### SPARC
Sun workstations/servers, Fujitsu supercomputers, embedded (LEON), education

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### SPARC
- **Strengths:** Fast procedure calls, elegant window mechanism, open specification
- **Weaknesses:** Window overflow complexity, big-endian default, Sun's demise, niche now

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose SPARC when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

DEC-PDP-11 and SPARC represent different points in the spectrum of processor design. The 16-bit DEC-PDP-11 and 32-bit SPARC serve different scale requirements. DEC-PDP-11 excels in constrained environments where every transistor counts, while SPARC provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
