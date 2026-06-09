# DEC-PDP-11 vs MOS-6502

## Overview

This document compares **DEC-PDP-11** and **MOS-6502**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | MOS-6502 |
|-----------|----------|----------|
| **Bits** | 16 | 8 |
| **Type** | CISC | CISC |
| **Year** | 1970 | 1975 |
| **Creator** | Digital Equipment Corporation (DEC) | MOS Technology (Chuck Peddle et al.) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### MOS-6502
> *Radical minimalism - smallest chip, fastest signals, zero page as register file*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while MOS-6502 takes a cisc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### MOS-6502
A (accumulator), X, Y (index), SP, P (flags), PC

**Comparison:** Both architectures provide a minimal-register programming model, though the specific organization differs significantly.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### MOS-6502
$25 price (vs $300 6800), no multiply/divide, zero page = fast pseudo-registers

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### MOS-6502
Motorola 6800 designers left → 6502 → 65C02 → 65816

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### MOS-6502
Apple II, Commodore 64, NES, Atari 2600, BBC Micro, countless embedded

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### MOS-6502
- **Strengths:** Cheapest viable CPU, fast zero page, massive software library, simple
- **Weaknesses:** Minimal registers, no hardware multiply/divide, 64KB limit, quirky bugs

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose MOS-6502 when:** cost is the primary constraint and the application is simple (Apple II)

---

## Summary

DEC-PDP-11 and MOS-6502 represent different points in the spectrum of processor design. The 8-bit MOS-6502 and 16-bit DEC-PDP-11 serve different scale requirements. MOS-6502 excels in constrained environments where every transistor counts, while DEC-PDP-11 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
