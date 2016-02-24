
# Records

```coffee
main print 'hello world'
```

These "constructors" or "records" are much less formal than the "types". You can write them however they want. They form only a tree of statements until you transform them into a formal type ("construct" them). Therefore, you can create formal types out of arbitrary statements with a simple transformation.

Records are the actual objects, whereas two statements could have the same words but be different records. So, references are actually pointing to records. This means that a module has a set of records! Or graph/tree of records.

## core

```coffee
operation add
operation subtract
operation multiply
operation divide
operation remainder
operation insert
operation append
operation assign
operation remove
operation attach
operation detach
```

```coffee
comparison gte
comparison gt
comparison lt
comparison lte
comparison eq
comparison neq
```

```coffee
logical not
logical and
```

## list

```coffee
take first n, list
  given n, integer
  given list, list
  return result, list

take last n, list
  given n, integer
  given list, list
  return result, list

alias first(list), take first 1, list
alias last(list), take last 1, list

last
```

## automaton

```coffee
transition hex, header hex
  when previous rule ...
```

## model

```coffee
alias print(string), write(stdout, string)

#
# I think this is all it really needs at this point.
# 
# It just needs to be tied to the native model somehow.
#

write target, string
```

## program

```coffee
function write
  input target, default stdout
  input string

function exit
  input code
```

## natives

### osx

```coffee
constant write, 0x2000004
constant exit, 0x2000001
constant stdout, 1
constant stdin, 0

function write
  input id
  input target, default constant stdout
  input string
  input length

function exit
  input code, default constant exit
```

### linux

```coffee
constant stdout, 1
constant write, 4
constant exit, 1
constant open, 5 # syscall open http://stackoverflow.com/questions/14094443/x86-assembly-reading-bytes-from-file-to-stack-but-gdb-cant-find-bytes

function write
  input id, value constant write
  input target, default constant stdout
  input string
  input length

function exit
  input code, default constant exit
```

### windows

```coffee
constant stdout, -11
constant null, 0

function write
  input id
  input target
  input string
  input length
  input buffer

function exit
  input code, default constant null
```

## assembly x86

### osx

```asm
function main

function write string, length
  mov rsi, string
  mov rdx, length
  mov rax, syswrite
  mov rdi, stdout
  syscall

function exit
  mov rax, sysexit
  mov rdi, stdin
  syscall
```

```coffee
calling convention
```

### linux

```asm
function main

function write string, length
  mov edx, length
  mov ecx, string
  mov ebx, syswrite
  mov eax, stdout
  syscall

function exit
  mov rax, sysexit
  mov rdi, stdin
  syscall
```

```coffee
calling convention
```

### windows

```asm
function main

function write string, length, buffer
  push stdout
  call 'GetStdHandle'
  push 0
  push buffer
  push length
  push string
  push eax
  call 'WriteConsoleA'

function exit
  push 0
  call 'ExitProcess'
```

```coffee
calling convention
```

Call it "function" or "block"?

## machine x86

- linker
  + http://www.math.utah.edu/docs/info/ld_3.html
  + http://www.lurklurk.org/linkers/linkers.html
  + https://developer.apple.com/library/mac/documentation/DeveloperTools/Conceptual/MachOTopics/1-Articles/x86_64_code.html#//apple_ref/doc/uid/TP40005044-SW1

### osx

```coffee
constant magic, 0xfeedfacf
constant cigam, 0xcffaedfe # "magic" in reverse
```

### linux

- elf64

### windows

- win64
