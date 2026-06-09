# AArch64 vs WebAssembly-WAT

## Overview

This document compares **AArch64** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AArch64 | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 64 | 32/64 |
| **Type** | RISC | Stack-based Virtual ISA |
| **Year** | 2011 | 2017 |
| **Creator** | ARM Ltd. | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Bi-endian (mostly little in practice) | Little (linear memory) |

---

## Design Philosophy

### AArch64
> *Clean break from 32-bit ARM, learn from 30 years of experience*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** AArch64 approaches computing with a risc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### AArch64
31 GPRs + zero register, dedicated SP/PC

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** Both architectures provide a few-register programming model, though the specific organization differs significantly.

---

## Notable Features

### AArch64
No predication (mostly), SVE scalable vectors, 4 exception levels

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### AArch64
ARM → ARMv7 → ARMv8-A (AArch64)

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### AArch64
Smartphones, servers, Apple Silicon, embedded

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### AArch64
- **Strengths:** Power efficiency, clean 64-bit design, massive ecosystem
- **Weaknesses:** Complex history, some legacy baggage from ARM32

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose AArch64 when:** power efficiency is paramount, especially for Smartphones

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

AArch64 and WebAssembly-WAT represent different points in the spectrum of processor design. The 32/64-bit WebAssembly-WAT and 64-bit AArch64 serve different scale requirements. WebAssembly-WAT excels in constrained environments where every transistor counts, while AArch64 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
