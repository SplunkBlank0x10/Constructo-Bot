# Intel-8085 vs WDC-65C02

## Overview

This document compares **Intel-8085** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Intel-8085 | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 8 | 8 |
| **Type** | CISC | CISC (CMOS enhanced 6502) |
| **Year** | 1976 | 1978 |
| **Creator** | Intel | Western Design Center (Bill Mensch) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### Intel-8085
> *Simplify the system - integrate clock, single 5V supply*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** Intel-8085 approaches computing with a cisc philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### Intel-8085
Same as 8080 (A,B,C,D,E,H,L)

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** Both architectures provide a few-register programming model, though the specific organization differs significantly.

---

## Notable Features

### Intel-8085
Integrated clock generator, SID/SOD serial lines, 5 interrupts, 8080 compatible

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### Intel-8085
8080 → 8085 (enhanced)

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### Intel-8085
Embedded systems, industrial controllers, educational kits, early portables

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### Intel-8085
- **Strengths:** Simpler system design, lower power, 8080 compatible, integrated features
- **Weaknesses:** Still 8-bit, limited vs 16-bit emerging, soon overshadowed

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose Intel-8085 when:** backward compatibility with massive existing software bases is critical

**Choose WDC-65C02 when:** backward compatibility with massive existing software bases is critical

---

## Summary

Intel-8085 and WDC-65C02 represent different points in the spectrum of processor design. Both Intel-8085 and WDC-65C02 share the CISC design philosophy, yet diverge significantly in implementation details, ecosystem maturity, and target applications. The choice between them often comes down to existing codebases, available tools, and specific performance requirements rather than fundamental architectural superiority.

---

*Generated for the Assembly Hello World Collection*
