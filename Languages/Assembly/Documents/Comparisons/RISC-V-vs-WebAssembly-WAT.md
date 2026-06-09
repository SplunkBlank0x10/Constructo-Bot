# RISC-V vs WebAssembly-WAT

## Overview

This document compares **RISC-V** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | RISC-V | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 32/64/128 | 32/64 |
| **Type** | RISC | Stack-based Virtual ISA |
| **Year** | 2010 | 2017 |
| **Creator** | UC Berkeley | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Little (default), bi-endian optional | Little (linear memory) |

---

## Design Philosophy

### RISC-V
> *Openness as first principle - free for all, modular, minimal base + extensions*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** RISC-V approaches computing with a risc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### RISC-V
32 × 32/64-bit (x0 hardwired to zero), separate FP file

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** RISC-V offers many registers (many-style architecture), while WebAssembly-WAT provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### RISC-V
No condition codes, modular extensions (M, A, F, D, C, V), open standard

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### RISC-V
Berkeley research → RISC-V Foundation → RISC-V International

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### RISC-V
Education, embedded, IoT, servers, AI accelerators, custom silicon

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### RISC-V
- **Strengths:** Free, open, no licensing, modern design, growing ecosystem, customizable
- **Weaknesses:** Immature software ecosystem, fragmentation from extensions, patent concerns

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose RISC-V when:** you need an open, royalty-free ISA with no licensing constraints

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

RISC-V and WebAssembly-WAT represent different points in the spectrum of processor design. The 32/64/128-bit RISC-V and 32/64-bit WebAssembly-WAT serve different scale requirements. RISC-V excels in constrained environments where every transistor counts, while WebAssembly-WAT provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
