# ARM vs PA-RISC

## Overview

This document compares **ARM** and **PA-RISC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM | PA-RISC |
|-----------|----------|----------|
| **Bits** | 32 | 32/64 |
| **Type** | RISC | RISC |
| **Year** | 1985 | 1986 |
| **Creator** | Acorn Computers | Hewlett-Packard |
| **Endianness** | Bi-endian | Big |

---

## Design Philosophy

### ARM
> *Elegance through simplicity, power efficiency, every instruction conditional*

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

**Key Difference:** ARM approaches computing with a risc philosophy, while PA-RISC takes a risc approach. 

---

## Register Architecture

### ARM
16 (R15=PC), condition codes on all instructions

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### ARM
Barrel shifter, LDM/STM block moves, Thumb mode, dominant mobile ISA

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

---

## Historical Lineage

### ARM
Acorn RISC Machine → ARM Holdings → ARMv7

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

---

## Primary Use Cases

### ARM
Mobile, embedded, microcontrollers (Cortex-M)

### PA-RISC
HP workstations, HP 9000 servers, some embedded

---

## Strengths & Weaknesses

### ARM
- **Strengths:** Power efficiency, code density with Thumb, massive ecosystem
- **Weaknesses:** 32-bit limitation, complex history of modes and extensions

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

---

## When to Choose Which

**Choose ARM when:** power efficiency is paramount, especially for Mobile

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

---

## Summary

ARM and PA-RISC represent different points in the spectrum of processor design. The 32-bit ARM and 32/64-bit PA-RISC serve different scale requirements. ARM excels in constrained environments where every transistor counts, while PA-RISC provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
