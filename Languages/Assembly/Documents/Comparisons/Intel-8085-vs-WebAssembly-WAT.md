# Intel-8085 vs WebAssembly-WAT

## Overview

This document compares **Intel-8085** and **WebAssembly-WAT**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Intel-8085 | WebAssembly-WAT |
|-----------|----------|----------|
| **Bits** | 8 | 32/64 |
| **Type** | CISC | Stack-based Virtual ISA |
| **Year** | 1976 | 2017 |
| **Creator** | Intel | W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple) |
| **Endianness** | Little | Little (linear memory) |

---

## Design Philosophy

### Intel-8085
> *Simplify the system - integrate clock, single 5V supply*

### WebAssembly-WAT
> *Near-native performance in a sandbox - safe, portable, language-agnostic*

**Key Difference:** Intel-8085 approaches computing with a cisc philosophy, while WebAssembly-WAT takes a stack-based virtual isa approach. 

---

## Register Architecture

### Intel-8085
Same as 8080 (A,B,C,D,E,H,L)

### WebAssembly-WAT
None (stack machine) - values on implicit operand stack

**Comparison:** Both architectures provide a few-register programming model, though the specific organization differs significantly.

---

## Notable Features

### Intel-8085
Integrated clock generator, SID/SOD serial lines, 5 interrupts, 8080 compatible

### WebAssembly-WAT
Stack machine, linear memory, structured control flow, sandboxed, WASI for OS

---

## Historical Lineage

### Intel-8085
8080 → 8085 (enhanced)

### WebAssembly-WAT
asm.js → WebAssembly MVP → Wasm 2.0 → Component Model

---

## Primary Use Cases

### Intel-8085
Embedded systems, industrial controllers, educational kits, early portables

### WebAssembly-WAT
Web apps, browser games, serverless (WASI), edge computing, blockchain

---

## Strengths & Weaknesses

### Intel-8085
- **Strengths:** Simpler system design, lower power, 8080 compatible, integrated features
- **Weaknesses:** Still 8-bit, limited vs 16-bit emerging, soon overshadowed

### WebAssembly-WAT
- **Strengths:** Portable, safe, fast, language-agnostic, growing ecosystem, sandboxed
- **Weaknesses:** No direct hardware access, still maturing, debugging challenges

---

## When to Choose Which

**Choose Intel-8085 when:** power efficiency is paramount, especially for Embedded systems

**Choose WebAssembly-WAT when:** sandboxed, portable execution across platforms is needed

---

## Summary

Intel-8085 and WebAssembly-WAT represent different points in the spectrum of processor design. Separated by 41 years, these architectures reflect the evolution from Intel's 1976 approach to W3C WebAssembly Group (Mozilla, Google, Microsoft, Apple)'s 2017 vision. Intel-8085 carries the constraints and wisdom of its era, while Intel-8085 addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
