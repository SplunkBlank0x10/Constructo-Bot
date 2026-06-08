# Intel 8051 Assembly

## Overview
The Intel 8051 is an 8-bit microcontroller introduced in 1980. It features a Harvard architecture with separate program and data memory spaces, bit-addressable RAM, and four register banks.

## Philosophy
The 8051's philosophy is "integration over simplicity." Intel designed it as a single-chip solution for control applications, packing CPU, RAM, ROM, timers, serial port, and I/O onto one die. The architecture assumes that the microcontroller replaces discrete logic, not a full computer.

The design treats bit manipulation as a first-class operation because control applications frequently need to set, clear, and test individual bits. It also assumes that interrupts are common and need fast context switching.

## Why It Came To Be
Intel's 8048 microcontroller was successful but limited. The 8051 was designed to be significantly more capable while remaining a single-chip solution. It became the most widely used microcontroller architecture in history, with thousands of variants produced by dozens of manufacturers. Its longevity is remarkable: 40+ years after introduction, 8051 derivatives are still manufactured.

## Key Characteristics
- 8-bit accumulator (A) and B register
- 8-bit program status word (PSW)
- 16-bit data pointer (DPTR)
- 8-bit stack pointer (SP)
- 4 register banks (8 registers each, selected by PSW bits)
- 128 bytes internal RAM (256 in 8052), bit-addressable
- 4KB internal ROM/EPROM (8051)
- 64KB external program memory space
- 64KB external data memory space
- Boolean processor (bit operations)
- 2 timers/counters, UART, 4 8-bit I/O ports
