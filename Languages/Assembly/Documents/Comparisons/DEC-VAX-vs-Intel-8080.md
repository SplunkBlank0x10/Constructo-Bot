# DEC-VAX vs Intel-8080

## Overview

This document compares **DEC-VAX** and **Intel-8080**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-VAX | Intel-8080 |
|-----------|----------|----------|
| **Bits** | 32 | 8 |
| **Type** | CISC | CISC |
| **Year** | 1977 | 1974 |
| **Creator** | Digital Equipment Corporation (DEC) | Intel |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

### Intel-8080
> *The microprocessor as a computer - general purpose, external memory*

**Key Difference:** DEC-VAX approaches computing with a cisc philosophy, while Intel-8080 takes a cisc approach. 

---

## Register Architecture

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

### Intel-8080
7 × 8-bit (A,B,C,D,E,H,L), pairs as 16-bit (BC,DE,HL)

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

### Intel-8080
64KB space, 3 power supplies, 5 interrupts, CP/M era, Altair/IMSAI

---

## Historical Lineage

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

### Intel-8080
8008 → 8080 → 8085 → 8086 (not binary compatible but design lineage)

---

## Primary Use Cases

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

### Intel-8080
Early personal computers, CP/M systems, embedded, industrial

---

## Strengths & Weaknesses

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

### Intel-8080
- **Strengths:** First widely successful general-purpose CPU, established 8-bit paradigm
- **Weaknesses:** Limited registers, complex support chips, multiple power supplies

---

## When to Choose Which

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose Intel-8080 when:** your application fits its domain (Early personal computers) and you value its specific strengths

---

## Summary

DEC-VAX and Intel-8080 represent different points in the spectrum of processor design. The 8-bit Intel-8080 and 32-bit DEC-VAX serve different scale requirements. Intel-8080 excels in constrained environments where every transistor counts, while DEC-VAX provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
