# MIPS vs RISC-V

## Overview

This document compares **MIPS** and **RISC-V**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS | RISC-V |
|-----------|----------|----------|
| **Bits** | 32 | 32/64/128 |
| **Type** | RISC | RISC |
| **Year** | 1981 | 2010 |
| **Creator** | Stanford University (MIPS Computer Systems) | UC Berkeley |
| **Endianness** | Bi-endian | Little (default), bi-endian optional |

---

## Design Philosophy

### MIPS
> *Keep pipeline simple, let compiler schedule - no hardware interlocks*

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

**Key Difference:** MIPS approaches computing with a risc philosophy, while RISC-V takes a risc approach. 

---

## Register Architecture

### MIPS
32 × 32-bit ($0 hardwired to zero), HI/LO for multiply

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### MIPS
Branch delay slots, load/store architecture, coprocessor interface, academic clean design

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

---

## Historical Lineage

### MIPS
Stanford research → MIPS I → MIPS II → MIPS III (64-bit) → MIPS32/64

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

---

## Primary Use Cases

### MIPS
Workstations (SGI), embedded, gaming (PS1, PS2, N64), education

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

---

## Strengths & Weaknesses

### MIPS
- **Strengths:** Clean design, easy to teach, good compiler target, proven performance
- **Weaknesses:** Branch delay slots are burden, licensing issues, overshadowed by ARM/RISC-V

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

---

## When to Choose Which

**Choose MIPS when:** your application fits its domain (Workstations (SGI)) and you value its specific strengths

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

MIPS and RISC-V represent different points in the spectrum of processor design. Separated by 29 years, these architectures reflect the evolution from Stanford University (MIPS Computer Systems)'s 1981 approach to UC Berkeley's 2010 vision. MIPS carries the constraints and wisdom of its era, while MIPS addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
