# PIC vs WebAssembly-WAT

## Overview

This document compares **PIC** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | PIC | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 8/16 | 32/64 |
| **Type** | RISC (Harvard, minimal) | Stack-based Virtual ISA |
| **Year** | 1976 | 2017 |
| **Creator** | General Instrument → Microchip Technology | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Little | Little (linear memory) |

---

## Design Philosophy

### PIC
> *Minimalism to the extreme - 35 instructions, every transistor earns its place*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** PIC approaches computing with a risc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### PIC
1 working register (W), banking via BSR

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** PIC offers minimal registers (minimal-style architecture), while WebAssembly-WAT provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### PIC
Harvard architecture, banking, 2-stage pipeline, minimal instruction set, wide voltage

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### PIC
GI PIC1650 → Microchip PIC16/18 → PIC24/dsPIC → PIC32 (MIPS-based)

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### PIC
Blinking LEDs, sensors, motor control, tiny embedded, education, hobby

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### PIC
- **Strengths:** Cheapest possible, robust, simple to understand, huge variety, low power
- **Weaknesses:** Minimal registers, banking complexity, quirky architecture, limited for complex tasks

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose PIC when:** power efficiency is paramount, especially for Blinking LEDs

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

PIC and WebAssembly-WAT represent different points in the spectrum of processor design. Separated by 41 years, these architectures reflect the evolution from General Instrument → Microchip Technology's 1976 approach to W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple)'s 2017 vision. PIC carries the constraints and wisdom of its era, while PIC addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
