# Assembly

This directory covers Assembly language across all major architectures and variants — historical, modern, embedded, and experimental.

## Structure

```
Assembly/
├── Documents/
│   ├── Notes/
│   │   └── README.md
│   └── Comparisons/
├── AArch64/
├── ARM/
├── ARM-Thumb/
├── AVR/
├── ColdFire/
├── DEC-Alpha/
├── DEC-PDP-11/
├── DEC-VAX/
├── IBM-System-360-370/
├── IBM-z-Architecture/
├── Intel-8051/
├── Intel-8080/
├── Intel-8085/
├── Itanium-IA64/
├── LoongArch/
├── MIPS/
├── MIPS64/
├── MOS-6502/
├── MSP430/
├── Motorola-6800/
├── Motorola-68000/
├── PA-RISC/
├── PIC/
├── POWER-ISA/
├── PTX/
├── PowerPC/
├── RDNA-GCN/
├── RISC-V/
├── SPARC/
├── SPARC-LEON/
├── SPARCv9/
├── SuperH-SH/
├── WDC-65C02/
├── WDC-65816/
├── WebAssembly-WAT/
├── Xtensa/
├── Z80/
├── Z8000/
├── x86/
└── x86-64/
```

## Variants Covered

| Family | Variants |
|--------|----------|
| x86 | x86, x86-64 |
| ARM | ARM, AArch64, ARM-Thumb |
| RISC-V | RISC-V |
| MIPS | MIPS, MIPS64 |
| Motorola | Motorola-68000, Motorola-6800, ColdFire |
| MOS Technology | MOS-6502, WDC-65C02, WDC-65816 |
| Zilog | Z80, Z8000 |
| Embedded | AVR, PIC, MSP430, Intel-8051, Intel-8080, Intel-8085 |
| IBM / Mainframe | IBM-System-360-370, IBM-z-Architecture |
| PowerPC / POWER | PowerPC, POWER-ISA |
| SPARC | SPARC, SPARCv9, SPARC-LEON |
| DEC / Historical | DEC-Alpha, DEC-PDP-11, DEC-VAX |
| HP | PA-RISC, Itanium-IA64 |
| GPU / Parallel | PTX, RDNA-GCN |
| Other | LoongArch, Xtensa, SuperH-SH, WebAssembly-WAT |

## Cross-Cutting Comparison Tables

### By Design Philosophy

| Philosophy | Architectures |
|-----------|--------------|
| Hardware complexity hides software complexity | x86, x86-64, VAX, z/Architecture |
| Compiler does the heavy lifting | MIPS, RISC-V, Alpha, PA-RISC |
| Power efficiency above all | ARM, AArch64, MSP430, AVR |
| Minimalism to survive | 6502, 65C02, PIC, 8051 |
| Openness and freedom | RISC-V, OpenPOWER, LEON (VHDL) |
| Explicit parallelism | Itanium, GPU architectures |
| Fault tolerance | z/Architecture, SPARC LEON |
| Configurability | Xtensa, RISC-V (extensions) |

### By Register Model

| Model | Architectures |
|-------|--------------|
| Single accumulator | 6502, 65C02, 8051, PIC |
| Two accumulators | 6800, Z80 (A + alternates) |
| Many general-purpose | RISC-V, MIPS, ARM, Alpha, PowerPC |
| Register windows | SPARC, SPARCv9 |
| Register banks | 8051, PIC |
| Unified address/data | ColdFire, 68000 |
| Stack machine | WebAssembly |

### By Memory Architecture

| Type | Architectures |
|------|--------------|
| Von Neumann (unified) | x86, ARM, 68000, VAX, PDP-11, MSP430 |
| Harvard (separate) | AVR, PIC, 8051, ARM Cortex-M |
| Modified Harvard | ARM9+, Cortex-A, modern DSPs |
| Segmented | x86 (real mode), Z8000 |
| Banked | 6502, 65816, PIC, Game Boy |
| Flat 64-bit | x86-64, AArch64, RISC-V64, Alpha |

### By Instruction Encoding

| Encoding | Architectures |
|----------|--------------|
| Fixed 32-bit | MIPS, ARM, RISC-V, SPARC, Alpha |
| Fixed 16-bit | SuperH, ARM-Thumb (subset) |
| Variable-length | x86, x86-64, 68000, VAX |
| Native compressed | SuperH, RISC-V C, Xtensa |
| Bundled (VLIW/EPIC) | Itanium |

### By Branching Style

| Style | Architectures |
|-------|--------------|
| Condition codes on every instruction | ARM32, x86, 68000, Z80, 6502 |
| Compare into registers | MIPS, Alpha, RISC-V |
| Predication | ARM32 (most), Itanium, ARM-Thumb (IT block) |
| Branch delay slots | MIPS, SPARC, SuperH, PA-RISC |
| No delay slots | RISC-V, AArch64, x86, LoongArch |
| Explicit parallel bundles | Itanium |

### By Era of Dominance

| Era | Dominant Architectures |
|-----|----------------------|
| 1970s | 6800, 6502, 8080, PDP-11 |
| Late 1970s | 68000, 8086, Z80, 8051, VAX |
| 1980s | ARM, MIPS, SPARC, 68020, 80386 |
| 1990s | PowerPC, Alpha, PA-RISC, Pentium, SuperH |
| 2000s | x86-64, Itanium, ARM9/10/11, AVR, PIC |
| 2010s | AArch64, RISC-V, ARM Cortex, GPU compute |
| 2020s | RISC-V, LoongArch, ARMv9, advanced GPUs |

### By Primary Application Domain

| Domain | Best Examples |
|--------|--------------|
| Mobile / Battery-powered | ARM, AArch64, MSP430, RISC-V |
| Desktop / Laptop | x86-64, ARM (Apple Silicon) |
| Server / Enterprise | x86-64, POWER, z/Architecture, ARM Neoverse |
| Embedded / MCU | AVR, PIC, 8051, MSP430, RISC-V, ColdFire |
| Gaming / Graphics | x86-64, ARM, custom (PlayStation, Xbox, Nintendo) |
| GPU / Accelerator | PTX, RDNA/GCN, CUDA |
| Space / Radiation | SPARC LEON, rad-hard PowerPC |
| Education / Research | RISC-V, MIPS, 6502, PDP-11 |
| Web / Sandbox | WebAssembly |
| Mainframe / Finance | z/Architecture |

## Projects Per Variant

Each variant folder contains projects built step by step in increasing complexity.

### Step 0 — Orientation
- `hello.s` — print Hello World
- `print_newline.s` — print a newline
- `exit_code.s` — exit with code 42
