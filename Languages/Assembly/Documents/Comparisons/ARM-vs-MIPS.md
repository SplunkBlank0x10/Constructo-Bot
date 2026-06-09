# ARM vs MIPS

## Overview

This document compares **ARM** and **MIPS**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM | MIPS |
|-----------|----------|----------|
| **Bits** | 32 | 32 |
| **Type** | RISC | RISC |
| **Year** | 1985 | 1981 |
| **Creator** | Acorn Computers | Stanford University (MIPS Computer Systems) |
| **Endianness** | Bi-endian | Bi-endian |

---

## Design Philosophy

### ARM
> *Elegance through simplicity, power efficiency, every instruction conditional*

### MIPS
> *Keep pipeline simple, let compiler schedule - no hardware interlocks*

**Key Difference:** ARM approaches computing with a risc philosophy, while MIPS takes a risc approach. 

---

## Register Architecture

### ARM
16 (R15=PC), condition codes on all instructions

### MIPS
32 × 32-bit ($0 hardwired to zero), HI/LO for multiply

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### ARM
Barrel shifter, LDM/STM block moves, Thumb mode, dominant mobile ISA

### MIPS
Branch delay slots, load/store architecture, coprocessor interface, academic clean design

---

## Historical Lineage

### ARM
Acorn RISC Machine → ARM Holdings → ARMv7

### MIPS
Stanford research → MIPS I → MIPS II → MIPS III (64-bit) → MIPS32/64

---

## Primary Use Cases

### ARM
Mobile, embedded, microcontrollers (Cortex-M)

### MIPS
Workstations (SGI), embedded, gaming (PS1, PS2, N64), education

---

## Strengths & Weaknesses

### ARM
- **Strengths:** Power efficiency, code density with Thumb, massive ecosystem
- **Weaknesses:** 32-bit limitation, complex history of modes and extensions

### MIPS
- **Strengths:** Clean design, easy to teach, good compiler target, proven performance
- **Weaknesses:** Branch delay slots are burden, licensing issues, overshadowed by ARM/RISC-V

---

## When to Choose Which

**Choose ARM when:** power efficiency is paramount, especially for Mobile

**Choose MIPS when:** your application fits its domain (Workstations (SGI)) and you value its specific strengths

---

## Summary

ARM and MIPS represent different points in the spectrum of processor design. Both ARM and MIPS share the RISC design philosophy, yet diverge significantly in implementation details, ecosystem maturity, and target applications. The choice between them often comes down to existing codebases, available tools, and specific performance requirements rather than fundamental architectural superiority.

---

*Generated for the Assembly Hello World Collection*
