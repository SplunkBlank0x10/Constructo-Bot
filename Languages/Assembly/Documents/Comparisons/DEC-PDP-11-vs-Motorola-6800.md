# DEC-PDP-11 vs Motorola-6800

## Overview

This document compares **DEC-PDP-11** and **Motorola-6800**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | Motorola-6800 |
|-----------|----------|----------|
| **Bits** | 16 | 8 |
| **Type** | CISC | CISC |
| **Year** | 1970 | 1974 |
| **Creator** | Digital Equipment Corporation (DEC) | Motorola |
| **Endianness** | Little | Big |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### Motorola-6800
> *Minimal viable computing - simple enough to understand, 5V single supply*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while Motorola-6800 takes a cisc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### Motorola-6800
A, B (accumulators), X (index), SP, PC

**Comparison:** Both architectures provide a minimal-register programming model, though the specific organization differs significantly.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### Motorola-6800
Single 5V supply (vs Intel's 3-voltage), 64KB space, influenced 6502

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### Motorola-6800
6800 → 6809 (enhanced) → 68000 (16/32-bit leap)

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### Motorola-6800
Automotive, industrial control, early personal computers, education

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### Motorola-6800
- **Strengths:** Simple, reliable, single supply, good interrupt handling, regular instruction set
- **Weaknesses:** Limited registers, soon overshadowed by 6502 (cheaper) and Z80 (more capable)

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose Motorola-6800 when:** fault tolerance and reliability are non-negotiable (e.g., Automotive)

---

## Summary

DEC-PDP-11 and Motorola-6800 represent different points in the spectrum of processor design. The 8-bit Motorola-6800 and 16-bit DEC-PDP-11 serve different scale requirements. Motorola-6800 excels in constrained environments where every transistor counts, while DEC-PDP-11 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
