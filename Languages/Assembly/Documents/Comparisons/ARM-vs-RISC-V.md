# ARM vs RISC-V

## Overview

This document compares **ARM** and **RISC-V**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM | RISC-V |
|-----------|----------|----------|
| **Bits** | 32 | 32/64/128 |
| **Type** | RISC | RISC |
| **Year** | 1985 | 2010 |
| **Creator** | Acorn Computers | UC Berkeley |
| **Endianness** | Bi-endian | Little (default), bi-endian optional |

---

## Design Philosophy

### ARM
> *Elegance through simplicity, power efficiency, every instruction conditional*

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

**Key Difference:** ARM approaches computing with a risc philosophy, while RISC-V takes a risc approach. 

---

## Register Architecture

### ARM
16 (R15=PC), condition codes on all instructions

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### ARM
Barrel shifter, LDM/STM block moves, Thumb mode, dominant mobile ISA

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

---

## Historical Lineage

### ARM
Acorn RISC Machine → ARM Holdings → ARMv7

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

---

## Primary Use Cases

### ARM
Mobile, embedded, microcontrollers (Cortex-M)

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

---

## Strengths & Weaknesses

### ARM
- **Strengths:** Power efficiency, code density with Thumb, massive ecosystem
- **Weaknesses:** 32-bit limitation, complex history of modes and extensions

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

---

## When to Choose Which

**Choose ARM when:** power efficiency is paramount, especially for Mobile

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

---

## Summary

ARM and RISC-V represent different points in the spectrum of processor design. Separated by 25 years, these architectures reflect the evolution from Acorn Computers's 1985 approach to UC Berkeley's 2010 vision. ARM carries the constraints and wisdom of its era, while ARM addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
