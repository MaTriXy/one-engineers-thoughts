opcode
opcode field
addressing-form specifier byte (ModR/M byte following the primary opcode). The ModR/M byte contains three fields of information.
- The “Opcode” column in the table above shows the object code produced for each form of the instruction.
 ASM386 program

column opcode
  value REX.W
    description Indicates the use of a REX prefix that affects operand size or instruction semantics. The ordering of the REX prefix and other optional/mandatory instruction prefixes are discussed Chapter 2. Note that REX prefixes that promote legacy instructions to 64-bit behavior are not listed explicitly in the opcode column.
  value /digit
    description A digit between 0 and 7 indicates that the ModR/M byte of the instruction uses only the r/m (register or memory) operand. The reg field contains the digit that provides an extension to the instruction's opcode.
  value /r
    description Indicates that the ModR/M byte of the instruction contains a register operand and an r/m operand.
  value cb, cw, cd, cp, co, ct
    description A 1-byte (cb), 2-byte (cw), 4-byte (cd), 6-byte (cp), 8-byte (co) or 10-byte (ct) value following the opcode. This value is used to specify a code offset and possibly a new value for the code segment register.
  value +rb, +rw, +rd, +ro
    description A register code, from 0 through 7, added to the hexadecimal byte given at the left of the plus sign to form a single opcode byte. See Table 3-1 for the codes. The +ro columns in the table are applicable only in 64-bit mode.
  value +i
    description A number used in floating-point instructions when one of the operands is ST(i) from the FPU register stack. The number i (which can range from 0 to 7) is added to the hexadecimal byte given at the left of the plus sign to form a single opcode byte.
  value ib, iw, id, io
    description A 1-byte (ib), 2-byte (iw), 4-byte (id) or 8-byte (io) immediate operand to the instruction that follows the opcode, ModR/M bytes or scale-indexing bytes. The opcode determines if the operand is a signed value. All words, doublewords and quadwords are given with the low-order byte first.
    example 05 ib, add ...

column instruction
  value r/m8
    description A byte operand that is either the contents of a byte general-purpose register (AL, CL, DL, BL, AH, CH, DH, BH, BPL, SPL, DIL and SIL) or a byte from memory. Byte registers R8L - R15L are available using REX.R in 64-bit mode.
    acceptable
      register
        AL, CL, DL, BL, AH, CH, DH, BH, BPL, SPL, DIL and SIL
      memory byte
  value r32
    description One of the doubleword general-purpose registers: EAX, ECX, EDX, EBX, ESP, EBP, ESI, EDI; or one of the doubleword registers (R8D - R15D) available when using REX.R in 64-bit mode.
    acceptable
      register
        EAX, ECX, EDX, EBX, ESP, EBP, ESI, EDI
        R8D - R15D, when using REX.R in mode bit 64

So, you have to figure out what values to plug in based on what registers you are using in your code (from optimization). So first have to figure out what registers to use, then can just directly map to opcode.

section operation
