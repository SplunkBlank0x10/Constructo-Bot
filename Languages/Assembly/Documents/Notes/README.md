# Assembly

This directory covers Assembly language across all major architectures and variants — historical, modern, embedded, and experimental.

## Structure

```
Assembly/
├── Documents/
│   ├── Notes/
│   │   └── README.md
│   └── Comparisons/
├── x86-64/
├── ARM/
├── AArch64/
├── ARM-Thumb/
├── RISC-V/
├── MIPS/
├── MIPS64/
├── Motorola-68000/
├── Motorola-6800/
├── ColdFire/
├── MOS-6502/
├── WDC-65C02/
├── WDC-65816/
├── Z80/
├── Z8000/
├── AVR/
├── PIC/
├── MSP430/
├── Intel-8051/
├── Intel-8080/
├── Intel-8085/
├── IBM-System-360-370/
├── IBM-z-Architecture/
├── PowerPC/
├── POWER-ISA/
├── SPARC/
├── SPARCv9/
├── DEC-Alpha/
├── DEC-PDP-11/
├── DEC-VAX/
├── PA-RISC/
├── Itanium-IA64/
├── PTX/
├── RDNA-GCN/
├── LoongArch/
├── Xtensa/
├── SPARC-LEON/
├── SuperH-SH/
└── WebAssembly-WAT/
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
