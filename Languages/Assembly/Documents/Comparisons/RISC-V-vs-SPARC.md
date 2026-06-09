# RISC-V vs SPARC

## Overview

This document compares **RISC-V** and **SPARC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | RISC-V | SPARC |
|-----------|----------|----------|
| **Bits** | 32/64/128 | 32 |
| **Type** | RISC | RISC |
| **Year** | 2010 | 1985 |
| **Creator** | UC Berkeley | Sun Microsystems (David Patterson et al.) |
| **Endianness** | Little (default), bi-endian optional | Big |

---

## Design Philosophy

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

### SPARC
> *Windows on the world - register windows eliminate save/restore on calls*

**Key Difference:** RISC-V approaches computing with a risc philosophy, while SPARC takes a risc approach. 

---

## Register Architecture

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

### SPARC
32 visible (8 global, 8 in, 8 local, 8 out), windows overlap caller/callee

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

### SPARC
Register windows, SAVE/RESTORE instructions, tagged arithmetic, open licensing

---

## Historical Lineage

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

### SPARC
Berkeley RISC I/II → SPARC (1985) → SPARC V8 → SPARCv9 (64-bit)

---

## Primary Use Cases

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

### SPARC
Sun workstations/servers, Fujitsu supercomputers, embedded (LEON), education

---

## Strengths & Weaknesses

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

### SPARC
- **Strengths:** Fast procedure calls, elegant window mechanism, open specification
- **Weaknesses:** Window overflow complexity, big-endian default, Sun's demise, niche now

---

## When to Choose Which

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

**Choose SPARC when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

RISC-V and SPARC represent different points in the spectrum of processor design. Separated by 25 years, these architectures reflect the evolution from Sun Microsystems (David Patterson et al.)'s 1985 approach to UC Berkeley's 2010 vision. SPARC carries the constraints and wisdom of its era, while SPARC addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
