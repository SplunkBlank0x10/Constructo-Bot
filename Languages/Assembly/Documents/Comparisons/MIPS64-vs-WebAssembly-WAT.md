# MIPS64 vs WebAssembly-WAT

## Overview

This document compares **MIPS64** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MIPS64 | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 64 | 32/64 |
| **Type** | RISC | Stack-based Virtual ISA |
| **Year** | 1995 | 2017 |
| **Creator** | MIPS Technologies / Silicon Graphics | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Bi-endian | Little (linear memory) |

---

## Design Philosophy

### MIPS64
> *Extend, don't redesign - same principles, larger scale*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** MIPS64 approaches computing with a risc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### MIPS64
32 × 64-bit, same HI/LO, same delay slots

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** MIPS64 offers many registers (many-style architecture), while WebAssembly-WAT provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MIPS64
Backward compatible with MIPS32, N64 ABI, same pipeline philosophy

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### MIPS64
MIPS I → MIPS III → MIPS64

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### MIPS64
High-end workstations, servers, some embedded

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### MIPS64
- **Strengths:** Continuity, familiar toolchain, 64-bit when needed
- **Weaknesses:** Carried MIPS32 baggage, delay slots still burden, market decline

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose MIPS64 when:** your application fits its domain (High-end workstations) and you value its specific strengths

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

MIPS64 and WebAssembly-WAT represent different points in the spectrum of processor design. Separated by 22 years, these architectures reflect the evolution from MIPS Technologies / Silicon Graphics's 1995 approach to W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple)'s 2017 vision. MIPS64 carries the constraints and wisdom of its era, while MIPS64 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
