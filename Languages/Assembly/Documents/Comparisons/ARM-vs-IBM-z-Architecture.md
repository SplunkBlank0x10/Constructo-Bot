# ARM vs IBM-z-Architecture

## Overview

This document compares **ARM** and **IBM-z-Architecture**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM | IBM-z-Architecture |
|-----------|----------|----------|
| **Bits** | 32 | 64 |
| **Type** | RISC | CISC |
| **Year** | 1985 | 2000 |
| **Creator** | Acorn Computers | IBM |
| **Endianness** | Bi-endian | Big |

---

## Design Philosophy

### ARM
> *Elegance through simplicity, power efficiency, every instruction conditional*

### IBM-z-Architecture
> *The architecture that outlives companies - 60+ years backward compatibility*

**Key Difference:** ARM approaches computing with a risc philosophy, while IBM-z-Architecture takes a cisc approach. 

---

## Register Architecture

### ARM
16 (R15=PC), condition codes on all instructions

### IBM-z-Architecture
16 × 64-bit GPRs, 16 × 64-bit FPRs, 32 × 128-bit vector

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### ARM
Barrel shifter, LDM/STM block moves, Thumb mode, dominant mobile ISA

### IBM-z-Architecture
Hardware transactional memory, cryptographic instructions, RAS as architecture, LPARs

---

## Historical Lineage

### ARM
Acorn RISC Machine → ARM Holdings → ARMv7

### IBM-z-Architecture
System/360 → System/370 → ESA/390 → z/Architecture

---

## Primary Use Cases

### ARM
Mobile, embedded, microcontrollers (Cortex-M)

### IBM-z-Architecture
Banking, finance, insurance, government, critical enterprise

---

## Strengths & Weaknesses

### ARM
- **Strengths:** Power efficiency, code density with Thumb, massive ecosystem
- **Weaknesses:** 32-bit limitation, complex history of modes and extensions

### IBM-z-Architecture
- **Strengths:** Unmatched reliability, compatibility, security, I/O throughput
- **Weaknesses:** Extremely expensive, proprietary, niche market, complex

---

## When to Choose Which

**Choose ARM when:** power efficiency is paramount, especially for Mobile

**Choose IBM-z-Architecture when:** backward compatibility with massive existing software bases is critical

---

## Summary

ARM and IBM-z-Architecture represent different points in the spectrum of processor design. The 32-bit ARM and 64-bit IBM-z-Architecture serve different scale requirements. ARM excels in constrained environments where every transistor counts, while IBM-z-Architecture provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
