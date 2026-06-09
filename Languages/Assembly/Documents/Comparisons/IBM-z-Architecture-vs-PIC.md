# IBM-z-Architecture vs PIC

## Overview

This document compares **IBM-z-Architecture** and **PIC**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | IBM-z-Architecture | PIC |
|-----------|----------|----------|
| **Bits** | 64 | 8/16 |
| **Type** | CISC | RISC (Harvard, minimal) |
| **Year** | 2000 | 1976 |
| **Creator** | IBM | General Instrument → Microchip Technology |
| **Endianness** | Big | Little |

---

## Design Philosophy

### IBM-z-Architecture
> *The architecture that outlives companies - 60+ years backward compatibility*

### PIC
> *Minimalism to the extreme - 35 instructions, every transistor earns its place*

**Key Difference:** IBM-z-Architecture approaches computing with a cisc philosophy, while PIC takes a risc approach. 

---

## Register Architecture

### IBM-z-Architecture
16 × 64-bit GPRs, 16 × 64-bit FPRs, 32 × 128-bit vector

### PIC
1 working register (W), banking via BSR

**Comparison:** IBM-z-Architecture offers many registers (many-style architecture), while PIC provides minimal registers (minimal-style architecture). This fundamentally affects how code is structured and optimized.

---

## Notable Features

### IBM-z-Architecture
Hardware transactional memory, cryptographic instructions, RAS as architecture, LPARs

### PIC
Harvard architecture, banking, 2-stage pipeline, minimal instruction set, wide voltage

---

## Historical Lineage

### IBM-z-Architecture
System/360 → System/370 → ESA/390 → z/Architecture

### PIC
GI PIC1650 → Microchip PIC16/18 → PIC24/dsPIC → PIC32 (MIPS-based)

---

## Primary Use Cases

### IBM-z-Architecture
Banking, finance, insurance, government, critical enterprise

### PIC
Blinking LEDs, sensors, motor control, tiny embedded, education, hobby

---

## Strengths & Weaknesses

### IBM-z-Architecture
- **Strengths:** Unmatched reliability, compatibility, security, I/O throughput
- **Weaknesses:** Extremely expensive, proprietary, niche market, complex

### PIC
- **Strengths:** Cheapest possible, robust, simple to understand, huge variety, low power
- **Weaknesses:** Minimal registers, banking complexity, quirky architecture, limited for complex tasks

---

## When to Choose Which

**Choose IBM-z-Architecture when:** backward compatibility with massive existing software bases is critical

**Choose PIC when:** power efficiency is paramount, especially for Blinking LEDs

---

## Summary

IBM-z-Architecture and PIC represent different points in the spectrum of processor design. Separated by 24 years, these architectures reflect the evolution from General Instrument → Microchip Technology's 1976 approach to IBM's 2000 vision. PIC carries the constraints and wisdom of its era, while PIC addresses modern challenges—yet both remain valid for their intended domains.

---

*Generated for the Assembly Hello World Collection*
