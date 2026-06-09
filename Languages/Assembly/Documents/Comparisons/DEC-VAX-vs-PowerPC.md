# DEC-VAX vs PowerPC

## Overview

This document compares **DEC-VAX** and **PowerPC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-VAX | PowerPC |
|-----------|----------|----------|
| **Bits** | 32 | 32/64 |
| **Type** | CISC | RISC |
| **Year** | 1977 | 1991 |
| **Creator** | Digital Equipment Corporation (DEC) | AIM Alliance (Apple, IBM, Motorola) |
| **Endianness** | Little | Big (default), supports little |

---

## Design Philosophy

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

### PowerPC
> *Performance through compiler optimization - 32 GPRs, powerful branches, CR fields*

**Key Difference:** DEC-VAX approaches computing with a cisc philosophy, while PowerPC takes a risc approach. 

---

## Register Architecture

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

### PowerPC
32 × 32/64-bit GPRs, 32 × 64-bit FPRs, 8-field CR, LR, CTR

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

### PowerPC
8-field condition register, branch hints, AltiVec SIMD, Book E for embedded

---

## Historical Lineage

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

### PowerPC
IBM POWER + Motorola 88000 → AIM PowerPC → PowerPC e500/e600 → QorIQ

---

## Primary Use Cases

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

### PowerPC
Apple Mac (1994-2006), IBM RS/6000, embedded, automotive, gaming (Xbox 360, PS3, Wii)

---

## Strengths & Weaknesses

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

### PowerPC
- **Strengths:** Clean design, good compiler target, AltiVec performance, embedded variants
- **Weaknesses:** Lost desktop to x86, fragmented ecosystem, AIM alliance dissolved

---

## When to Choose Which

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose PowerPC when:** your application fits its domain (Apple Mac (1994-2006)) and you value its specific strengths

---

## Summary

DEC-VAX and PowerPC represent different points in the spectrum of processor design. The 32-bit DEC-VAX and 32/64-bit PowerPC serve different scale requirements. DEC-VAX excels in constrained environments where every transistor counts, while PowerPC provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
