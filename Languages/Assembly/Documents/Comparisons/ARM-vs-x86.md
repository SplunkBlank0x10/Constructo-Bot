# ARM vs x86

## Overview

This document compares **ARM** and **x86**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM | x86 |
|-----------|----------|----------|
| **Bits** | 32 | 32 |
| **Type** | RISC | CISC |
| **Year** | 1985 | 1985 |
| **Creator** | Acorn Computers | Intel |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### ARM
> *Elegance through simplicity, power efficiency, every instruction conditional*

### x86
> *Software longevity through hardware complexity - cruft carries forward*

**Key Difference:** ARM approaches computing with a risc philosophy, while x86 takes a cisc approach. 

---

## Register Architecture

### ARM
16 (R15=PC), condition codes on all instructions

### x86
8 × 32-bit (EAX-EDX, ESI, EDI, EBP, ESP)

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### ARM
Barrel shifter, LDM/STM block moves, Thumb mode, dominant mobile ISA

### x86
Variable-length 1-15 bytes, segmentation, real/protected modes, x87/SSE

---

## Historical Lineage

### ARM
Acorn RISC Machine → ARM Holdings → ARMv7

### x86
8086 → 80286 → 80386 → Pentium → Core → x86-64

---

## Primary Use Cases

### ARM
Mobile, embedded, microcontrollers (Cortex-M)

### x86
PCs, servers, laptops, dominant general-purpose computing 1985-2000s

---

## Strengths & Weaknesses

### ARM
- **Strengths:** Power efficiency, code density with Thumb, massive ecosystem
- **Weaknesses:** 32-bit limitation, complex history of modes and extensions

### x86
- **Strengths:** Massive software base, backward compatibility, performance, ecosystem
- **Weaknesses:** Complex decode, legacy baggage, power hungry, security issues from complexity

---

## When to Choose Which

**Choose ARM when:** power efficiency is paramount, especially for Mobile

**Choose x86 when:** backward compatibility with massive existing software bases is critical

---

## Summary

ARM and x86 represent different points in the spectrum of processor design. The RISC philosophy of ARM and the CISC approach of x86 represent fundamentally different tradeoffs between hardware complexity and software simplicity. Neither is universally superior—the right choice depends on the specific constraints of power, cost, performance, and legacy requirements.

---

*Generated for the Assembly Hello World Collection*
