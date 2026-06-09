# SPARC-LEON vs WDC-65816

## Overview

This document compares **SPARC-LEON** and **WDC-65816**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | SPARC-LEON | WDC-65816 |
|-----------|----------|----------|
| **Bits** | 32 | 16/8 |
| **Type** | RISC (radiation-hardened) | CISC (16-bit 6502 evolution) |
| **Year** | 1997 | 1984 |
| **Creator** | Aeroflex Gaisler (now Cobham) | Western Design Center (Bill Mensch) |
| **Endianness** | Big | Little |

---

## Design Philosophy

### SPARC-LEON
> *Reliability above all - survive space radiation, detect and correct SEUs automatically*

### WDC-65816
> *Grow up gracefully - 6502 to 16-bit without alienating the community*

**Key Difference:** SPARC-LEON approaches computing with a risc philosophy, while WDC-65816 takes a cisc approach. 

---

## Register Architecture

### SPARC-LEON
Same as SPARC V8 (32 visible, register windows)

### WDC-65816
16-bit A, X, Y (native), 24-bit addressing, PB/DB bank registers

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### SPARC-LEON
Triple modular redundancy (TMR), EDAC on memory, watchdog, open-source VHDL

### WDC-65816
Emulation mode (exact 6502), native mode (16-bit), block moves (MVP/MVN), 16MB space

---

## Historical Lineage

### SPARC-LEON
SPARC V8 → LEON → LEON2 → LEON3/4 (open source)

### WDC-65816
6502 → 65C02 → 65816

---

## Primary Use Cases

### SPARC-LEON
Satellites, spacecraft, ESA missions, NASA missions, radiation environments

### WDC-65816
Apple IIGS, Super Nintendo, 16-bit embedded, retro computing

---

## Strengths & Weaknesses

### SPARC-LEON
- **Strengths:** Radiation tolerance, SPARC compatibility, open source, flight proven
- **Weaknesses:** Niche market, lower performance than commercial CPUs, expensive to qualify

### WDC-65816
- **Strengths:** 6502 heritage, 16-bit power, banked memory, backward compatible
- **Weaknesses:** Complex banking, niche market, soon overshadowed by 68000 and x86

---

## When to Choose Which

**Choose SPARC-LEON when:** you need an open, royalty-free ISA with no licensing constraints

**Choose WDC-65816 when:** power efficiency is paramount, especially for Apple IIGS

---

## Summary

SPARC-LEON and WDC-65816 represent different points in the spectrum of processor design. The 16/8-bit WDC-65816 and 32-bit SPARC-LEON serve different scale requirements. WDC-65816 excels in constrained environments where every transistor counts, while SPARC-LEON provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
