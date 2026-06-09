# DEC-PDP-11 vs PIC

## Overview

This document compares **DEC-PDP-11** and **PIC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | DEC-PDP-11 | PIC |
|-----------|----------|----------|
| **Bits** | 16 | 8/16 |
| **Type** | CISC | RISC (Harvard, minimal) |
| **Year** | 1970 | 1976 |
| **Creator** | Digital Equipment Corporation (DEC) | General Instrument → Microchip Technology |
| **Endianness** | Little | Little |

---

## Design Philosophy

### DEC-PDP-11
> *Orthogonality and elegance - every instruction × every mode × every register*

### PIC
> *Minimalism to the extreme - 35 instructions, every transistor earns its place*

**Key Difference:** DEC-PDP-11 approaches computing with a cisc philosophy, while PIC takes a risc approach. 

---

## Register Architecture

### DEC-PDP-11
8 × 16-bit (R6=SP, R7=PC), any can be accumulator/index

### PIC
1 working register (W), banking via BSR

**Comparison:** Both architectures provide a minimal-register programming model, though the specific organization differs significantly.

---

## Notable Features

### DEC-PDP-11
Auto-increment/decrement inspired C's ++/--, Unibus, memory-mapped I/O, Unix birthplace

### PIC
Harvard architecture, banking, 2-stage pipeline, minimal instruction set, wide voltage

---

## Historical Lineage

### DEC-PDP-11
PDP-8 → PDP-11 → VAX (32-bit successor)

### PIC
GI PIC1650 → Microchip PIC16/18 → PIC24/dsPIC → PIC32 (MIPS-based)

---

## Primary Use Cases

### DEC-PDP-11
Minicomputers, early Unix systems, industrial control, education

### PIC
Blinking LEDs, sensors, motor control, tiny embedded, education, hobby

---

## Strengths & Weaknesses

### DEC-PDP-11
- **Strengths:** Beautifully orthogonal, influenced C and Unix, elegant design
- **Weaknesses:** 16-bit limitation, segmented address space (64KB), DEC discontinued

### PIC
- **Strengths:** Cheapest possible, robust, simple to understand, huge variety, low power
- **Weaknesses:** Minimal registers, banking complexity, quirky architecture, limited for complex tasks

---

## When to Choose Which

**Choose DEC-PDP-11 when:** your application fits its domain (Minicomputers) and you value its specific strengths

**Choose PIC when:** power efficiency is paramount, especially for Blinking LEDs

---

## Summary

DEC-PDP-11 and PIC represent different points in the spectrum of processor design. The 8/16-bit PIC and 16-bit DEC-PDP-11 serve different scale requirements. PIC excels in constrained environments where every transistor counts, while DEC-PDP-11 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
