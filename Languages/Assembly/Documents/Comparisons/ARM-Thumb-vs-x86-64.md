# ARM-Thumb vs x86-64

## Overview

This document compares **ARM-Thumb** and **x86-64**, two distinct assembly architectures with different design goals, historical contexts, and technical approaches.

| Attribute | ARM-Thumb | x86-64 |
|-----------|----------|----------|
| **Bits** | 16/32 | 64 |
| **Type** | RISC (compressed) | CISC |
| **Year** | 1994 | 2003 |
| **Creator** | ARM Ltd. | AMD (later adopted by Intel) |
| **Endianness** | Bi-endian | Little |

---

## Design Philosophy

### ARM-Thumb
> *Code density matters - RISC performance with smaller code*

### x86-64
> *Pragmatic evolution - keep x86 viable, add modern conveniences, don't break software*

**Key Difference:** ARM-Thumb approaches computing with a risc philosophy, while x86-64 takes a cisc approach. 

---

## Register Architecture

### ARM-Thumb
8 visible (subset of ARM's 16)

### x86-64
16 × 64-bit (RAX-R15), RIP-relative addressing

**Comparison:** Both architectures provide a many-register programming model, though the specific organization differs significantly.

---

## Notable Features

### ARM-Thumb
16-bit fixed instructions, interworking with ARM32, ~30-40% size reduction

### x86-64
Long mode, legacy mode, NX bit, more registers, larger address space, same encoding burden

---

## Historical Lineage

### ARM-Thumb
ARM → Thumb (ARM7TDMI) → Thumb-2 (16/32 mix)

### x86-64
x86 → AMD64 (2003) → Intel 64 (2004) → dominant 64-bit ISA

---

## Primary Use Cases

### ARM-Thumb
Microcontrollers, memory-constrained embedded, low-cost mobile

### x86-64
Dominant server, desktop, laptop, gaming, HPC, cloud

---

## Strengths & Weaknesses

### ARM-Thumb
- **Strengths:** Code density, power efficiency, compatibility with ARM32
- **Weaknesses:** Higher instruction count, more complex interworking

### x86-64
- **Strengths:** Compatibility + progress, massive ecosystem, performance, software investment
- **Weaknesses:** Inherited x86 complexity, power consumption, security attack surface

---

## When to Choose Which

**Choose ARM-Thumb when:** power efficiency is paramount, especially for Microcontrollers

**Choose x86-64 when:** backward compatibility with massive existing software bases is critical

---

## Summary

ARM-Thumb and x86-64 represent different points in the spectrum of processor design. The 16/32-bit ARM-Thumb and 64-bit x86-64 serve different scale requirements. ARM-Thumb excels in constrained environments where every transistor counts, while x86-64 provides the address space and arithmetic range needed for complex modern workloads.

---

*Generated for the Assembly Hello World Collection*
