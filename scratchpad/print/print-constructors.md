
# Constructors

## core

```coffee
constructor type
constructor constructor

constructor operation
  assign name, name statement
  assign left, first statement
  assign right, second statement

constructor conditional
constructor constraint
```

### statement(when) -> conditional

```coffee
morph statement(when), conditional
  assign test, first statements input
  assign success, block statements input
```

### statement(where) -> constraint

```coffee
morph statement(where), constraint
```

Or does it just map to a boolean?

## list

### statement(for) -> list

```coffee
# constructor list, from statement(for)
transform statement(for), list
  assign item, name
  assign elements
    # how to do in one line?
    for child, in statements(input)
      when eq(in, name(child))
        child # reference? need a sort of "resolution" step
  assign rules
    for child, in statements(input)
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

## string

```coffee
constructor string

constructor character
```

## grammar

```coffee
constructor grammar

constructor rule

constructor production
```

## automaton

```coffee
constructor transition
  assign constraints, when statements
```

## cst

## ast

## module

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

## program

```coffee
constructor function
  assign name, name first statement
  assign inputs, constructor(property), when eq input, name(statement)
```

```llvm
define i32 @main() nounwind ssp uwtable {
  %1 = alloca i32, align 4
  %a = alloca i32, align 4
  %ptr = alloca i32*, align 8
  store i32 0, i32* %1
  store i32 5, i32* %a, align 4
  store i32* null, i32** %ptr, align 8
  store i32* %a, i32** %ptr, align 8
  ret i32 0
}

%ptr = alloca i32                               ; yields i32*:ptr
store i32 3, i32* %ptr                          ; yields void
%val = load i32* %ptr                           ; yields i32:val = i32 3
```

Maybe it's just a sequence of instructions, either with `let` or no `let` and just `allocate`.

```coffee
function main
  let x, allocate i32, align 4
  let a, allocate i32, align 4
  let ptr, allocate pointer(i32), align 8
  store i32 0, pointer(i32(x))
  store i32 5, pointer(i32(a)), align 4
  store pointer(i32(null)), i32** ptr, align 8
  store pointer(i32(a)), i32** ptr, align 8
  return i32 0
```

```coffee
function main
  allocate x, i32, align 4
  allocate a, i32, align 4
  allocate ptr, pointer(i32), align 8
  store i32 0, pointer(i32(x))
  store i32 5, pointer(i32(a)), align 4
  store pointer(i32(null)), i32** ptr, align 8
  store pointer(i32(a)), i32** ptr, align 8
  return i32 0
```

```coffee
function main
  allocate stack x, i32, align 4
  allocate stack a, i32, align 4
  allocate stack ptr, pointer(i32), align 8
  store i32 0, pointer(i32(x))
  store i32 5, pointer(i32(a)), align 4
  store pointer(i32(null)), i32** ptr, align 8
  store pointer(i32(a)), i32** ptr, align 8
  return i32 0
```

```coffee
function main
  local x, i32, align 4
  local a, i32, align 4
  local ptr, pointer(i32), align 8
  store i32 0, pointer(i32(x))
  store i32 5, pointer(i32(a)), align 4
  store pointer(i32(null)), i32** ptr, align 8
  store pointer(i32(a)), i32** ptr, align 8
  return i32 0
```

```coffee
function main
  local x, allocate memory 128
```

```coffee
constructor function
  assign instructions, constructor(instruction)
    where
      in name(statement), set(allocate, store, return)
```

## native

```coffee
constructor function
  assign name, name first statement
  assign inputs, constructor(property), when eq input, name(statement)
```

## assembly

```coffee
constructor function
  assign instructions, constructor(instruction), when in(name, names)

constructor instruction
  assign name, name(statement)
  assign operands, constructor(operand), for child, in children(statement) # type thing

constructor operand

names
  move
  compare
  push
  pop
```

## machine
