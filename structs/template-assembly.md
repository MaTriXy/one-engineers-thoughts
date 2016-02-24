
```coffee
type template
  property inputs, type input
  property cst # or ast perhaps, whatever grammar parsing would return directly

type cst
  property tokens, list token # tree of all details somehow

type ast
  property statements, list statements

type node cst
  property location, type location cst
  property value # if this exists, it is a "token" type
  property children # tree structure

type location cst
  property range
  property start
    property row # line number
    property column
  property end
    property row
    property column
```

```coffee
template block masm
  input name
  input instructions
  body # assembly cst

    ;
    ; {{ title name }}.
    ;

    {{ name }}:
      {{ line instruction, for instruction, in instructions }}

template instruction masm
  input name
  input arguments
  body
    {{ name }} {{ join arguments, comma }}

template instruction masm, with comments
  input name
  input arguments
  input comment
  body
    {{ name }} {{ join arguments, comma }} ; {{ comment }}
```

```coffee
# transform string, into cst
algorithm parse
  input string
  output cst
  process

transform cst, ast
```
