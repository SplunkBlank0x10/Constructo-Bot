# ARM vs DEC-VAX

## Overview

This document compares **ARM** and **DEC-VAX**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM | DEC-VAX |
|-----------|----------|----------|
| **Bits** | 32 | 32 |
| **Type** | RISC | CISC |
| **Year** | 1985 | 1977 |
| **Creator** | Acorn Computers | Digital Equipment Corporation (DEC) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### ARM
> *Elegance through simplicity, power efficiency, every instruction conditional*

### DEC-VAX
> *Make the hardware do everything - microcoded, comprehensive, expressive*

**Key Difference:** ARM approaches computing with a risc philosophy, while DEC-VAX takes a cisc approach. 

---

## Register Architecture

### ARM
16 (R15=PC), condition codes on all instructions

### DEC-VAX
16 × 32-bit, plus PC, SP, AP, FP

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### ARM
Barrel shifter, LDM/STM block moves, Thumb mode, dominant mobile ISA

### DEC-VAX
Variable-length up to 56 bytes, 22 addressing modes, POLY instruction, queue ops, CALLS/CALLG

---

## Historical Lineage

### ARM
Acorn RISC Machine → ARM Holdings → ARMv7

### DEC-VAX
PDP-11 → VAX → Alpha (clean break)

---

## Primary Use Cases

### ARM
Mobile, embedded, microcontrollers (Cortex-M)

### DEC-VAX
Minicomputers, VMS, scientific computing, enterprise

---

## Strengths & Weaknesses

### ARM
- **Strengths:** Power efficiency, code density with Thumb, massive ecosystem
- **Weaknesses:** 32-bit limitation, complex history of modes and extensions

### DEC-VAX
- **Strengths:** Most orthogonal CISC ever, rich instruction set, great for compilers
- **Weaknesses:** Complex microcode, hard to make fast, DEC's demise

---

## When to Choose Which

**Choose ARM when:** power efficiency is paramount, especially for Mobile

**Choose DEC-VAX when:** your application fits its domain (Minicomputers) and you value its specific strengths

---

## Summary

ARM and DEC-VAX represent different points in the spectrum of processor design. The RISC philosophy of ARM and the CISC approach of DEC-VAX represent fundamentally different tradeoffs between hardware complexity and software simplicity. Neither is universally superior—the right choice depends on the specific constraints of power, cost, performance, and legacy requirements.

---

*Generated for the Assembly Hello World Collection*
