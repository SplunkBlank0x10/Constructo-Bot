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

## Projects Per Variant

Each variant folder contains projects built step by step in increasing complexity.

### Step 0 — Orientation
- `hello.s` — print Hello World
- `print_newline.s` — print a newline
- `exit_code.s` — exit with code 42
