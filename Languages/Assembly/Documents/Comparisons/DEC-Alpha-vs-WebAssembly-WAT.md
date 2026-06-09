# DEC-Alpha vs WebAssembly-WAT

## Overview

This document compares **DEC-Alpha** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-Alpha | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 64 | 32/64 |
| **Type** | RISC | Stack-based Virtual ISA |
| **Year** | 1992 | 2017 |
| **Creator** | Digital Equipment Corporation (DEC) | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Little | Little (linear memory) |

---

## Design Philosophy

### DEC-Alpha
> *64 bits, no compromises - pure 64-bit from scratch, no legacy*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** DEC-Alpha approaches computing with a risc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### DEC-Alpha
32 integer + 32 FP (R31/F31 hardwired to zero)

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** DEC-Alpha offers many registers (many-style architecture), while WebAssembly-WAT provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### DEC-Alpha
No condition codes, no byte/halfword loads originally, designed for extreme clock speeds

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### DEC-Alpha
Clean sheet design, influenced by MIPS experience

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### DEC-Alpha
High-end workstations, servers, scientific computing (Cray-like)

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### DEC-Alpha
- **Strengths:** Blazing fast for its era, clean design, excellent 64-bit implementation
- **Weaknesses:** DEC's demise, no 32-bit mode, compiler complexity

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose DEC-Alpha when:** maximum single-thread performance is critical (High-end workstations)

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

DEC-Alpha and WebAssembly-WAT represent different points in the spectrum of processor design. Separated by 25 years, these architectures reflect the evolution from Digital Equipment Corporation (DEC)'s 1992 approach to W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple)'s 2017 vision. DEC-Alpha carries the constraints and wisdom of its era, while DEC-Alpha addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
