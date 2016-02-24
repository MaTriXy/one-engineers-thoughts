
## ways of writing native function apis

```coffee
function write string, length
# vs
function write
  property string
  property length
```

## assembly x86

### osx

```asm
export main

constant syswrite, 0x2000004
constant sysexit, 0x2000001
constant stdout, 1
constant stdin, 0

data string, db "hello world", 13, 10, 0
data length, equ $ - string

function main
  write string, length
  exit

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

### linux

```asm
export main

constant syswrite, 4
constant sysexit, 1
constant stdout, 1

data string, db "hello world", 13, 10, 0
data length, equ $ - string

function main
  write string, length
  exit

#
# These dont mean the `string` and `length` in data.
#

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

### windows

```asm
export main

external 'ExitProcess'
external 'GetStdHandle'
external 'WriteConsoleA'

constant stdout, -11
constant null, 0

data string, db "hello world", 13, 10, 0
data length, equ $ - string

variable buffer, resd 1

function main
  write string, length, buffer
  exit

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

Call it "function" or "block"?

---

## Ways of passing variables in

### osx

```model
constant write, 0x2000004
constant exit, 0x2000001
constant stdout, 1
constant stdin, 0

function write
  property string
  property length

function exit
  property code, default constant exit
```

### linux

```model
constant syswrite, 4
constant sysexit, 1
constant stdout, 1

function write
  property string
  property length

function exit
  property code, default sysexit
```

---

```coffee
alias print(string), write(stdout, string)
```

---

## homotopy

```coffee
# homotopy! string -> string
transform string(module), cst(module)
transform cst(module), ast(module)
transform ast(module), type(module) # maybe even `type(ast) -> type(module)`
transform type(module), type(program)
transform type(program), type(assembly)
transform type(assembly), type(machine)
transform type(machine), ast(machine)
transform ast(machine), cst(machine)
transform cst(machine), string(machine)
```

---

## hints

```coffee
transform assembly # hint telling compiler to interpret everything here as assembly-related constructors

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
```

Or perhaps that happens when you import the types, and from there it can tell.

```coffee
import 'github.com/model/assembly'

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
```

Or maybe it could be with sort of a `use` type of thing:

```coffee
use type function assembly

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
```

Or it could even be like assembly haha:

```coffee
section type function assembly

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
```

---

## type(statement) -> type(x)

Since a module is just a set of statements, you need to tell it how to transform any statement into a specific type, which could be any type.

```coffee
transform statement, export
  given input, statement
  return output, maybe export
  when eq(export, name(statment))
    name(statement)
  else
    nothing
```

```coffee
transform statement, type
transform statement, function
transform statement, function assembly
```

```coffee
transformation export
  assign name, name(statement)

transformation function
  assign inputs, transformation(property), when given
  assign output, transformation(property), when return
```

The `transformation` function always takes a statement and outputs a record of a certain type. So this would be a sort of DSL to simplify the tree traversal.

```coffee
constructor export
  assign name, name(statement)

constructor function
  assign inputs, constructor(property), when name given
  assign output, constructor(property), when name return

constructor property
  assign default, constructor(value), when name default
  assign type, constructor(type), when name type
  assign name, when position first

constructor value

constructor type
```

In an `assembly` module perhaps (where `type function` is really something like `type function assembly` when you take into account the module name):

```coffee
type function
  property instructions, list instruction

type instruction
  property name
  property operands

constructor function
  assign instructions, constructor(instruction), when in(name, names)

constructor instruction
  assign name, name(statement)
  assign operands, constructor(operand), for child, in children(statement) # type thing

names
  move
  compare
  push
  pop
```

---

## Constructor properties

```coffee
constructor operation
  assign name, name statement
  assign left, first statement
  assign right, second statement

constructor operation
  assign name, name statement
  assign left, next statement # like an iterator
  assign right, next statement
```

---

## List

```coffee
type collection
  property elements
  property rules, list rule # constraints + transforms

type list # collection with an order to it
  property elements
  property constraints # same as collection, but trying different way
  property transforms
```

```coffee
# constructor list, from statement(for)
transform statement(for), list
  given input, statement
  return output, list

  # 1. name of element for iteration
  # maybe this is more of a "binding" or "scope" thing...
  assign item(output), name(input)

  # 2. assign elements, pick child from statements where ...
  # how to do in one line?
  for child, in statements(input)
    when eq(in, name(child))
      assign elements(output), child # reference? should it find actual element from top-level?

  # 3. block, which should be a set of constraints and set of transforms.
  # or maybe it's a graph of transformation? A sort of query plan.
  for child, in statements(input), where neq(true, inline(child))
    # basically, turn this whole block into a set of constraints + transforms.
    case name(child)
      # constraints
      when where
      # conditionals
      when case
      when when
      # sub-loops
      when for
      # local expressions
      when let
```

```coffee
transform statement(for), list
  given input, statement
  return output, list

  for child, in statements(input)
    # filter
    where neq(true, inline(child))
    # map
    case name(child)
      # constraints
      when where
      # conditionals
      when case
      when when
      # sub-loops
      when for
      # local expressions
      when let
```

Therefore:

- Create a `map` transducer from the set of conditionals in the block.
- Create a `filter` transducer from the set of constraints in the block.

```coffee
transform statements(input), transducer
  # filter
  where neq(true, inline(child))
  # map
  case name(child)
    # constraints
    when where
    # conditionals
    when case
    when when
    # sub-loops
    when for
    # local expressions
    when let
```

```coffee
transform statement(for), list
  given input, statement
  return output, list

  for child, in statements(input)
    # filter
    insert rules(output), where neq(true, inline(child))
    # map
    case name(child)
      # constraints
      insert rules(output), when where
      # conditionals
      insert rules(output), when case
      insert rules(output), when when
      # sub-loops
      insert rules(output), when for
      # local expressions
      insert rules(output), when let
```

```coffee
# conditional
transform statement(when), rule

# constraint
transform statement(where), rule
```
