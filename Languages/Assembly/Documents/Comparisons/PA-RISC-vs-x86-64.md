# PA-RISC vs x86-64

## Overview

This document compares **PA-RISC** and **x86-64**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PA-RISC | x86-64 |
|-----------|----------|----------|
| **Bits** | 32/64 | 64 |
| **Type** | RISC | CISC |
| **Year** | 1986 | 2003 |
| **Creator** | Hewlett-Packard | AMD (later adopted by Intel) |
| **Endianness** | Big | Little |

---

## Design Philosophy

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

### x86-64
> *Pragmatic evolution - keep x86 viable, add modern conveniences, don't break software*

**Key Difference:** PA-RISC approaches computing with a risc philosophy, while x86-64 takes a cisc approach. 

---

## Register Architecture

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

### x86-64
16 × 64-bit (RAX-R15), RIP-relative addressing

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

### x86-64
Long mode, legacy mode, NX bit, more registers, larger address space, same encoding burden

---

## Historical Lineage

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

### x86-64
x86 → AMD64 (2003) → Intel 64 (2004) → dominant 64-bit ISA

---

## Primary Use Cases

### PA-RISC
HP workstations, HP 9000 servers, some embedded

### x86-64
Dominant server, desktop, laptop, gaming, HPC, cloud

---

## Strengths & Weaknesses

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

### x86-64
- **Strengths:** Compatibility + progress, massive ecosystem, performance, software investment
- **Weaknesses:** Inherited x86 complexity, power consumption, security attack surface

---

## When to Choose Which

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

**Choose x86-64 when:** backward compatibility with massive existing software bases is critical

---

## Summary

PA-RISC and x86-64 represent different points in the spectrum of processor design. The 32/64-bit PA-RISC and 64-bit x86-64 serve different scale requirements. PA-RISC excels in constrained environments where every transistor counts, while x86-64 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
