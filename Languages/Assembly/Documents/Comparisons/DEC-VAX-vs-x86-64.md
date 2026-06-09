# DEC-VAX vs x86-64

## Overview

This document compares **DEC-VAX** and **x86-64**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-VAX | x86-64 |
|-----------|----------|----------|
| **Bits** | 32 | 64 |
| **Type** | CISC | CISC |
| **Year** | 1977 | 2003 |
| **Creator** | Digital Equipment Corporation (DEC) | AMD (later adopted by Intel) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

### x86-64
> *Pragmatic evolution - keep x86 viable, add modern conveniences, don't break software*

**Key Difference:** DEC-VAX approaches computing with a cisc philosophy, while x86-64 takes a cisc approach. 

---

## Register Architecture

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

### x86-64
16 × 64-bit (RAX-R15), RIP-relative addressing

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

### x86-64
Long mode, legacy mode, NX bit, more registers, larger address space, same encoding burden

---

## Historical Lineage

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

### x86-64
x86 → AMD64 (2003) → Intel 64 (2004) → dominant 64-bit ISA

---

## Primary Use Cases

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

### x86-64
Dominant server, desktop, laptop, gaming, HPC, cloud

---

## Strengths & Weaknesses

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

### x86-64
- **Strengths:** Compatibility + progress, massive ecosystem, performance, software investment
- **Weaknesses:** Inherited x86 complexity, power consumption, security attack surface

---

## When to Choose Which

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose x86-64 when:** backward compatibility with massive existing software bases is critical

---

## Summary

DEC-VAX and x86-64 represent different points in the spectrum of processor design. Separated by 26 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1977 approach to AMD (later adopted by Intel)'s 2003 vision. DEC-VAX carries the constraints and wisdom of its era, while DEC-VAX addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
