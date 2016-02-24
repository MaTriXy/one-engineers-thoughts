
# Debug

Example of how it would look at each step.

## model

Is it a function here? Or what?

## program

```coffee
private constant string 1
  text "hello world\00"
  align 1

function main
  let s, private constant string 1
  let a
    call i32 print(i8* getelementptr inbounds ([12 x i8]* 1, i32 0, i32 0))
  return i32 0
```

### llvm

```llvm
; ModuleID = 'example.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1

define i32 @main() nounwind ssp uwtable {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0))
  ret i32 0
}

declare i32 @printf(i8*, ...)
```

## assembly

### osx

```asm
;
; Constants.
;

%define syswrite 0x2000004
%define sysexit 0x2000001
%define stdout 1
%define stdin 0

;
; Write to stdout.
;

%macro write 2
  mov rsi, %1
  mov rdx, %2
  mov rax, syswrite
  mov rdi, stdout
  syscall
%endmacro

;
; Terminate program.
;

%macro exit 0
  mov rax, sysexit
  mov rdi, stdin
  syscall
%endmacro

;
; Expose `main`.
;

global main

;
; Data.
;

section .data
  string db "hello world", 13, 10, 0
  length equ $ - string

;
; Instructions.
;

section .text

  ;
  ; Main entrance point.
  ;

  main:
    write string, length
    exit
```

### linux

```asm
;
; Constants.
;

%define syswrite 4
%define sysexit 1
%define stdout 1

;
; Write to stdout.
;

%macro write 2
  mov edx, %2
  mov ecx, %1
  mov ebx, syswrite
  mov eax, stdout
  syscall
%endmacro

;
; Terminate program.
;

%macro exit 0
  mov rax, sysexit
  mov rdi, stdin
  syscall
%endmacro

;
; Expose `main`.
;

global main

;
; Data.
;

section .data
  string db "hello world", 13, 10, 0
  length equ $ - string

;
; Instructions.
;

section .text

  ;
  ; Main entrance point.
  ;

  main:
    write string, length
    exit
```

### windows

```asm
;
; Constants.
;

stdout equ -11
null equ 0

;
; Write to stdout.
;

%macro write 3
  push stdout
  call GetStdHandle

  push 0
  push %3
  push %2
  push %1
  push eax
  call WriteConsoleA
%endmacro

;
; Exit program.
;

%macro exit
  push 0
  call ExitProcess
%endmacro

;
; Expose `main`.
;

global main

;
; External dependencies.
;

extern ExitProcess
extern GetStdHandle
extern WriteConsoleA

;
; Data.
;

section .data
  string db "hello world", 13, 10, 0
  length equ $ - string

;
; Variables.
;

section .bss
  buffer resd 1

;
; Instructions.
;

section .text
  
  ;
  ; Main entrance point.
  ;

  main:
    write string, length, buffer
    exit
```

## machine

### x86

### arm
