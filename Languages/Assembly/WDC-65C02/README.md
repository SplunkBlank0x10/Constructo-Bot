# WDC 65C02 Assembly

## Overview
The WDC 65C02 is a CMOS reimplementation of the MOS 6502 microprocessor, produced by Western Design Center starting in 1978. It adds new instructions, fixes hardware bugs, and dramatically reduces power consumption while maintaining full binary compatibility with the original NMOS 6502.

## Philosophy
The 65C02's philosophy is "evolution, not abandonment." Its creators recognized that the MOS 6502 had become a de facto standard with a massive installed base of software, hardware designs, and programmer expertise. Rather than forcing users to start over, they preserved everything that worked and carefully added what was missing. The result is a processor that feels familiar to 6502 programmers while quietly removing frustrations that had been tolerated for years.

The architecture assumes that compatibility is sacred but that stagnation is unnecessary. New instructions fill genuine gaps in the original design—an unconditional branch, stack transfers for index registers, direct zero stores—without bloating the core. The shift from power-hungry NMOS to cool-running CMOS was not merely a process shrink; it redefined where the 6502 could live, opening doors to battery-powered portable devices that would have been impossible with the original.

## Why It Came To Be
The original 6502 was built in NMOS, a technology that required significant static current draw and ran hot. By the late 1970s, CMOS processes had matured enough to offer a compelling alternative: near-zero static power consumption, wider voltage tolerance, and better noise immunity. Western Design Center founder Bill Mensch, one of the original 6502 designers at MOS Technology, saw an opportunity to resurrect and refine his creation.

Mensch believed the 6502 still had untapped potential. The personal computer boom had created demand for low-cost, low-power processors in emerging categories—laptops, handheld devices, industrial controllers—that the NMOS 6502 was ill-suited to serve. The 65C02 became the heart of the Apple IIc, the enhanced Apple IIe, and countless embedded systems. It proved that a well-loved architecture could be modernized without alienating its community, a lesson few subsequent designs have managed as gracefully.

## Key Characteristics
- Full binary compatibility with the NMOS 6502; existing software runs unchanged
- New instructions: `BRA` (unconditional branch), `PHX`/`PHY` (push index registers), `PLX`/`PLY` (pull index registers), `STZ` (store zero to memory), `TRB`/`TSB` (test and reset/set bits)
- Additional addressing modes for existing instructions, including zero-page indirect
- Hardware bug fixes: decimal mode flags now correct after arithmetic, indirect jump page-boundary bug (`JMP ($xxFF)`) resolved
- CMOS fabrication enabling dramatically lower power consumption and wider operating voltage range
- `WAI` (wait for interrupt) and `STP` (stop) instructions for software-controlled power management
- Enhanced noise immunity and reliability compared to NMOS predecessor
