# Intel-8085 vs Z80

## Overview

This document compares **Intel-8085** and **Z80**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | Intel-8085 | Z80 |
|-----------|----------|----------|
| **Bits** | 8 | 8 |
| **Type** | CISC | CISC |
| **Year** | 1976 | 1976 |
| **Creator** | Intel | Zilog (Federico Faggin) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### Intel-8085
> *Simplify the system - integrate clock, single 5V supply*

### Z80
> *Familiar but better - enhance 8080 without breaking compatibility*

**Key Difference:** Intel-8085 approaches computing with a cisc philosophy, while Z80 takes a cisc approach. 

---

## Register Architecture

### Intel-8085
Same as 8080 (A,B,C,D,E,H,L)

### Z80
A + A', B,C,D,E,H,L + B',C',D',E',H',L', IX, IY, SP, PC

**Comparison:** Both architectures provide a few-register programming model, though the specific organization differs significantly.

---

## Notable Features

### Intel-8085
Integrated clock generator, SID/SOD serial lines, 5 interrupts, 8080 compatible

### Z80
Alternate register sets (EXX), block instructions (LDI/CPI), DRAM refresh, 3 interrupt modes

---

## Historical Lineage

### Intel-8085
8080 → 8085 (enhanced)

### Z80
8080 → Z80 (enhanced) → Z180 → Z280 → eZ80

---

## Primary Use Cases

### Intel-8085
Embedded systems, industrial controllers, educational kits, early portables

### Z80
ZX Spectrum, MSX, Game Boy, CP/M, embedded, retro computing, education

---

## Strengths & Weaknesses

### Intel-8085
- **Strengths:** Simpler system design, lower power, 8080 compatible, integrated features
- **Weaknesses:** Still 8-bit, limited vs 16-bit emerging, soon overshadowed

### Z80
- **Strengths:** 8080 compatible, more registers, powerful block ops, cheap, huge ecosystem
- **Weaknesses:** 8-bit limitation, quirkier than 8080, soon eclipsed by 16-bit era

---

## When to Choose Which

**Choose Intel-8085 when:** backward compatibility with massive existing software bases is critical

**Choose Z80 when:** backward compatibility with massive existing software bases is critical

---

## Summary

Intel-8085 and Z80 represent different points in the spectrum of processor design. Both Intel-8085 and Z80 share the CISC design philosophy, yet diverge significantly in implementation details, ecosystem maturity, and target applications. The choice between them often comes down to existing codebases, available tools, and specific performance requirements rather than fundamental architectural superiority.

---

*Generated for the Assembly Hello World Collection*
