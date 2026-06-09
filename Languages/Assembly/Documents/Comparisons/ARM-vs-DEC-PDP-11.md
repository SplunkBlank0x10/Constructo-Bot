# ARM vs DEC-PDP-11

## Overview

This document compares **ARM** and **DEC-PDP-11**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM | DEC-PDP-11 |
|-----------|----------|----------|
| **Bits** | 32 | 16 |
| **Type** | RISC | CISC |
| **Year** | 1985 | 1970 |
| **Creator** | Acorn Computers | Digital Equipment Corporation (DEC) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### ARM
> *Elegance through simplicity, power efficiency, every instruction conditional*

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

**Key Difference:** ARM approaches computing with a risc philosophy, while DEC-PDP-11 takes a cisc approach. 

---

## Register Architecture

### ARM
16 (R15=PC), condition codes on all instructions

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

**Comparison:** ARM offers many registers (many-style architecture), while DEC-PDP-11 provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### ARM
Barrel shifter, LDM/STM block moves, Thumb mode, dominant mobile ISA

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

---

## Historical Lineage

### ARM
Acorn RISC Machine → ARM Holdings → ARMv7

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

---

## Primary Use Cases

### ARM
Mobile, embedded, microcontrollers (Cortex-M)

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

---

## Strengths & Weaknesses

### ARM
- **Strengths:** Power efficiency, code density with Thumb, massive ecosystem
- **Weaknesses:** 32-bit limitation, complex history of modes and extensions

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

---

## When to Choose Which

**Choose ARM when:** power efficiency is paramount, especially for Mobile

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

---

## Summary

ARM and DEC-PDP-11 represent different points in the spectrum of processor design. The 16-bit DEC-PDP-11 and 32-bit ARM serve different scale requirements. DEC-PDP-11 excels in constrained environments where every transistor counts, while ARM provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
