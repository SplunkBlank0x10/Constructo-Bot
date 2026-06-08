# MSP430 Assembly

## Overview
The MSP430 is a 16-bit ultra-low-power microcontroller family developed by Texas Instruments in the late 1990s. It features a von Neumann architecture, 16 registers, and extensive clock/power management.

## Philosophy
MSP430's philosophy is "ultra-low power without compromise." TI designed the processor to consume minimal energy while remaining easy to program and capable of running from a single coin cell battery for years. The architecture assumes that many embedded devices are battery-powered and rarely need full performance.

The design treats power as a primary resource to be managed, not just an afterthought. It achieves this through a flexible clock system, instant wake-from-sleep, and efficient instruction execution.

## Why It Came To Be
The 1990s saw explosive growth in battery-powered embedded devices: medical sensors, utility meters, remote monitoring. Existing microcontrollers were either too power-hungry (8051 derivatives) or too limited (4-bit devices). TI created the MSP430 to fill the gap, offering 16-bit performance with microamp sleep currents. It became the standard for energy-harvesting and battery-operated sensor networks.

## Key Characteristics
- 16-bit RISC core
- 16 registers (R0-R15, with R0 as PC, R1 as SP, R2 as SR, R3 as constant generator)
- von Neumann architecture (unified memory space)
- 5 low-power modes
- Flexible clock system (multiple oscillators)
- Instant wake from sleep
- 16-bit timers, ADCs, comparators integrated
- JTAG and Spy-Bi-Wire debugging
