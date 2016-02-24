
```
registers 8
  abbr r8
  AL, CL, DL, BL, AH, CH, DH, BH, BPL, SPL, DIL and SIL

registers 16
  abbr r16
  AX, CX, DX, BX, SP, BP, SI, DI

registers 32
  abbr r32
  EAX, ECX, EDX, EBX, ESP, EBP, ESI, EDI

registers 64
  abbr r64
  RAX, RBX, RCX, RDX, RDI, RSI, RBP, RSP, R8–R15

register segment
  cs
  desc Points the segment in which the code that you are running resides.

register byte general purpose
  AL, CL, DL, BL, AH, CH, DH, BH, BPL, SPL, DIL and SIL

# mov instruction that moves data between registers and memory
mov reg, reg
mov reg, mem
mov mem, reg
mov reg, const
mov mem, const

push reg32
push mem
push con32

pop reg32
pop mem

lea reg32, mem

add reg, reg
add reg, mem
add mem, reg
add reg, con
add mem, con

sub reg, reg
sub reg, mem
sub mem, reg
sub reg, con
sub mem, con

inc reg
inc mem
dec reg
dec mem

imul reg32, reg32
imul reg32, mem
imul reg32, reg32, con
imul reg32, mem, con

idiv reg32
idiv mem

and reg, reg
and reg, mem
and mem, reg
and reg, con
and mem, con
or reg, reg
or reg, mem
or mem, reg
or reg, con
or mem, con
xor reg, reg
xor reg, mem
xor mem, reg
xor reg, con
xor mem, con

not reg
not mem

neg reg
neg mem

shl reg, con8
shl mem, con8
shl reg, cl
shl mem, cl

shr reg, con8
shr mem, con8
shr reg, cl
shr mem, cl
```

```
; loop
mov ecx, 12
your_label:
; your code
loop your_label

; or
mov ecx, 12
your_label:
; your code
dec ecx
jnz your_label
```
