# MIPS vs x86

## Overview

This document compares **MIPS** and **x86**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS | x86 |
|-----------|----------|----------|
| **Bits** | 32 | 32 |
| **Type** | RISC | CISC |
| **Year** | 1981 | 1985 |
| **Creator** | Stanford University (MIPS Computer Systems) | Intel |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### MIPS
> *Keep pipeline simple, let compiler schedule - no hardware interlocks*

### x86
> *Software longevity through hardware complexity - cruft carries forward*

**Key Difference:** MIPS approaches computing with a risc philosophy, while x86 takes a cisc approach. 

---

## Register Architecture

### MIPS
32 × 32-bit ($0 hardwired to zero), HI/LO for multiply

### x86
8 × 32-bit (EAX-EDX, ESI, EDI, EBP, ESP)

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### MIPS
Branch delay slots, load/store architecture, coprocessor interface, academic clean design

### x86
Variable-length 1-15 bytes, segmentation, real/protected modes, x87/SSE

---

## Historical Lineage

### MIPS
Stanford research → MIPS I → MIPS II → MIPS III (64-bit) → MIPS32/64

### x86
8086 → 80286 → 80386 → Pentium → Core → x86-64

---

## Primary Use Cases

### MIPS
Workstations (SGI), embedded, gaming (PS1, PS2, N64), education

### x86
PCs, servers, laptops, dominant general-purpose computing 1985-2000s

---

## Strengths & Weaknesses

### MIPS
- **Strengths:** Clean design, easy to teach, good compiler target, proven performance
- **Weaknesses:** Branch delay slots are burden, licensing issues, overshadowed by ARM/RISC-V

### x86
- **Strengths:** Massive software base, backward compatibility, performance, ecosystem
- **Weaknesses:** Complex decode, legacy baggage, power hungry, security issues from complexity

---

## When to Choose Which

**Choose MIPS when:** your application fits its domain (Workstations (SGI)) and you value its specific strengths

**Choose x86 when:** backward compatibility with massive existing software bases is critical

---

## Summary

MIPS and x86 represent different points in the spectrum of processor design. The RISC philosophy of MIPS and the CISC approach of x86 represent fundamentally different tradeoffs between hardware complexity and software simplicity. Neither is universally superior—the right choice depends on the specific constraints of power, cost, performance, and legacy requirements.

---

*Generated for the Assembly Hello World Collection*
