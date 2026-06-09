# PA-RISC vs x86

## Overview

This document compares **PA-RISC** and **x86**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PA-RISC | x86 |
|-----------|----------|----------|
| **Bits** | 32/64 | 32 |
| **Type** | RISC | CISC |
| **Year** | 1986 | 1985 |
| **Creator** | Hewlett-Packard | Intel |
| **Endianness** | Big | Little |

---

## Design Philosophy

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

### x86
> *Software longevity through hardware complexity - cruft carries forward*

**Key Difference:** PA-RISC approaches computing with a risc philosophy, while x86 takes a cisc approach. 

---

## Register Architecture

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

### x86
8 × 32-bit (EAX-EDX, ESI, EDI, EBP, ESP)

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

### x86
Variable-length 1-15 bytes, segmentation, real/protected modes, x87/SSE

---

## Historical Lineage

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

### x86
8086 → 80286 → 80386 → Pentium → Core → x86-64

---

## Primary Use Cases

### PA-RISC
HP workstations, HP 9000 servers, some embedded

### x86
PCs, servers, laptops, dominant general-purpose computing 1985-2000s

---

## Strengths & Weaknesses

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

### x86
- **Strengths:** Massive software base, backward compatibility, performance, ecosystem
- **Weaknesses:** Complex decode, legacy baggage, power hungry, security issues from complexity

---

## When to Choose Which

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

**Choose x86 when:** backward compatibility with massive existing software bases is critical

---

## Summary

PA-RISC and x86 represent different points in the spectrum of processor design. The 32/64-bit PA-RISC and 32-bit x86 serve different scale requirements. PA-RISC excels in constrained environments where every transistor counts, while x86 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
