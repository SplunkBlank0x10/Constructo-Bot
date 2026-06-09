# Motorola-68000 vs PA-RISC

## Overview

This document compares **Motorola-68000** and **PA-RISC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Motorola-68000 | PA-RISC |
|-----------|----------|----------|
| **Bits** | 32/16 | 32/64 |
| **Type** | CISC | RISC |
| **Year** | 1979 | 1986 |
| **Creator** | Motorola | Hewlett-Packard |
| **Endianness** | Big | Big |

---

## Design Philosophy

### Motorola-68000
> *Orthogonal elegance - any instruction × any mode × any register, intuitive assembly*

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

**Key Difference:** Motorola-68000 approaches computing with a cisc philosophy, while PA-RISC takes a risc approach. 

---

## Register Architecture

### Motorola-68000
8 × 32-bit data (D0-D7) + 8 × 32-bit address (A0-A7)

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### Motorola-68000
24-bit external address, 16-bit external data, no segmentation, rich addressing modes

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

---

## Historical Lineage

### Motorola-68000
6800 → 68000 → 68020/30/40 → ColdFire (embedded subset)

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

---

## Primary Use Cases

### Motorola-68000
Apple Macintosh, Amiga, Atari ST, Sega Genesis, workstations, embedded

### PA-RISC
HP workstations, HP 9000 servers, some embedded

---

## Strengths & Weaknesses

### Motorola-68000
- **Strengths:** Beautifully orthogonal, easy to program, flat memory, fast for era
- **Weaknesses:** Complex microcode, high pin count, eventually lost to x86 in market

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

---

## When to Choose Which

**Choose Motorola-68000 when:** maximum single-thread performance is critical (Apple Macintosh)

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

---

## Summary

Motorola-68000 and PA-RISC represent different points in the spectrum of processor design. The 32/16-bit Motorola-68000 and 32/64-bit PA-RISC serve different scale requirements. Motorola-68000 excels in constrained environments where every transistor counts, while PA-RISC provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
