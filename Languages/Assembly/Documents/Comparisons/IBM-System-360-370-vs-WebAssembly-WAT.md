# IBM-System-360-370 vs WebAssembly-WAT

## Overview

This document compares **IBM-System-360-370** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-System-360-370 | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 32 | 32/64 |
| **Type** | CISC | Stack-based Virtual ISA |
| **Year** | 1964 | 2017 |
| **Creator** | IBM | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Big (EBCDIC) | Little (linear memory) |

---

## Design Philosophy

### IBM-System-360-370
> *Write once, run everywhere - unified architecture from small to supercomputer*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** IBM-System-360-370 approaches computing with a cisc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### IBM-System-360-370
16 × 32-bit GPRs, 4 × 64-bit FPRs

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** IBM-System-360-370 offers many registers (many-style architecture), while WebAssembly-WAT provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### IBM-System-360-370
Packed decimal for finance, channel architecture, microcode, backward compatible to 1964

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### IBM-System-360-370
IBM 7000 series → System/360 → System/370 → ESA/390 → z/Architecture

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### IBM-System-360-370
Mainframes, enterprise computing, banking, government

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### IBM-System-360-370
- **Strengths:** Unmatched compatibility, RAS, decimal arithmetic, I/O architecture
- **Weaknesses:** Complex, expensive, proprietary, steep learning curve

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose IBM-System-360-370 when:** backward compatibility with massive existing software bases is critical

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

IBM-System-360-370 and WebAssembly-WAT represent different points in the spectrum of processor design. Separated by 53 years, these architectures reflect the evolution from IBM's 1964 approach to W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple)'s 2017 vision. IBM-System-360-370 carries the constraints and wisdom of its era, while IBM-System-360-370 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
