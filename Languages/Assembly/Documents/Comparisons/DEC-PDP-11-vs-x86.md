# DEC-PDP-11 vs x86

## Overview

This document compares **DEC-PDP-11** and **x86**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | x86 |
|-----------|----------|----------|
| **Bits** | 16 | 32 |
| **Type** | CISC | CISC |
| **Year** | 1970 | 1985 |
| **Creator** | Digital Equipment Corporation (DEC) | Intel |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### x86
> *Software longevity through hardware complexity - cruft carries forward*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while x86 takes a cisc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### x86
8 × 32-bit (EAX-EDX, ESI, EDI, EBP, ESP)

**Comparison:** DEC-PDP-11 offers minimal registers (minimal-style architecture), while x86 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### x86
Variable-length 1-15 bytes, segmentation, real/protected modes, x87/SSE

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### x86
8086 → 80286 → 80386 → Pentium → Core → x86-64

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### x86
PCs, servers, laptops, dominant general-purpose computing 1985-2000s

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### x86
- **Strengths:** Massive software base, backward compatibility, performance, ecosystem
- **Weaknesses:** Complex decode, legacy baggage, power hungry, security issues from complexity

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose x86 when:** backward compatibility with massive existing software bases is critical

---

## Summary

DEC-PDP-11 and x86 represent different points in the spectrum of processor design. The 16-bit DEC-PDP-11 and 32-bit x86 serve different scale requirements. DEC-PDP-11 excels in constrained environments where every transistor counts, while x86 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
