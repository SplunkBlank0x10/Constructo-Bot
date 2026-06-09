# ARM vs DEC-Alpha

## Overview

This document compares **ARM** and **DEC-Alpha**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM | DEC-Alpha |
|-----------|----------|----------|
| **Bits** | 32 | 64 |
| **Type** | RISC | RISC |
| **Year** | 1985 | 1992 |
| **Creator** | Acorn Computers | Digital Equipment Corporation (DEC) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### ARM
> *Elegance through simplicity, power efficiency, every instruction conditional*

### DEC-Alpha
> *64 bits, no compromises - pure 64-bit from scratch, no legacy*

**Key Difference:** ARM approaches computing with a risc philosophy, while DEC-Alpha takes a risc approach. 

---

## Register Architecture

### ARM
16 (R15=PC), condition codes on all instructions

### DEC-Alpha
32 integer + 32 FP (R31/F31 hardwired to zero)

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### ARM
Barrel shifter, LDM/STM block moves, Thumb mode, dominant mobile ISA

### DEC-Alpha
No condition codes, no byte/halfword loads originally, designed for extreme clock speeds

---

## Historical Lineage

### ARM
Acorn RISC Machine → ARM Holdings → ARMv7

### DEC-Alpha
Clean sheet design, influenced by MIPS experience

---

## Primary Use Cases

### ARM
Mobile, embedded, microcontrollers (Cortex-M)

### DEC-Alpha
High-end workstations, servers, scientific computing (Cray-like)

---

## Strengths & Weaknesses

### ARM
- **Strengths:** Power efficiency, code density with Thumb, massive ecosystem
- **Weaknesses:** 32-bit limitation, complex history of modes and extensions

### DEC-Alpha
- **Strengths:** Blazing fast for its era, clean design, excellent 64-bit implementation
- **Weaknesses:** DEC's demise, no 32-bit mode, compiler complexity

---

## When to Choose Which

**Choose ARM when:** power efficiency is paramount, especially for Mobile

**Choose DEC-Alpha when:** maximum single-thread performance is critical (High-end workstations)

---

## Summary

ARM and DEC-Alpha represent different points in the spectrum of processor design. The 32-bit ARM and 64-bit DEC-Alpha serve different scale requirements. ARM excels in constrained environments where every transistor counts, while DEC-Alpha provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
