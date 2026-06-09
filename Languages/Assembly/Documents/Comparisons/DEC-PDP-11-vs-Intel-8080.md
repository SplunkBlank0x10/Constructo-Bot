# DEC-PDP-11 vs Intel-8080

## Overview

This document compares **DEC-PDP-11** and **Intel-8080**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | Intel-8080 |
|-----------|----------|----------|
| **Bits** | 16 | 8 |
| **Type** | CISC | CISC |
| **Year** | 1970 | 1974 |
| **Creator** | Digital Equipment Corporation (DEC) | Intel |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### Intel-8080
> *The microprocessor as a computer - general purpose, external memory*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while Intel-8080 takes a cisc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### Intel-8080
7 × 8-bit (A,B,C,D,E,H,L), pairs as 16-bit (BC,DE,HL)

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while Intel-8080 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### Intel-8080
64KB space, 3 power supplies, 5 interrupts, CP/M era, Altair/IMSAI

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### Intel-8080
8008 → 8080 → 8085 → 8086 (not binary compatible but design lineage)

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### Intel-8080
Early personal computers, CP/M systems, embedded, industrial

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### Intel-8080
- **Strengths:** First widely successful general-purpose CPU, established 8-bit paradigm
- **Weaknesses:** Limited registers, complex support chips, multiple power supplies

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose Intel-8080 when:** your application fits its domain (Early personal computers) and you value its specific strengths

---

## Summary

DEC-PDP-11 and Intel-8080 represent different points in the spectrum of processor design. The 8-bit Intel-8080 and 16-bit DEC-PDP-11 serve different scale requirements. Intel-8080 excels in constrained environments where every transistor counts, while DEC-PDP-11 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
