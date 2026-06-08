# PIC Assembly

## Overview
PIC (Peripheral Interface Controller) is a family of microcontrollers developed by Microchip Technology starting in 1976. It uses a minimalist Harvard architecture with a single working register and banked memory.

## Philosophy
PIC's philosophy is "minimalism to the extreme." The original design was created by General Instrument for I/O control, not general computing. The instruction set is tiny (as few as 35 instructions), the hardware is simple, and the cost is minimal. Every transistor must earn its place.

The architecture assumes that the application is small, cost-sensitive, and I/O-centric. It treats the programmer as someone who needs a reliable, cheap solution more than elegant code.

## Why It Came To Be
General Instrument needed a simple controller for their peripheral chips. Microchip recognized its potential and developed it into a general-purpose microcontroller line. PICs became ubiquitous in embedded systems where a few cents of cost matter and the task is simple (blinking LEDs, reading sensors, controlling motors). The simplicity made it accessible to hobbyists and small manufacturers.

## Key Characteristics
- Single working register (W)
- Harvard architecture
- Banked memory access (special registers to switch banks)
- Very small instruction set (baseline: 33 instructions, mid-range: 35)
- 8-bit data path (classic PIC), 16-bit (PIC24, dsPIC)
- Two-stage pipeline
- Watchdog timer
- Sleep mode for power saving
- Wide voltage operation
