# Intel-8080 vs WebAssembly-WAT

## Overview

This document compares **Intel-8080** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Intel-8080 | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 8 | 32/64 |
| **Type** | CISC | Stack-based Virtual ISA |
| **Year** | 1974 | 2017 |
| **Creator** | Intel | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Little | Little (linear memory) |

---

## Design Philosophy

### Intel-8080
> *The microprocessor as a computer - general purpose, external memory*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** Intel-8080 approaches computing with a cisc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### Intel-8080
7 × 8-bit (A,B,C,D,E,H,L), pairs as 16-bit (BC,DE,HL)

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** Intel-8080 offers many registers (many-style architecture), while WebAssembly-WAT provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### Intel-8080
64KB space, 3 power supplies, 5 interrupts, CP/M era, Altair/IMSAI

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### Intel-8080
8008 → 8080 → 8085 → 8086 (not binary compatible but design lineage)

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### Intel-8080
Early personal computers, CP/M systems, embedded, industrial

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### Intel-8080
- **Strengths:** First widely successful general-purpose CPU, established 8-bit paradigm
- **Weaknesses:** Limited registers, complex support chips, multiple power supplies

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose Intel-8080 when:** your application fits its domain (Early personal computers) and you value its specific strengths

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

Intel-8080 and WebAssembly-WAT represent different points in the spectrum of processor design. Separated by 43 years, these architectures reflect the evolution from Intel's 1974 approach to W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple)'s 2017 vision. Intel-8080 carries the constraints and wisdom of its era, while Intel-8080 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
