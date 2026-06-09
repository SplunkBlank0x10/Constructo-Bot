# DEC-PDP-11 vs SPARC-LEON

## Overview

This document compares **DEC-PDP-11** and **SPARC-LEON**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | SPARC-LEON |
|-----------|----------|----------|
| **Bits** | 16 | 32 |
| **Type** | CISC | RISC (radiation-hardened) |
| **Year** | 1970 | 1997 |
| **Creator** | Digital Equipment Corporation (DEC) | Aeroflex Gaisler (now Cobham) |
| **Endianness** | Little | Big |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### SPARC-LEON
> *Reliability above all - survive space radiation, detect and correct SEUs automatically*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while SPARC-LEON takes a risc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### SPARC-LEON
Same as SPARC V8 (32 visible, register windows)

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while SPARC-LEON provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### SPARC-LEON
Triple modular redundancy (TMR), EDAC on memory, watchdog, open-source VHDL

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### SPARC-LEON
SPARC V8 → LEON → LEON2 → LEON3/4 (open source)

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### SPARC-LEON
Satellites, spacecraft, ESA missions, NASA missions, radiation environments

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### SPARC-LEON
- **Strengths:** Radiation tolerance, SPARC compatibility, open source, flight proven
- **Weaknesses:** Niche market, lower performance than commercial CPUs, expensive to qualify

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose SPARC-LEON when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

DEC-PDP-11 and SPARC-LEON represent different points in the spectrum of processor design. Separated by 27 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1970 approach to Aeroflex Gaisler (now Cobham)'s 1997 vision. DEC-PDP-11 carries the constraints and wisdom of its era, while DEC-PDP-11 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
