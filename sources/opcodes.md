
source
  https://github.com/herumi/xbyak/blob/master/xbyak/xbyak_mnemonic.h
  https://searchcode.com/codesearch/view/20215035/

```
; 8086 opcodes
; ------------

; $Id: opcodes.dat,v 1.1.1.1 1999/10/06 10:54:46 mg Exp $
; Original author: Marius Gedminas - http://gedmin.as/disasm

; Modified by Raphael Kubo da Costa for decompify (NASM syntax)
; http://github.com/rakuco/decompify

; opcode:1 [addr-mode:1] [address:1/2] [data:1/2]
; addr-mode present if r/m, r, mem, seg
; address present if addr-mode mod byte contains displacement
; data present if imm

; call/jump?

; syntax:
;   hex  opcode  arg1,arg2
; argX can be
;   r/m8
;   r/m16
;   r8
;   r16
;   seg
;   imm8
;   imm16
;   mem8
;   mem16
;   mem32
;   memoffs8
;   memoffs16
;   near
;   far
;   short
;   one of registers (AX, BX, ... Al, ... ES, ...)
;   constant (1, 3)

00  add r/m8,r8
01  add r/m16,r16
02  add r8,r/m8
03  add r16,r/m16
04  add AL,imm8
05  add AX,imm16
06  push  ES
07  pop ES
08  or  r/m8,r8
09  or  r/m16,r16
0a  or  r8,r/m8
0b  or  r16,r/m16
0c  or  AL,imm8
0d  or  AX,imm16
0e  push  CS
;0f pop CS  ; used for different purposes on later CPUs
10  adc r/m8,r8
11  adc r/m16,r16
12  adc r8,r/m8
13  adc r16,r/m16
14  adc AL,imm8
15  adc AX,imm16
16  push  SS
17  pop SS
18  sbb r/m8,r8
19  sbb r/m16,r16
1a  sbb r8,r/m8
1b  sbb r16,r/m16
1c  sbb AL,imm8
1d  sbb AX,imm16
1e  push  DS
1f  pop DS
20  and r/m8,r8
21  and r/m16,r16
22  and r8,r/m8
23  and r16,r/m16
24  and AL,imm8
25  and AX,imm16
26  seges   prefix ; XXX: does not exist in nasm
27  daa
28  sub r/m8,r8
29  sub r/m16,r16
2a  sub r8,r/m8
2b  sub r16,r/m16
2c  sub AL,imm8
2d  sub AX,imm16
2e  segcs   prefix
2f  das
30  xor r/m8,r8
31  xor r/m16,r16
32  xor r8,r/m8
33  xor r16,r/m16
34  xor AL,imm8
35  xor AX,imm16
36  segss   prefix
37  aaa
38  cmp r/m8,r8
39  cmp r/m16,r16
3a  cmp r8,r/m8
3b  cmp r16,r/m16
3c  cmp AL,imm8
3d  cmp AX,imm16
3e  segds   prefix
3f  aas
40  inc AX
41  inc CX
42  inc DX
43  inc BX
44  inc SP
45  inc BP
46  inc SI
47  inc DI
48  dec AX
49  dec CX
4a  dec DX
4b  dec BX
4c  dec SP
4d  dec BP
4e  dec SI
4f  dec DI
50  push  AX
51  push  CX
52  push  DX
53  push  BX
54  push  SP
55  push  BP
56  push  SI
57  push  DI
58  pop AX
59  pop CX
5a  pop DX
5b  pop BX
5c  pop SP
5d  pop BP
5e  pop SI
5f  pop DI
;60-6f: reserved
70  jo  short
71  jno short
72  jb  short
73  jae short
74  jz  short
75  jnz short
76  jbe short
77  ja  short
78  js  short
79  jns short
7a  jpe short
7b  jpo short
7c  jl  short
7d  jge short
7e  jle short
7f  jg  short
80  <ArOp>  r/m8,imm8
81  <ArOp>  r/m16,imm16
;82: unused
83  <ArOp>  r/m16,simm8
; <ArOp>:
;        000  add
;  001  or
;        010  adc
;        011  sbb
;        100  and
;        101  sub
;        110  xor
;        111  cmp
84  test  r/m8,r8
85  test  r/m16,r16
86  xchg  r8,r/m8
87  xchg  r16,r/m16
88  mov r/m8,r8
89  mov r/m16,r16
8a  mov r8,r/m8
8b  mov r16,r/m16
8c  mov r/m16,seg
8d  lea r16,mem8    ; not exactly mem8, but works
8e  mov seg,r/m16
8f  pop r/m16
90  nop
91  xchg  AX,CX
92  xchg  AX,DX
93  xchg  AX,BX
94  xchg  AX,SP
95  xchg  AX,BP
96  xchg  AX,SI
97  xchg  AX,DI
98  cbw
99  cwd
9a  'call word' far
9b  wait
9c  pushf
9d  popf
9e  sahf
9f  lahf
a0  mov AL,memoffs8
a1  mov AX,memoffs16
a2  mov memoffs8,AL
a3  mov memoffs16,AX
a4  movsb
a5  movsw
a6  cmpsb
a7  cmpsw
a8  test  AL,imm8
a9  test  AX,imm16
aa  stosb
ab  stosw
ac  lodsb
ad  lodsw
ae  scasb
af  scasw
b0  mov AL,imm8
b1  mov CL,imm8
b2  mov DL,imm8
b3  mov BL,imm8
b4  mov AH,imm8
b5  mov CH,imm8
b6  mov DH,imm8
b7  mov BH,imm8
b8  mov AX,imm16
b9  mov CX,imm16
ba  mov DX,imm16
bb  mov BX,imm16
bc  mov SP,imm16
bd  mov BP,imm16
be  mov SI,imm16
bf  mov DI,imm16
; c0-c1
c2  retn  imm16
c3  retn
c4  les r16,mem32
c5  lds r16,mem32
c6  mov mem8,imm8
c7  mov mem16,imm16
; c8-c9
ca  retf  imm16
cb  retf
cc  int 3
cd  int imm8
ce  into
cf  iret
d0  <ShfOp> r/m8,1
d1  <ShfOp> r/m16,1
d2  <ShfOp> r/m8,CL
d3  <ShfOp> r/m16,CL
; <ShfOp>:
;        000  rol
;  001  ror
;        010  rcl
;        011  rcr
;        100  shl ; or sal
;        101  shr
;        110  
;        111  sar
d4  aam imm8  ; special
d5  aad imm8  ; special
; d6  salc    ; undocummented
d7  xlatb
; d8-df: ESC x (FPU)
e0  loopnz  short
e1  loopz short
e2  loop  short
e3  jcxz  short
e4  in  AL,imm8
e5  in  AX,imm8
e6  out imm8,AL
e7  out imm8,AX
e8  call  near
e9  jmp near
ea  jmp far
eb  'jmp short' short
ec  in  AL,DX
ed  in  AX,DX
ee  out DX,AL
ef  out DX,AX
f0  lock ; decompify - no need for it to be special
; f1
f2  repne ; decompify - no need for it to be special
f3  rep ; decompify - no need for it to be special
f4  hlt
f5  cmc
f6  <Grp1>  r/m8
f7  <Grp1>  r/m16
; <Grp1>:
;        000  test r/m,imm
;  001  
;        010  not
;        011  neg
;        100  mul
;        101  imul
;        110  div
;        111  idiv
f8  clc
f9  stc
fa  cli
fb  sti
fc  cld
fd  std
fe  <Grp2>  r/m8
; <Grp2>:            
;        000  inc
;  001  dec
;        010
;        011
;        100
;        101
;        110
;        111
ff  <Grp3>  r/m16
; <Grp3>:    
;        000  inc
;  001  dec
;        010  call  word ptr [...]
;        011  call  dword ptr [...]
;        100  jmp word ptr [...]
;        101  jmp dword ptr [...]
;        110  push
;        111  

```
