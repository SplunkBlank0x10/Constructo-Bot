# MOS-6502 vs WebAssembly-WAT

## Overview

This document compares **MOS-6502** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MOS-6502 | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 8 | 32/64 |
| **Type** | CISC | Stack-based Virtual ISA |
| **Year** | 1975 | 2017 |
| **Creator** | MOS Technology (Chuck Peddle et al.) | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Little | Little (linear memory) |

---

## Design Philosophy

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** MOS-6502 approaches computing with a cisc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** MOS-6502 offers minimal registers (minimal-style architecture), while WebAssembly-WAT provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

MOS-6502 and WebAssembly-WAT represent different points in the spectrum of processor design. Separated by 42 years, these architectures reflect the evolution from MOS Technology (Chuck Peddle et al.)'s 1975 approach to W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple)'s 2017 vision. MOS-6502 carries the constraints and wisdom of its era, while MOS-6502 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
