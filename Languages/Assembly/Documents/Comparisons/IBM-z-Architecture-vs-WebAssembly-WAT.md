# IBM-z-Architecture vs WebAssembly-WAT

## Overview

This document compares **IBM-z-Architecture** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-z-Architecture | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 64 | 32/64 |
| **Type** | CISC | Stack-based Virtual ISA |
| **Year** | 2000 | 2017 |
| **Creator** | IBM | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Big | Little (linear memory) |

---

## Design Philosophy

### IBM-z-Architecture
> *The architecture that outlives companies - 60+ years backward compatibility*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** IBM-z-Architecture approaches computing with a cisc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### IBM-z-Architecture
16 × 64-bit GPRs, 16 × 64-bit FPRs, 32 × 128-bit vector

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** IBM-z-Architecture offers many registers (many-style architecture), while WebAssembly-WAT provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### IBM-z-Architecture
Hardware transactional memory, cryptographic instructions, RAS as architecture, LPARs

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### IBM-z-Architecture
System/360 → System/370 → ESA/390 → z/Architecture

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### IBM-z-Architecture
Banking, finance, insurance, government, critical enterprise

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### IBM-z-Architecture
- **Strengths:** Unmatched reliability, compatibility, security, I/O throughput
- **Weaknesses:** Extremely expensive, proprietary, niche market, complex

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose IBM-z-Architecture when:** backward compatibility with massive existing software bases is critical

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

IBM-z-Architecture and WebAssembly-WAT represent different points in the spectrum of processor design. The 32/64-bit WebAssembly-WAT and 64-bit IBM-z-Architecture serve different scale requirements. WebAssembly-WAT excels in constrained environments where every transistor counts, while IBM-z-Architecture provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
