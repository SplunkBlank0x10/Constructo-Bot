# LoongArch vs WebAssembly-WAT

## Overview

This document compares **LoongArch** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | LoongArch | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 32/64 | 32/64 |
| **Type** | RISC | Stack-based Virtual ISA |
| **Year** | 2020 | 2017 |
| **Creator** | Loongson Technology (China) | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Both | Little (linear memory) |

---

## Design Philosophy

### LoongArch
> *Independence through design - technological sovereignty, free from foreign IP*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** LoongArch approaches computing with a risc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### LoongArch
32 × 64-bit GPRs, 32 × FP, 32 × 256-bit vector

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** LoongArch offers many registers (many-style architecture), while WebAssembly-WAT provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### LoongArch
No branch delay slots (unlike MIPS), binary translation for x86/ARM/MIPS, 4 privilege levels

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### LoongArch
MIPS-compatible Loongson → clean-sheet LoongArch

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### LoongArch
Chinese government, education, domestic servers, desktops, embedded

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### LoongArch
- **Strengths:** Sovereignty, modern design, MIPS familiarity, no licensing fees
- **Weaknesses:** Immature ecosystem, limited software, geopolitical niche

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose LoongArch when:** technological sovereignty and independence from foreign IP is required

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

LoongArch and WebAssembly-WAT represent different points in the spectrum of processor design. The RISC philosophy of LoongArch and the Stack-based Virtual ISA approach of WebAssembly-WAT represent fundamentally different tradeoffs between hardware complexity and software simplicity. Neither is universally superior—the right choice depends on the specific constraints of power, cost, performance, and legacy requirements.

---

*Generated for the Assembly Hello World Collection*
