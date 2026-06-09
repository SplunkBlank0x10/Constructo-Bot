# DEC-PDP-11 vs Intel-8085

## Overview

This document compares **DEC-PDP-11** and **Intel-8085**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | Intel-8085 |
|-----------|----------|----------|
| **Bits** | 16 | 8 |
| **Type** | CISC | CISC |
| **Year** | 1970 | 1976 |
| **Creator** | Digital Equipment Corporation (DEC) | Intel |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### Intel-8085
> *Simplify the system - integrate clock, single 5V supply*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while Intel-8085 takes a cisc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### Intel-8085
Same as 8080 (A,B,C,D,E,H,L)

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while Intel-8085 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### Intel-8085
Integrated clock generator, SID/SOD serial lines, 5 interrupts, 8080 compatible

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### Intel-8085
8080 → 8085 (enhanced)

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### Intel-8085
Embedded systems, industrial controllers, educational kits, early portables

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### Intel-8085
- **Strengths:** Simpler system design, lower power, 8080 compatible, integrated features
- **Weaknesses:** Still 8-bit, limited vs 16-bit emerging, soon overshadowed

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose Intel-8085 when:** power efficiency is paramount, especially for Embedded systems

---

## Summary

DEC-PDP-11 and Intel-8085 represent different points in the spectrum of processor design. The 8-bit Intel-8085 and 16-bit DEC-PDP-11 serve different scale requirements. Intel-8085 excels in constrained environments where every transistor counts, while DEC-PDP-11 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
