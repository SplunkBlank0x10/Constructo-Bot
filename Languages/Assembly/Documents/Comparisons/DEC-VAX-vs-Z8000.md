# DEC-VAX vs Z8000

## Overview

This document compares **DEC-VAX** and **Z8000**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-VAX | Z8000 |
|-----------|----------|----------|
| **Bits** | 32 | 16 |
| **Type** | CISC | CISC |
| **Year** | 1977 | 1979 |
| **Creator** | Digital Equipment Corporation (DEC) | Zilog |
| **Endianness** | Little | Big |

---

## Design Philosophy

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

### Z8000
> *16-bit done right - more regular than 8086, flexible segmented or flat*

**Key Difference:** DEC-VAX approaches computing with a cisc philosophy, while Z8000 takes a cisc approach. 

---

## Register Architecture

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

### Z8000
16 × 16-bit (pairable to 32-bit), two stack pointers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

### Z8000
Segmented (Z8001) or non-segmented (Z8002), string instructions, 23-bit addressing

---

## Historical Lineage

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

### Z8000
Z80 → Z8000 (16-bit) → Z80000 (32-bit, rare) → discontinued

---

## Primary Use Cases

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

### Z8000
Industrial control, military, some Unix workstations, embedded

---

## Strengths & Weaknesses

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

### Z8000
- **Strengths:** Clean design, orthogonal, flexible addressing, good for systems programming
- **Weaknesses:** Late to market, no software ecosystem, x86 won, discontinued

---

## When to Choose Which

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose Z8000 when:** your application fits its domain (Industrial control) and you value its specific strengths

---

## Summary

DEC-VAX and Z8000 represent different points in the spectrum of processor design. The 16-bit Z8000 and 32-bit DEC-VAX serve different scale requirements. Z8000 excels in constrained environments where every transistor counts, while DEC-VAX provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
