# ARM-Thumb vs WebAssembly-WAT

## Overview

This document compares **ARM-Thumb** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM-Thumb | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 16/32 | 32/64 |
| **Type** | RISC (compressed) | Stack-based Virtual ISA |
| **Year** | 1994 | 2017 |
| **Creator** | ARM Ltd. | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Bi-endian | Little (linear memory) |

---

## Design Philosophy

### ARM-Thumb
> *Code density matters - RISC performance with smaller code*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** ARM-Thumb approaches computing with a risc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### ARM-Thumb
8 visible (subset of ARM's 16)

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** ARM-Thumb offers many registers (many-style architecture), while WebAssembly-WAT provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### ARM-Thumb
16-bit fixed instructions, interworking with ARM32, ~30-40% size reduction

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### ARM-Thumb
ARM → Thumb (ARM7TDMI) → Thumb-2 (16/32 mix)

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### ARM-Thumb
Microcontrollers, memory-constrained embedded, low-cost mobile

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### ARM-Thumb
- **Strengths:** Code density, power efficiency, compatibility with ARM32
- **Weaknesses:** Higher instruction count, more complex interworking

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose ARM-Thumb when:** power efficiency is paramount, especially for Microcontrollers

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

ARM-Thumb and WebAssembly-WAT represent different points in the spectrum of processor design. Separated by 23 years, these architectures reflect the evolution from ARM Ltd.'s 1994 approach to W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple)'s 2017 vision. ARM-Thumb carries the constraints and wisdom of its era, while ARM-Thumb addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
