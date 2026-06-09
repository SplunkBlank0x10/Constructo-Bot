# AVR vs WDC-65816

## Overview

This document compares **AVR** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | AVR | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 8 | 16/8 |
| **Type** | RISC (modified Harvard) | CISC (16-bit 6502 evolution) |
| **Year** | 1996 | 1984 |
| **Creator** | Atmel (now Microchip) | Western Design Center (Bill Mensch) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### AVR
> *RISC for microcontrollers - compiler-friendly, single-cycle*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** AVR approaches computing with a risc philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### AVR
32 × 8-bit (R26-R31 as 16-bit pointers X,Y,Z)

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### AVR
Single-cycle most ops, Harvard architecture, on-chip flash/EEPROM/SRAM

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### AVR
Clean sheet design, inspired by RISC principles

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### AVR
Arduino, embedded control, hobbyist projects, IoT

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### AVR
- **Strengths:** Easy to use, great toolchain, huge community, low power
- **Weaknesses:** 8-bit limitation, limited for complex algorithms

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose AVR when:** your application fits its domain (Arduino) and you value its specific strengths

**Choose WDC-65816 when:** backward compatibility with massive existing software bases is critical

---

## Summary

AVR and WDC-65816 represent different points in the spectrum of processor design. The 8-bit AVR and 16/8-bit WDC-65816 serve different scale requirements. AVR excels in constrained environments where every transistor counts, while WDC-65816 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
