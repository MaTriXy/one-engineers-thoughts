encoding http://www.c-jump.com/CIS77/CPU/x86/lecture.html#X77_0010_real_encoding
encoding http://www.mlsite.net/8086/8086_table.txt
encoding http://www.mlsite.net/8086/
encoding http://www.scs.stanford.edu/05au-cs240c/lab/i386/appa.htm

# 0x00 - 0x0f
opcode 00
  add Eb,Gb

opcode 01
  add Ev,Gv

opcode 02
  add Gb,Eb

opcode 03
  add Gv,Ev

opcode 04
  add AL,Ib

opcode 05
  add rAX,Iz

opcode 06
  push ES (i64)

opcode 07
  pop ES (i64)

opcode 08
  or Eb,Gb

opcode 09
  or Ev,Gv

opcode 0a
  or Gb,Eb

opcode 0b
  or Gv,Ev

opcode 0c
  or AL,Ib

opcode 0d
  or rAX,Iz

opcode 0e
  push CS (i64)

opcode 0f
  escape # 2-byte escape

# 0x10 - 0x1f
opcode 10
  adc Eb,Gb

opcode 11
  adc Ev,Gv

opcode 12
  adc Gb,Eb

opcode 13
  adc Gv,Ev

opcode 14
  adc AL,Ib

opcode 15
  adc rAX,Iz

opcode 16
  push SS (i64)

opcode 17
  pop SS (i64)

opcode 18
  sbb Eb,Gb

opcode 19
  sbb Ev,Gv

opcode 1a
  sbb Gb,Eb

opcode 1b
  sbb Gv,Ev

opcode 1c
  sbb AL,Ib

opcode 1d
  sbb rAX,Iz

opcode 1e
  push DS (i64)

opcode 1f
  pop DS (i64)

# 0x20 - 0x2f
opcode 20
  and Eb,Gb

opcode 21
  and Ev,Gv

opcode 22
  and Gb,Eb

opcode 23
  and Gv,Ev

opcode 24
  and AL,Ib

opcode 25
  and rAx,Iz

opcode 26
  SEG=ES (Prefix)

opcode 27
  DAA (i64)

opcode 28
  sub Eb,Gb

opcode 29
  sub Ev,Gv

opcode 2a
  sub Gb,Eb

opcode 2b
  sub Gv,Ev

opcode 2c
  sub AL,Ib

opcode 2d
  sub rAX,Iz

opcode 2e
  SEG=CS (Prefix)

opcode 2f
  DAS (i64)

# 0x30 - 0x3f
opcode 30
  xor Eb,Gb

opcode 31
  xor Ev,Gv

opcode 32
  xor Gb,Eb

opcode 33
  xor Gv,Ev

opcode 34
  xor AL,Ib

opcode 35
  xor rAX,Iz

opcode 36
  SEG=SS (Prefix)

opcode 37
  AAA (i64)

opcode 38
  cmp Eb,Gb

opcode 39
  cmp Ev,Gv

opcode 3a
  cmp Gb,Eb

opcode 3b
  cmp Gv,Ev

opcode 3c
  cmp AL,Ib

opcode 3d
  cmp rAX,Iz

opcode 3e
  SEG=DS (Prefix)

opcode 3f
  AAS (i64)

# 0x40 - 0x4f
opcode 40
  inc eAX (i64) | REX (o64)

opcode 41
  inc eCX (i64) | REX.B (o64)

opcode 42
  inc eDX (i64) | REX.X (o64)

opcode 43
  inc eBX (i64) | REX.XB (o64)

opcode 44
  inc eSP (i64) | REX.R (o64)

opcode 45
  inc eBP (i64) | REX.RB (o64)

opcode 46
  inc eSI (i64) | REX.RX (o64)

opcode 47
  inc eDI (i64) | REX.RXB (o64)

opcode 48
  dec eAX (i64) | REX.W (o64)

opcode 49
  dec eCX (i64) | REX.WB (o64)

opcode 4a
  dec eDX (i64) | REX.WX (o64)

opcode 4b
  dec eBX (i64) | REX.WXB (o64)

opcode 4c
  dec eSP (i64) | REX.WR (o64)

opcode 4d
  dec eBP (i64) | REX.WRB (o64)

opcode 4e
  dec eSI (i64) | REX.WRX (o64)

opcode 4f
  dec eDI (i64) | REX.WRXB (o64)

# 0x50 - 0x5f
opcode 50
  push rAX/r8 (d64)

opcode 51
  push rCX/r9 (d64)

opcode 52
  push rDX/r10 (d64)

opcode 53
  push rBX/r11 (d64)

opcode 54
  push rSP/r12 (d64)

opcode 55
  push rBP/r13 (d64)

opcode 56
  push rSI/r14 (d64)

opcode 57
  push rDI/r15 (d64)

opcode 58
  pop rAX/r8 (d64)

opcode 59
  pop rCX/r9 (d64)

opcode 5a
  pop rDX/r10 (d64)

opcode 5b
  pop rBX/r11 (d64)

opcode 5c
  pop rSP/r12 (d64)

opcode 5d
  pop rBP/r13 (d64)

opcode 5e
  pop rSI/r14 (d64)

opcode 5f
  pop rDI/r15 (d64)

# 0x60 - 0x6f
opcode 60
  pushA/pushAD (i64)

opcode 61
  popA/popAD (i64)

opcode 62
  BOUND Gv,Ma (i64)

opcode 63
  ARPL Ew,Gw (i64) | movSXD Gv,Ev (o64)

opcode 64
  SEG=FS (Prefix)

opcode 65
  SEG=GS (Prefix)

opcode 66
  Operand-Size (Prefix)

opcode 67
  address-Size (Prefix)

opcode 68
  push Iz (d64)

opcode 69
  imul Gv,Ev,Iz

opcode 6a
  push Ib (d64)

opcode 6b
  imul Gv,Ev,Ib

opcode 6c
  inS/inSB Yb,DX

opcode 6d
  inS/inSW/inSD Yz,DX

opcode 6e
  outS/outSB DX,Xb

opcode 6f
  outS/outSW/outSD DX,Xz

# 0x70 - 0x7f
opcode 70
  jo jb

opcode 71
  jno jb

opcode 72
  jb/JNAE/JC jb

opcode 73
  jnb/JAE/JNC jb

opcode 74
  jz/je jb

opcode 75
  JNZ/JNE jb

opcode 76
  jbE/JNA jb

opcode 77
  jnbE/JA jb

opcode 78
  js jb

opcode 79
  jns jb

opcode 7a
  jp/jpe jb

opcode 7b
  jnp/jpo jb

opcode 7c
  jl/jnge jb

opcode 7d
  jnl/jge jb

opcode 7e
  jlE/jng jb

opcode 7f
  jnlE/jg jb

# 0x80 - 0x8f
opcode 80
  Grp1 Eb,Ib (1A)

opcode 81
  Grp1 Ev,Iz (1A)

opcode 82
  Grp1 Eb,Ib (1A),(i64)

opcode 83
  Grp1 Ev,Ib (1A)

opcode 84
  test Eb,Gb

opcode 85
  test Ev,Gv

opcode 86
  xchg Eb,Gb

opcode 87
  xchg Ev,Gv

opcode 88
  mov Eb,Gb

opcode 89
  mov Ev,Gv

opcode 8a
  mov Gb,Eb

opcode 8b
  mov Gv,Ev

opcode 8c
  mov Ev,Sw

opcode 8d
  LEA Gv,M

opcode 8e
  mov Sw,Ew

opcode 8f
  Grp1A (1A) | pop Ev (d64)

# 0x90 - 0x9f
opcode 90
  NOP | PAUSE (F3) | xchg r8,rAX

opcode 91
  xchg rCX/r9,rAX

opcode 92
  xchg rDX/r10,rAX

opcode 93
  xchg rBX/r11,rAX

opcode 94
  xchg rSP/r12,rAX

opcode 95
  xchg rBP/r13,rAX

opcode 96
  xchg rSI/r14,rAX

opcode 97
  xchg rDI/r15,rAX

opcode 98
  CBW/CWDE/CDQE

opcode 99
  CWD/CDQ/CQO

opcode 9a
  callF Ap (i64)

opcode 9b
  FWAIT/WAIT

opcode 9c
  pushF/D/Q Fv (d64)

opcode 9d
  popF/D/Q Fv (d64)

opcode 9e
  SAHF

opcode 9f
  LAHF

# 0xa0 - 0xaf
opcode a0
  mov AL,Ob

opcode a1
  mov rAX,Ov

opcode a2
  mov Ob,AL

opcode a3
  mov Ov,rAX

opcode a4
  movS/B Yb,Xb

opcode a5
  movS/W/D/Q Yv,Xv

opcode a6
  cmpS/B Xb,Yb

opcode a7
  cmpS/W/D Xv,Yv

opcode a8
  test AL,Ib

opcode a9
  test rAX,Iz

opcode aa
  STOS/B Yb,AL

opcode ab
  STOS/W/D/Q Yv,rAX

opcode ac
  LODS/B AL,Xb

opcode ad
  LODS/W/D/Q rAX,Xv

opcode ae
  SCAS/B AL,Yb

# next instruction but Yv is correct
opcode af
  SCAS/W/D/Q rAX,Yv

# 0xb0 - 0xbf
opcode b0
  mov AL/R8L,Ib

opcode b1
  mov CL/R9L,Ib

opcode b2
  mov DL/R10L,Ib

opcode b3
  mov BL/R11L,Ib

opcode b4
  mov AH/R12L,Ib

opcode b5
  mov CH/R13L,Ib

opcode b6
  mov DH/R14L,Ib

opcode b7
  mov BH/R15L,Ib

opcode b8
  mov rAX/r8,Iv

opcode b9
  mov rCX/r9,Iv

opcode ba
  mov rDX/r10,Iv

opcode bb
  mov rBX/r11,Iv

opcode bc
  mov rSP/r12,Iv

opcode bd
  mov rBP/r13,Iv

opcode be
  mov rSI/r14,Iv

opcode bf
  mov rDI/r15,Iv

# 0xc0 - 0xcf
opcode c0
  Grp2 Eb,Ib (1A)

opcode c1
  Grp2 Ev,Ib (1A)

opcode c2
  RETN Iw (f64)

opcode c3
  RETN

opcode c4
  LES Gz,Mp (i64) | VEX+2byte (Prefix)

opcode c5
  LDS Gz,Mp (i64) | VEX+1byte (Prefix)

opcode c6
  Grp11A Eb,Ib (1A)

opcode c7
  Grp11B Ev,Iz (1A)

opcode c8
  ENTER Iw,Ib

opcode c9
  LEAVE (d64)

opcode ca
  RETF Iw

opcode cb
  RETF

opcode cc
  inT3

opcode cd
  inT Ib

opcode ce
  inTO (i64)

opcode cf
  IRET/D/Q

# 0xd0 - 0xdf
opcode d0
  Grp2 Eb,1 (1A)

opcode d1
  Grp2 Ev,1 (1A)

opcode d2
  Grp2 Eb,CL (1A)

opcode d3
  Grp2 Ev,CL (1A)

opcode d4
  AAM Ib (i64)

opcode d5
  AAD Ib (i64)

opcode d7
  XLAT/XLATB

opcode d8
  esc

opcode d9
  esc

opcode da
  esc

opcode db
  esc

opcode dc
  esc

opcode dd
  esc

opcode de
  esc

opcode df
  esc

# 0xe0 - 0xef
opcode e0
  loopne/loopnz jb (f64)

opcode e1
  loopE/loopz jb (f64)

opcode e2
  loop jb (f64)

opcode e3
  JrCXZ jb (f64)

opcode e4
  in AL,Ib

opcode e5
  in eAX,Ib

opcode e6
  out Ib,AL

opcode e7
  out Ib,eAX

opcode e8
  call jz (f64)

opcode e9
  jmp-near jz (f64)

opcode ea
  jmp-far Ap (i64)

opcode eb
  jmp-short jb (f64)

opcode ec
  in AL,DX

opcode ed
  in eAX,DX

opcode ee
  out DX,AL

opcode ef
  out DX,eAX

# 0xf0 - 0xff
opcode f0
  lock (Prefix)

f1:
opcode f2
  REPNE (Prefix) | XACQUIRE (Prefix)

opcode f3
  REP/REPE (Prefix) | XRELEASE (Prefix)

opcode f4
  HLT

opcode f5
  CMC

opcode f6
  Grp3_1 Eb (1A)

opcode f7
  Grp3_2 Ev (1A)

opcode f8
  CLC

opcode f9
  STC

opcode fa
  CLI

opcode fb
  STI

opcode fc
  CLD

opcode fd
  STD

opcode fe
  Grp4 (1A)

opcode ff
  Grp5 (1A)
