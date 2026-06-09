# ARM vs WDC-65816

## Overview

This document compares **ARM** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 32 | 16/8 |
| **Type** | RISC | CISC (16-bit 6502 evolution) |
| **Year** | 1985 | 1984 |
| **Creator** | Acorn Computers | Western Design Center (Bill Mensch) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### ARM
> *Elegance through simplicity, power efficiency, every instruction conditional*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** ARM approaches computing with a risc philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### ARM
16 (R15=PC), condition codes on all instructions

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### ARM
Barrel shifter, LDM/STM block moves, Thumb mode, dominant mobile ISA

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### ARM
Acorn RISC Machine → ARM Holdings → ARMv7

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### ARM
Mobile, embedded, microcontrollers (Cortex-M)

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### ARM
- **Strengths:** Power efficiency, code density with Thumb, massive ecosystem
- **Weaknesses:** 32-bit limitation, complex history of modes and extensions

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose ARM when:** your application fits its domain (Mobile) and you value its specific strengths

**Choose WDC-65816 when:** backward compatibility with massive existing software bases is critical

---

## Summary

ARM and WDC-65816 represent different points in the spectrum of processor design. The 16/8-bit WDC-65816 and 32-bit ARM serve different scale requirements. WDC-65816 excels in constrained environments where every transistor counts, while ARM provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
