# PowerPC vs WebAssembly-WAT

## Overview

This document compares **PowerPC** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PowerPC | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 32/64 | 32/64 |
| **Type** | RISC | Stack-based Virtual ISA |
| **Year** | 1991 | 2017 |
| **Creator** | AIM Alliance (Apple, IBM, Motorola) | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Big (default), supports little | Little (linear memory) |

---

## Design Philosophy

### PowerPC
> *Performance through compiler optimization - 32 GPRs, powerful branches, CR fields*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** PowerPC approaches computing with a risc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### PowerPC
32 × 32/64-bit GPRs, 32 × 64-bit FPRs, 8-field CR, LR, CTR

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** PowerPC offers many registers (many-style architecture), while WebAssembly-WAT provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### PowerPC
8-field condition register, branch hints, AltiVec SIMD, Book E for embedded

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### PowerPC
IBM POWER + Motorola 88000 → AIM PowerPC → PowerPC e500/e600 → QorIQ

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### PowerPC
Apple Mac (1994-2006), IBM RS/6000, embedded, automotive, gaming (Xbox 360, PS3, Wii)

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### PowerPC
- **Strengths:** Clean design, good compiler target, AltiVec performance, embedded variants
- **Weaknesses:** Lost desktop to x86, fragmented ecosystem, AIM alliance dissolved

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose PowerPC when:** your application fits its domain (Apple Mac (1994-2006)) and you value its specific strengths

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

PowerPC and WebAssembly-WAT represent different points in the spectrum of processor design. Separated by 26 years, these architectures reflect the evolution from AIM Alliance (Apple, IBM, Motorola)'s 1991 approach to W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple)'s 2017 vision. PowerPC carries the constraints and wisdom of its era, while PowerPC addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
