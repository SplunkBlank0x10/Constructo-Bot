# IBM-System-360-370 vs RISC-V

## Overview

This document compares **IBM-System-360-370** and **RISC-V**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | RISC-V |
|-----------|----------|----------|
| **Bits** | 32 | 32/64/128 |
| **Type** | CISC | RISC |
| **Year** | 1964 | 2010 |
| **Creator** | IBM | UC Berkeley |
| **Endianness** | Big (EBCDIC) | Little (default), bi-endian optional |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while RISC-V takes a risc approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

IBM-System-360-370 and RISC-V represent different points in the spectrum of processor design. Separated by 46 years, these architectures reflect the evolution from IBM's 1964 approach to UC Berkeley's 2010 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
