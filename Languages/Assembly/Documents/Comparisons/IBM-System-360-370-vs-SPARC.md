# IBM-System-360-370 vs SPARC

## Overview

This document compares **IBM-System-360-370** and **SPARC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | SPARC |
|-----------|----------|----------|
| **Bits** | 32 | 32 |
| **Type** | CISC | RISC |
| **Year** | 1964 | 1985 |
| **Creator** | IBM | Sun Microsystems (David Patterson et al.) |
| **Endianness** | Big (EBCDIC) | Big |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### SPARC
> *Windows on the world - register windows eliminate save/restore on calls*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while SPARC takes a risc approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### SPARC
32 visible (8 global, 8 in, 8 local, 8 out), windows overlap caller/callee

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### SPARC
Register windows, SAVE/RESTORE instructions, tagged arithmetic, open licensing

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### SPARC
Berkeley RISC I/II → SPARC (1985) → SPARC V8 → SPARCv9 (64-bit)

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### SPARC
Sun workstations/servers, Fujitsu supercomputers, embedded (LEON), education

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### SPARC
- **Strengths:** Fast procedure calls, elegant window mechanism, open specification
- **Weaknesses:** Window overflow complexity, big-endian default, Sun's demise, niche now

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose SPARC when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

IBM-System-360-370 and SPARC represent different points in the spectrum of processor design. Separated by 21 years, these architectures reflect the evolution from IBM's 1964 approach to Sun Microsystems (David Patterson et al.)'s 1985 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
