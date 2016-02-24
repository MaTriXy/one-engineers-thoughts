
```
Instruction Prefix                0 or 1 Byte
Address-Size Prefix               0 or 1 Byte
Operand-Size Prefix               0 or 1 Byte
Segment Prefix                    0 or 1 Byte
Opcode                            1 or 2 Byte
Mod R/M                           0 or 1 Byte
SIB, Scale Index Base (386+)      0 or 1 Byte
Displacement                      0, 1, 2 or 4 Byte (4 only 386+)
Immediate                         0, 1, 2 or 4 Byte (4 only 386+)

Format of Postbyte(Mod R/M from Intel-Doku)
------------------------------------------
MM RRR MMM

MM  - Memory addressing mode
RRR - Register operand address
MMM - Memory operand address

RRR Register Names
Filds  8bit  16bit  32bit
000    AL     AX     EAX
001    CL     CX     ECX
010    DL     DX     EDX
011    Bl     BX     EBX
100    AH     SP     ESP
101    CH     BP     EBP
110    DH     SI     ESI
111    BH     DI     EDI

---

16bit memory (No 32 bit memory address prefix)
MMM   Default MM Field
Field Sreg     00        01          10             11=MMM is reg
000   DS       [BX+SI]   [BX+SI+o8]  [BX+SI+o16]
001   DS       [BX+DI]   [BX+DI+o8]  [BX+DI+o16]
010   SS       [BP+SI]   [BP+SI+o8]  [BP+SI+o16]
011   SS       [BP+DI]   [BP+DI+o8]  [BP+DI+o16]
100   DS       [SI]      [SI+o8]     [SI+o16]
101   DS       [DI]      [DI+o8]     [SI+o16]
110   SS       [o16]     [BP+o8]     [BP+o16]
111   DS       [BX]      [BX+o8]     [BX+o16]
Note: MMM=110,MM=0 Default Sreg is DS !!!!

32bit memory (Has 67h 32 bit memory address prefix)
MMM   Default MM Field
Field Sreg     00        01          10             11=MMM is reg
000   DS       [EAX]     [EAX+o8]    [EAX+o32]
001   DS       [ECX]     [ECX+o8]    [ECX+o32]
010   DS       [EDX]     [EDX+o8]    [EDX+o32]
011   DS       [EBX]     [EBX+o8]    [EBX+o32]
100   SIB      [SIB]     [SIB+o8]    [SIB+o32]
101   SS       [o32]     [EBP+o8]    [EBP+o32]
110   DS       [ESI]     [ESI+o8]    [ESI+o32]
111   DS       [EDI]     [EDI+o8]    [EDI+o32]
Note: MMM=110,MM=0 Default Sreg is DS !!!!

---

SIB is (Scale/Base/Index)
SS BBB III
Note: SIB address calculated as:
<sib address>=<Base>+<Index>*(2^(Scale))

Fild   Default Base
BBB    Sreg    Register   Note
000    DS      EAX
001    DS      ECX
010    DS      EDX
011    DS      EBX
100    SS      ESP
101    DS      o32        if MM=00 (Postbyte)
SS      EBP        if MM<>00 (Postbyte)
110    SS      ESI
111    DS      EDI

Fild  Index
III   register   Note
000   EAX
001   ECX
010   EDX
011   EBX
100              never Index SS can be 00
101   EBP
110   ESI
111   EDI

Fild Scale coefficient
SS   =2^(SS)
00   1
01   2
10   4
11   8
```
