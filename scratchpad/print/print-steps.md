
# Examples

Example of how it would look at each step.

```coffee
main print 'hello world'
```

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

## assembly x86

This is what the actual assembly model would look like, after it replaces the variables like `sysexit` with their integer values, and does any simplification and such.

### osx

```asm
export main

data string, db "hello world", 13, 10, 0
data length, equ $ - string

function main
  mov rsi, string
  mov rdx, length
  mov rax, 0x2000004
  mov rdi, 1
  syscall
```

### linux

```asm
export main

data string, db "hello world", 13, 10, 0
data length, equ $ - string

function main
  mov edx, length
  mov ecx, string
  mov ebx, 4
  mov eax, 1
  syscall
```

### windows

```asm
export main

external 'ExitProcess'
external 'GetStdHandle'
external 'WriteConsoleA'

data string, db "hello world", 13, 10, 0
data length, equ $ - string

variable buffer, resd 1

function main
  push -11
  call 'GetStdHandle'
  push 0
  push buffer
  push length
  push string
  push eax
  call 'WriteConsoleA'
```

## machine x86

### x86

### arm
