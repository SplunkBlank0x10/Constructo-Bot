# Intel-8080 vs PA-RISC

## Overview

This document compares **Intel-8080** and **PA-RISC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Intel-8080 | PA-RISC |
|-----------|----------|----------|
| **Bits** | 8 | 32/64 |
| **Type** | CISC | RISC |
| **Year** | 1974 | 1986 |
| **Creator** | Intel | Hewlett-Packard |
| **Endianness** | Little | Big |

---

## Design Philosophy

### Intel-8080
> *The microprocessor as a computer - general purpose, external memory*

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

**Key Difference:** Intel-8080 approaches computing with a cisc philosophy, while PA-RISC takes a risc approach. 

---

## Register Architecture

### Intel-8080
7 × 8-bit (A,B,C,D,E,H,L), pairs as 16-bit (BC,DE,HL)

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### Intel-8080
64KB space, 3 power supplies, 5 interrupts, CP/M era, Altair/IMSAI

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

---

## Historical Lineage

### Intel-8080
8008 → 8080 → 8085 → 8086 (not binary compatible but design lineage)

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

---

## Primary Use Cases

### Intel-8080
Early personal computers, CP/M systems, embedded, industrial

### PA-RISC
HP workstations, HP 9000 servers, some embedded

---

## Strengths & Weaknesses

### Intel-8080
- **Strengths:** First widely successful general-purpose CPU, established 8-bit paradigm
- **Weaknesses:** Limited registers, complex support chips, multiple power supplies

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

---

## When to Choose Which

**Choose Intel-8080 when:** your application fits its domain (Early personal computers) and you value its specific strengths

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

---

## Summary

Intel-8080 and PA-RISC represent different points in the spectrum of processor design. The 8-bit Intel-8080 and 32/64-bit PA-RISC serve different scale requirements. Intel-8080 excels in constrained environments where every transistor counts, while PA-RISC provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
