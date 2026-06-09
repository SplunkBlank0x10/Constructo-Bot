# RISC-V vs x86-64

## Overview

This document compares **RISC-V** and **x86-64**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | RISC-V | x86-64 |
|-----------|----------|----------|
| **Bits** | 32/64/128 | 64 |
| **Type** | RISC | CISC |
| **Year** | 2010 | 2003 |
| **Creator** | UC Berkeley | AMD (later adopted by Intel) |
| **Endianness** | Little (default), bi-endian optional | Little |

---

## Design Philosophy

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

### x86-64
> *Pragmatic evolution - keep x86 viable, add modern conveniences, don't break software*

**Key Difference:** RISC-V approaches computing with a risc philosophy, while x86-64 takes a cisc approach. 

---

## Register Architecture

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

### x86-64
16 × 64-bit (RAX-R15), RIP-relative addressing

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

### x86-64
Long mode, legacy mode, NX bit, more registers, larger address space, same encoding burden

---

## Historical Lineage

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

### x86-64
x86 → AMD64 (2003) → Intel 64 (2004) → dominant 64-bit ISA

---

## Primary Use Cases

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

### x86-64
Dominant server, desktop, laptop, gaming, HPC, cloud

---

## Strengths & Weaknesses

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

### x86-64
- **Strengths:** Compatibility + progress, massive ecosystem, performance, software investment
- **Weaknesses:** Inherited x86 complexity, power consumption, security attack surface

---

## When to Choose Which

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

**Choose x86-64 when:** backward compatibility with massive existing software bases is critical

---

## Summary

RISC-V and x86-64 represent different points in the spectrum of processor design. The 32/64/128-bit RISC-V and 64-bit x86-64 serve different scale requirements. RISC-V excels in constrained environments where every transistor counts, while x86-64 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
