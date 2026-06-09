# PA-RISC vs WebAssembly-WAT

## Overview

This document compares **PA-RISC** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PA-RISC | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 32/64 | 32/64 |
| **Type** | RISC | Stack-based Virtual ISA |
| **Year** | 1986 | 2017 |
| **Creator** | Hewlett-Packard | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Big | Little (linear memory) |

---

## Design Philosophy

### PA-RISC
> *Precision in design - analyze compiler output, optimize ISA for what compilers produce*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** PA-RISC approaches computing with a risc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### PA-RISC
32 × 32-bit GPRs, 32 × 64-bit FPRs

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** PA-RISC offers many registers (many-style architecture), while WebAssembly-WAT provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### PA-RISC
Nullification (skip next instruction), shadow registers, multiply-step/divide-step

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### PA-RISC
HP stack-based designs → PA-RISC → Itanium (with Intel)

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### PA-RISC
HP workstations, HP 9000 servers, some embedded

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### PA-RISC
- **Strengths:** Compiler-optimized, elegant nullification, good performance for era
- **Weaknesses:** HP abandoned for Itanium, limited ecosystem, big-endian constraint

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose PA-RISC when:** your application fits its domain (HP workstations) and you value its specific strengths

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

PA-RISC and WebAssembly-WAT represent different points in the spectrum of processor design. Separated by 31 years, these architectures reflect the evolution from Hewlett-Packard's 1986 approach to W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple)'s 2017 vision. PA-RISC carries the constraints and wisdom of its era, while PA-RISC addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
