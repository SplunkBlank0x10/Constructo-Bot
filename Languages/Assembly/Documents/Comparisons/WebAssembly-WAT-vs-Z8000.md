# WebAssembly-WAT vs Z8000

## Overview

This document compares **WebAssembly-WAT** and **Z8000**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | WebAssembly-WAT | Z8000 |
|-----------|----------|----------|
| **Bits** | 32/64 | 16 |
| **Type** | Stack-based Virtual ISA | CISC |
| **Year** | 2017 | 1979 |
| **Creator** | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) | Zilog |
| **Endianness** | Little (linear memory) | Big |

---

## Design Philosophy

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

### Z8000
> *16-bit done right - more regular than 8086, flexible segmented or flat*

**Key Difference:** WebAssembly-WAT approaches computing with a stack-based virtual isa philosophy, while Z8000 takes a cisc approach. 

---

## Register Architecture

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

### Z8000
16 × 16-bit (pairable to 32-bit), two stack pointers

**Comparison:** WebAssembly-WAT offers few registers (few-style architecture), while Z8000 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

### Z8000
Segmented (Z8001) or non-segmented (Z8002), string instructions, 23-bit addressing

---

## Historical Lineage

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

### Z8000
Z80 → Z8000 (16-bit) → Z80000 (32-bit, rare) → discontinued

---

## Primary Use Cases

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

### Z8000
Industrial control, military, some Unix workstations, embedded

---

## Strengths & Weaknesses

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

### Z8000
- **Strengths:** Clean design, orthogonal, flexible addressing, good for systems programming
- **Weaknesses:** Late to market, no software ecosystem, x86 won, discontinued

---

## When to Choose Which

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

**Choose Z8000 when:** your application fits its domain (Industrial control) and you value its specific strengths

---

## Summary

WebAssembly-WAT and Z8000 represent different points in the spectrum of processor design. Separated by 38 years, these architectures reflect the evolution from Zilog's 1979 approach to W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple)'s 2017 vision. Z8000 carries the constraints and wisdom of its era, while Z8000 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
