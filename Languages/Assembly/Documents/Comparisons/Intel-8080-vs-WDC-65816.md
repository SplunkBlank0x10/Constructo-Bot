# Intel-8080 vs WDC-65816

## Overview

This document compares **Intel-8080** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Intel-8080 | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 8 | 16/8 |
| **Type** | CISC | CISC (16-bit 6502 evolution) |
| **Year** | 1974 | 1984 |
| **Creator** | Intel | Western Design Center (Bill Mensch) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### Intel-8080
> *The microprocessor as a computer - general purpose, external memory*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** Intel-8080 approaches computing with a cisc philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### Intel-8080
7 × 8-bit (A,B,C,D,E,H,L), pairs as 16-bit (BC,DE,HL)

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### Intel-8080
64KB space, 3 power supplies, 5 interrupts, CP/M era, Altair/IMSAI

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### Intel-8080
8008 → 8080 → 8085 → 8086 (not binary compatible but design lineage)

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### Intel-8080
Early personal computers, CP/M systems, embedded, industrial

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### Intel-8080
- **Strengths:** First widely successful general-purpose CPU, established 8-bit paradigm
- **Weaknesses:** Limited registers, complex support chips, multiple power supplies

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose Intel-8080 when:** your application fits its domain (Early personal computers) and you value its specific strengths

**Choose WDC-65816 when:** power efficiency is paramount, especially for Apple IIGS

---

## Summary

Intel-8080 and WDC-65816 represent different points in the spectrum of processor design. The 8-bit Intel-8080 and 16/8-bit WDC-65816 serve different scale requirements. Intel-8080 excels in constrained environments where every transistor counts, while WDC-65816 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
