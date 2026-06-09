# AArch64 vs ARM

## Overview

This document compares **AArch64** and **ARM**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

|Attribute|AArch64|ARM|
|-|-|-|
|**Bits**|64|32|
|**Type**|RISC|RISC|
|**Year**|2011|1985|
|**Creator**|ARM Ltd.|Acorn Computers|
|**Endianness**|Bi-endian (mostly little in practice)|Bi-endian|

\---

## Design Philosophy

### AArch64

> \*Clean break from 32-bit ARM, learn from 30 years of experience\*

### ARM

> \*Elegance through simplicity, power efficiency, every instruction conditional\*

**Key Difference:** AArch64 approaches computing with a risc philosophy, while ARM takes a risc approach.

\---

## Register Architecture

### AArch64

31 GPRs + zero register, dedicated SP/PC

### ARM

16 (R15=PC), condition codes on all instructions

**Comparison:** AArch64 offers few registers (few-style architecture), while ARM provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

\---

## Notable Features

### AArch64

No predication (mostly), SVE scalable vectors, 4 exception levels

### ARM

Barrel shifter, LDM/STM block moves, Thumb mode, dominant mobile ISA

\---

## Historical Lineage

### AArch64

ARM → ARMv7 → ARMv8-A (AArch64)

### ARM

Acorn RISC Machine → ARM Holdings → ARMv7

\---

## Primary Use Cases

### AArch64

Smartphones, servers, Apple Silicon, embedded

### ARM

Mobile, embedded, microcontrollers (Cortex-M)

\---

## Strengths \& Weaknesses

### AArch64

* **Strengths:** Power efficiency, clean 64-bit design, massive ecosystem
* **Weaknesses:** Complex history, some legacy baggage from ARM32

### ARM

* **Strengths:** Power efficiency, code density with Thumb, massive ecosystem
* **Weaknesses:** 32-bit limitation, complex history of modes and extensions

\---

## When to Choose Which

**Choose AArch64 when:** your application fits its domain (Smartphones) and you value its specific strengths

**Choose ARM when:** your application fits its domain (Mobile) and you value its specific strengths

\---

## Summary

AArch64 and ARM represent different points in the spectrum of processor design. Separated by 26 years, these architectures reflect the evolution from Acorn Computers's 1985 approach to ARM Ltd.'s 2011 vision. ARM carries the constraints and wisdom of its era, while ARM addresses modern challenges—yet both remain valid for their intended domains.

\---

*Generated for the Assembly Hello World Collection*

