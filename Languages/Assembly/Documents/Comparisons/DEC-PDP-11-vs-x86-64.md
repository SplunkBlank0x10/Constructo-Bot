# DEC-PDP-11 vs x86-64

## Overview

This document compares **DEC-PDP-11** and **x86-64**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | x86-64 |
|-----------|----------|----------|
| **Bits** | 16 | 64 |
| **Type** | CISC | CISC |
| **Year** | 1970 | 2003 |
| **Creator** | Digital Equipment Corporation (DEC) | AMD (later adopted by Intel) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### x86-64
> *Pragmatic evolution - keep x86 viable, add modern conveniences, don't break software*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while x86-64 takes a cisc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### x86-64
16 × 64-bit (RAX-R15), RIP-relative addressing

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while x86-64 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### x86-64
Long mode, legacy mode, NX bit, more registers, larger address space, same encoding burden

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### x86-64
x86 → AMD64 (2003) → Intel 64 (2004) → dominant 64-bit ISA

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### x86-64
Dominant server, desktop, laptop, gaming, HPC, cloud

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### x86-64
- **Strengths:** Compatibility + progress, massive ecosystem, performance, software investment
- **Weaknesses:** Inherited x86 complexity, power consumption, security attack surface

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose x86-64 when:** backward compatibility with massive existing software bases is critical

---

## Summary

DEC-PDP-11 and x86-64 represent different points in the spectrum of processor design. Separated by 33 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1970 approach to AMD (later adopted by Intel)'s 2003 vision. DEC-PDP-11 carries the constraints and wisdom of its era, while DEC-PDP-11 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
