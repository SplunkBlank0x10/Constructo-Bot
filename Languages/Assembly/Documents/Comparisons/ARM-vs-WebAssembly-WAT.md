# ARM vs WebAssembly-WAT

## Overview

This document compares **ARM** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 32 | 32/64 |
| **Type** | RISC | Stack-based Virtual ISA |
| **Year** | 1985 | 2017 |
| **Creator** | Acorn Computers | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Bi-endian | Little (linear memory) |

---

## Design Philosophy

### ARM
> *Elegance through simplicity, power efficiency, every instruction conditional*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** ARM approaches computing with a risc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### ARM
16 (R15=PC), condition codes on all instructions

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** ARM offers many registers (many-style architecture), while WebAssembly-WAT provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### ARM
Barrel shifter, LDM/STM block moves, Thumb mode, dominant mobile ISA

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### ARM
Acorn RISC Machine → ARM Holdings → ARMv7

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### ARM
Mobile, embedded, microcontrollers (Cortex-M)

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### ARM
- **Strengths:** Power efficiency, code density with Thumb, massive ecosystem
- **Weaknesses:** 32-bit limitation, complex history of modes and extensions

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose ARM when:** power efficiency is paramount, especially for Mobile

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

ARM and WebAssembly-WAT represent different points in the spectrum of processor design. Separated by 32 years, these architectures reflect the evolution from Acorn Computers's 1985 approach to W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple)'s 2017 vision. ARM carries the constraints and wisdom of its era, while ARM addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
