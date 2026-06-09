# IBM-z-Architecture vs RISC-V

## Overview

This document compares **IBM-z-Architecture** and **RISC-V**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-z-Architecture | RISC-V |
|-----------|----------|----------|
| **Bits** | 64 | 32/64/128 |
| **Type** | CISC | RISC |
| **Year** | 2000 | 2010 |
| **Creator** | IBM | UC Berkeley |
| **Endianness** | Big | Little (default), bi-endian optional |

---

## Design Philosophy

### IBM-z-Architecture
> *The architecture that outlives companies - 60+ years backward compatibility*

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

**Key Difference:** IBM-z-Architecture approaches computing with a cisc philosophy, while RISC-V takes a risc approach. 

---

## Register Architecture

### IBM-z-Architecture
16 × 64-bit GPRs, 16 × 64-bit FPRs, 32 × 128-bit vector

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-z-Architecture
Hardware transactional memory, cryptographic instructions, RAS as architecture, LPARs

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

---

## Historical Lineage

### IBM-z-Architecture
System/360 → System/370 → ESA/390 → z/Architecture

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

---

## Primary Use Cases

### IBM-z-Architecture
Banking, finance, insurance, government, critical enterprise

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

---

## Strengths & Weaknesses

### IBM-z-Architecture
- **Strengths:** Unmatched reliability, compatibility, security, I/O throughput
- **Weaknesses:** Extremely expensive, proprietary, niche market, complex

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

---

## When to Choose Which

**Choose IBM-z-Architecture when:** backward compatibility with massive existing software bases is critical

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

IBM-z-Architecture and RISC-V represent different points in the spectrum of processor design. The 32/64/128-bit RISC-V and 64-bit IBM-z-Architecture serve different scale requirements. RISC-V excels in constrained environments where every transistor counts, while IBM-z-Architecture provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
