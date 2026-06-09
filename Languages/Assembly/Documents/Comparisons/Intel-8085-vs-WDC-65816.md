# Intel-8085 vs WDC-65816

## Overview

This document compares **Intel-8085** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Intel-8085 | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 8 | 16/8 |
| **Type** | CISC | CISC (16-bit 6502 evolution) |
| **Year** | 1976 | 1984 |
| **Creator** | Intel | Western Design Center (Bill Mensch) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### Intel-8085
> *Simplify the system - integrate clock, single 5V supply*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** Intel-8085 approaches computing with a cisc philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### Intel-8085
Same as 8080 (A,B,C,D,E,H,L)

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** Intel-8085 offers few registers (few-style architecture), while WDC-65816 provides many registers (many-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### Intel-8085
Integrated clock generator, SID/SOD serial lines, 5 interrupts, 8080 compatible

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### Intel-8085
8080 → 8085 (enhanced)

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### Intel-8085
Embedded systems, industrial controllers, educational kits, early portables

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### Intel-8085
- **Strengths:** Simpler system design, lower power, 8080 compatible, integrated features
- **Weaknesses:** Still 8-bit, limited vs 16-bit emerging, soon overshadowed

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose Intel-8085 when:** backward compatibility with massive existing software bases is critical

**Choose WDC-65816 when:** backward compatibility with massive existing software bases is critical

---

## Summary

Intel-8085 and WDC-65816 represent different points in the spectrum of processor design. The 8-bit Intel-8085 and 16/8-bit WDC-65816 serve different scale requirements. Intel-8085 excels in constrained environments where every transistor counts, while WDC-65816 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
