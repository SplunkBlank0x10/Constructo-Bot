# IBM-System-360-370 vs Itanium-IA64

## Overview

This document compares **IBM-System-360-370** and **Itanium-IA64**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | Itanium-IA64 |
|-----------|----------|----------|
| **Bits** | 32 | 64 |
| **Type** | CISC | EPIC (Explicitly Parallel Instruction Computing) |
| **Year** | 1964 | 2001 |
| **Creator** | IBM | Intel & Hewlett-Packard |
| **Endianness** | Big (EBCDIC) | Both (selected per page) |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### Itanium-IA64
> *Explicit parallelism - compiler schedules, hardware just executes*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while Itanium-IA64 takes a epic approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### Itanium-IA64
128 × 64-bit GPRs, 128 × 82-bit FPRs, 64 × 1-bit predicates, 8 branch

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### Itanium-IA64
Bundles of 3 instructions + template, predication, rotating registers, no OoO hardware

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### Itanium-IA64
HP PA-RISC + Intel ambition → Itanium → discontinued 2021

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### Itanium-IA64
High-end servers, enterprise computing, HP-UX, some HPC

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### Itanium-IA64
- **Strengths:** Theoretical scalability, clean 64-bit, no legacy baggage
- **Weaknesses:** Compiler complexity, no OoO safety net, x86-64 won market, discontinued

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose Itanium-IA64 when:** your application fits its domain (High-end servers) and you value its specific strengths

---

## Summary

IBM-System-360-370 and Itanium-IA64 represent different points in the spectrum of processor design. Separated by 37 years, these architectures reflect the evolution from IBM's 1964 approach to Intel & Hewlett-Packard's 2001 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
