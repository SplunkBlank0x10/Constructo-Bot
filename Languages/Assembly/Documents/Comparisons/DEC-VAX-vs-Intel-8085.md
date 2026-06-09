# DEC-VAX vs Intel-8085

## Overview

This document compares **DEC-VAX** and **Intel-8085**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-VAX | Intel-8085 |
|-----------|----------|----------|
| **Bits** | 32 | 8 |
| **Type** | CISC | CISC |
| **Year** | 1977 | 1976 |
| **Creator** | Digital Equipment Corporation (DEC) | Intel |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

### Intel-8085
> *Simplify the system - integrate clock, single 5V supply*

**Key Difference:** DEC-VAX approaches computing with a cisc philosophy, while Intel-8085 takes a cisc approach. 

---

## Register Architecture

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

### Intel-8085
Same as 8080 (A,B,C,D,E,H,L)

**Comparison:** DEC-VAX offers many registers (many-style architecture), while Intel-8085 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

### Intel-8085
Integrated clock generator, SID/SOD serial lines, 5 interrupts, 8080 compatible

---

## Historical Lineage

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

### Intel-8085
8080 → 8085 (enhanced)

---

## Primary Use Cases

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

### Intel-8085
Embedded systems, industrial controllers, educational kits, early portables

---

## Strengths & Weaknesses

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

### Intel-8085
- **Strengths:** Simpler system design, lower power, 8080 compatible, integrated features
- **Weaknesses:** Still 8-bit, limited vs 16-bit emerging, soon overshadowed

---

## When to Choose Which

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose Intel-8085 when:** power efficiency is paramount, especially for Embedded systems

---

## Summary

DEC-VAX and Intel-8085 represent different points in the spectrum of processor design. The 8-bit Intel-8085 and 32-bit DEC-VAX serve different scale requirements. Intel-8085 excels in constrained environments where every transistor counts, while DEC-VAX provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
