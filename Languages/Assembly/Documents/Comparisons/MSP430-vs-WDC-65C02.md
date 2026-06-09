# MSP430 vs WDC-65C02

## Overview

This document compares **MSP430** and **WDC-65C02**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | MSP430 | WDC-65C02 |
|-----------|----------|----------|
| **Bits** | 16 | 8 |
| **Type** | RISC (von Neumann) | CISC (CMOS enhanced 6502) |
| **Year** | 1998 | 1978 |
| **Creator** | Texas Instruments | Western Design Center (Bill Mensch) |
| **Endianness** | Little | Little |

---

## Design Philosophy

### MSP430
> *Ultra-low power without compromise - coin cell for years, instant wake*

### WDC-65C02
> *Evolution, not abandonment - preserve 6502, fix bugs, add what's missing*

**Key Difference:** MSP430 approaches computing with a risc philosophy, while WDC-65C02 takes a cisc approach. 

---

## Register Architecture

### MSP430
16 × 16-bit (R0=PC, R1=SP, R2=SR, R3=constant generator)

### WDC-65C02
Same as 6502 (A, X, Y, SP, P, PC)

**Comparison:** MSP430 offers many registers (many-style architecture), while WDC-65C02 provides few registers (few-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### MSP430
5 low-power modes, flexible clock, instant wake, unified memory, von Neumann in MCU

### WDC-65C02
BRA, PHX/PHY, PLX/PLY, STZ, TRB/TSB, WAI/STP, CMOS low power, bug fixes

---

## Historical Lineage

### MSP430
Clean sheet design for TI

### WDC-65C02
6502 → 65C02 (CMOS, enhanced) → 65816 (16-bit)

---

## Primary Use Cases

### MSP430
Battery sensors, medical devices, utility meters, energy harvesting, IoT

### WDC-65C02
Apple IIc, enhanced Apple IIe, embedded, battery devices, retro computing

---

## Strengths & Weaknesses

### MSP430
- **Strengths:** Extremely low power, easy to use, great for battery operation, integrated analog
- **Weaknesses:** 16-bit limitation, less performance than 32-bit ARM, TI-centric ecosystem

### WDC-65C02
- **Strengths:** 6502 compatible, lower power, new useful instructions, fixes bugs
- **Weaknesses:** Still 8-bit, still limited registers, overshadowed by 16-bit era

---

## When to Choose Which

**Choose MSP430 when:** your application fits its domain (Battery sensors) and you value its specific strengths

**Choose WDC-65C02 when:** backward compatibility with massive existing software bases is critical

---

## Summary

MSP430 and WDC-65C02 represent different points in the spectrum of processor design. The 8-bit WDC-65C02 and 16-bit MSP430 serve different scale requirements. WDC-65C02 excels in constrained environments where every transistor counts, while MSP430 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
