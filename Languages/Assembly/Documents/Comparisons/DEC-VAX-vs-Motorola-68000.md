# DEC-VAX vs Motorola-68000

## Overview

This document compares **DEC-VAX** and **Motorola-68000**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-VAX | Motorola-68000 |
|-----------|----------|----------|
| **Bits** | 32 | 32/16 |
| **Type** | CISC | CISC |
| **Year** | 1977 | 1979 |
| **Creator** | Digital Equipment Corporation (DEC) | Motorola |
| **Endianness** | Little | Big |

---

## Design Philosophy

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

### Motorola-68000
> *Orthogonal elegance - any instruction × any mode × any register, intuitive assembly*

**Key Difference:** DEC-VAX approaches computing with a cisc philosophy, while Motorola-68000 takes a cisc approach. 

---

## Register Architecture

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

### Motorola-68000
8 × 32-bit data (D0-D7) + 8 × 32-bit address (A0-A7)

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

### Motorola-68000
24-bit external address, 16-bit external data, no segmentation, rich addressing modes

---

## Historical Lineage

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

### Motorola-68000
6800 → 68000 → 68020/30/40 → ColdFire (embedded subset)

---

## Primary Use Cases

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

### Motorola-68000
Apple Macintosh, Amiga, Atari ST, Sega Genesis, workstations, embedded

---

## Strengths & Weaknesses

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

### Motorola-68000
- **Strengths:** Beautifully orthogonal, easy to program, flat memory, fast for era
- **Weaknesses:** Complex microcode, high pin count, eventually lost to x86 in market

---

## When to Choose Which

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose Motorola-68000 when:** maximum single-thread performance is critical (Apple Macintosh)

---

## Summary

DEC-VAX and Motorola-68000 represent different points in the spectrum of processor design. The 32-bit DEC-VAX and 32/16-bit Motorola-68000 serve different scale requirements. DEC-VAX excels in constrained environments where every transistor counts, while Motorola-68000 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
