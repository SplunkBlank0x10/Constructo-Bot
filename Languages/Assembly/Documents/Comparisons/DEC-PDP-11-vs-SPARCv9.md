# DEC-PDP-11 vs SPARCv9

## Overview

This document compares **DEC-PDP-11** and **SPARCv9**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | SPARCv9 |
|-----------|----------|----------|
| **Bits** | 16 | 64 |
| **Type** | CISC | RISC |
| **Year** | 1970 | 1993 |
| **Creator** | Digital Equipment Corporation (DEC) | Sun Microsystems / SPARC International |
| **Endianness** | Little | Big (default), little supported |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### SPARCv9
> *Extend the windows - preserve SPARC mechanism, adapt to 64-bit servers*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while SPARCv9 takes a risc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### SPARCv9
64-bit, more windows available, same window mechanism

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while SPARCv9 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### SPARCv9
VIS SIMD, little-endian option, prefetch, conditional moves, 64-bit addressing

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### SPARCv9
SPARC V8 → SPARCv9 → UltraSPARC → Rock (cancelled) → SPARC64 (Fujitsu)

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### SPARCv9
Sun servers, Fujitsu supercomputers (K computer), enterprise

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### SPARCv9
- **Strengths:** 64-bit SPARC, VIS performance, proven in enterprise, Fujitsu continuation
- **Weaknesses:** Sun's demise, niche market now, x86-64 dominance in servers

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose SPARCv9 when:** your application fits its domain (Sun servers) and you value its specific strengths

---

## Summary

DEC-PDP-11 and SPARCv9 represent different points in the spectrum of processor design. Separated by 23 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1970 approach to Sun Microsystems / SPARC International's 1993 vision. DEC-PDP-11 carries the constraints and wisdom of its era, while DEC-PDP-11 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
