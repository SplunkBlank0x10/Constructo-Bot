# RISC-V vs x86

## Overview

This document compares **RISC-V** and **x86**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | RISC-V | x86 |
|-----------|----------|----------|
| **Bits** | 32/64/128 | 32 |
| **Type** | RISC | CISC |
| **Year** | 2010 | 1985 |
| **Creator** | UC Berkeley | Intel |
| **Endianness** | Little (default), bi-endian optional | Little |

---

## Design Philosophy

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

### x86
> *Software longevity through hardware complexity - cruft carries forward*

**Key Difference:** RISC-V approaches computing with a risc philosophy, while x86 takes a cisc approach. 

---

## Register Architecture

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

### x86
8 × 32-bit (EAX-EDX, ESI, EDI, EBP, ESP)

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

### x86
Variable-length 1-15 bytes, segmentation, real/protected modes, x87/SSE

---

## Historical Lineage

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

### x86
8086 → 80286 → 80386 → Pentium → Core → x86-64

---

## Primary Use Cases

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

### x86
PCs, servers, laptops, dominant general-purpose computing 1985-2000s

---

## Strengths & Weaknesses

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

### x86
- **Strengths:** Massive software base, backward compatibility, performance, ecosystem
- **Weaknesses:** Complex decode, legacy baggage, power hungry, security issues from complexity

---

## When to Choose Which

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

**Choose x86 when:** backward compatibility with massive existing software bases is critical

---

## Summary

RISC-V and x86 represent different points in the spectrum of processor design. Separated by 25 years, these architectures reflect the evolution from Intel's 1985 approach to UC Berkeley's 2010 vision. x86 carries the constraints and wisdom of its era, while x86 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
