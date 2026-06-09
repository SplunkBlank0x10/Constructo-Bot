# SuperH-SH vs WebAssembly-WAT

## Overview

This document compares **SuperH-SH** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | SuperH-SH | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 32 | 32/64 |
| **Type** | RISC (compressed) | Stack-based Virtual ISA |
| **Year** | 1992 | 2017 |
| **Creator** | Hitachi (now Renesas) | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Little | Little (linear memory) |

---

## Design Philosophy

### SuperH-SH
> *Density without complexity - native 16-bit instructions, not an add-on*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** SuperH-SH approaches computing with a risc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### SuperH-SH
16 × 32-bit, 16-bit instruction encoding, 32-bit data path

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** SuperH-SH offers many registers (many-style architecture), while WebAssembly-WAT provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### SuperH-SH
16-bit fixed instructions, delayed branches, MAC for DSP, 5-stage pipeline

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### SuperH-SH
Hitachi H8 → SH-1/2 (Sega) → SH-3/4 (Dreamcast, PDA) → SH-2A (Renesas)

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### SuperH-SH
Sega Saturn/Dreamcast, automotive, PDAs, industrial, consumer

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### SuperH-SH
- **Strengths:** Excellent code density, good performance, low power, automotive proven
- **Weaknesses:** Niche now, overshadowed by ARM, Renesas-only ecosystem

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose SuperH-SH when:** power efficiency is paramount, especially for Sega Saturn/Dreamcast

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

SuperH-SH and WebAssembly-WAT represent different points in the spectrum of processor design. Separated by 25 years, these architectures reflect the evolution from Hitachi (now Renesas)'s 1992 approach to W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple)'s 2017 vision. SuperH-SH carries the constraints and wisdom of its era, while SuperH-SH addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
