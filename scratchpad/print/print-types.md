
# Types

These are the sort of different "schemas" between model components.

## core

```coffee
type type
  property properties
    value many property

type property
  property name
  property type
  property default

type constructor
  property name
  property operations, list operation

type transform # TODO: maybe this is "type mapping" or something
  property input, type
  property output, type
  property operations, list operation

#
# Transformation operation.
# 
# - assign (set)
# - insert
# - remove
# - add
# - multiply
# - ... others
#

type operation
  property type
  property left
  property right

type conditional
  property test, type boolean
  property success
  property failure

type main

type alias
  property source
  property target

type call # function call, or apply / "application" perhaps?

type scope

type integer

type constraint
  property operator
  property left
  property right

type boolean
```

## number

```coffee
type hex # 0xfeedfacf
type decimal
type octal
```

## byte

```coffee
type bit
type byte
  property bits, sequence bit
```

## string

```coffee
type string
  property characters, many type character

type character
  property hexcode
  property unicode
  property value
```

## list

```coffee
type container
  property elements

type collection
  property elements
  property rules, list rule # constraints + transforms

type list # collection with an order to it
  property elements
  property constraints
  property transforms

type rule # algebraic data type?
  type constraint
  type transform

type iterator
  property item, type reference
  property list
  property body, list statement
  property constraints, list constraint
```

## tree

```coffee
type tree
  property root, type node
  property nodes, collection node
  property leaves, collection node # where node has no child nodes.

type node
  property path # things like this don't need to be computed, they can be "functions" or whatever. this is all just "conceptual"
  property depth, type integer
  property parent, type node
  property parents, collection node
  property nodes, type node # children
  property data # should it be like this? or is there a better way to attach custom stuff?
  property is(leaf), type boolean
```

## graph

```coffee
type graph
  property nodes, collection node
  property edges, collection edge

type node

type edge
```

## map

Key-value pairs.

```coffee
type map
  property pairs, collection pair

type pair
  property key
  property value
```

## grammar

```coffee
type grammar
  property language
  property rules, many type rule
  property start, type rule
    default first rule, in rules

type rule
  property name
  property productions, many production

type production
  property terms, many term

#
# optional == range none, one
#

type term
  property range, type range
  property element, type element

type range
  property start
  property end

type element # algebraic data type, either element, string, or something
  type literal
  type rule
```

## automaton

```coffee
type automaton
  property transitions, list transition
  property states, list state

type transition
  property constraints, list constraint
  property source, type state
  property target, type state

#
# By `context`, meaning it can have arbitrary properties.
# 
# TODO: How to model that?
# 
# - next character from input
# - previous character
# - terminal character it is matching with
# - status of match (success or failure)
# - parent rule(s)
# - parent grammar(s)
# - previous/sibling/parent tokens by type (e.g. "identifier name")
#

type state
  type map
```

## parser

Parser takes an input and an automaton, and outputs a tree. In that sense, a "parse" is a transform. Not sure about the type yet.

```coffee
type parser
```

## cst

```coffee
type cst
  property grammar, type grammar
  property tokens, many type token

type token
  property type
  property characters, many type character
```

## ast

```coffee
type ast
  property statements, many statement

type statement # can also be a literal or something, so this really is an algebraic data type.
  property name
  property statements, many statement
  property module # or file
  property location # so we know its scope perhaps
  property parent
```

## module

Maybe for modules, there is just a set of "blocks", which can be functions, constants, transforms, or any custom thing. This is where you hook into it somehow. Somehow it's like a `transform constructor, type` definition almost. So you can do `transform function(assembly), type function assembly` or something. Or like `transform record, type` or `normalize record, schema`.

```coffee
type module
  property records, many type record
  property constants, subset eq(constant, type), in records
  property functions, subset eq(function, type), in records
  property imports, subset eq(import, name), in records
  property exports, subset eq(export, name), in records

#
# A module is a tree of records. Or perhaps a "graph" of records.
#

type record
  property id, type uuid
  property type, type type
  property scope # ?
  property children # sub records, tree of records.

type constant
  property name
  property value

type function
  property name
  property inputs
    range none, many
  property body
    value many type statement
  property output

type import
  property source, type path
  property locals

type export
  property source

type path # algebraic data type, url, file path, relative path, etc.
```

## program

```coffee
type program
  property start, type block
  property constants, many type constant
  property blocks, many type block

#
# Instructions include:
# 
# - get/let
# - set/assign/store
# - move
# - compare
# - add
# - multiply
# - ...
#

type instruction
  property name # 'mnemonic' in assembly
  property operands, list operand
  property effects, list effect

type constant
  property name
  property value
  property size # ? something like this, for memory usage
  property type(byte)

type variable

type operand

#
# Side-effects produced from invoking instruction
# with a particular "signature" (maybe that's a type too).
#

type effect

type block
  property instructions, many type instruction
```

```coffee
type function
  property instructions, list instruction

type instruction
  type allocate
  type store
  type deallocate

type allocate
  property name # variable name
  property type(byte)
  property align

type deallocate
  property name

type store
  property address
  property data

type data
  property value
  property type
  type primitive

type address
  property value, type integer hex

type pointer
  type primitive
  property address, type address
  property value # from dereferencing address
```

The "program" is the assembly-like execution model. In this sense, it doesn't even have the notion of "memory allocation". This is a higher level thing. Or maybe, a "program" does include all that operating-system stuff, but the program instructions are more like what LLVM calls a program.

## native

```coffee
type native
  property constants, many constant
  property functions, many function

type constant
  property name
  property value

type function
  property inputs, many property

type property
  property name
  property type
  property default
```

## assembly

```coffee
type assembly
  property convention(calling)
  property architecture
  property constants
  property variables
  property sections
  property start
  property os

type architecture
type instruction
type external
type variable
type constant
type function
type export
type section
  property blocks, many block

type block
  property instructions, many instruction

type data
type os
```

## machine

```coffee
type machine
  property format # macho64, elf64, win64, etc.
  property opcodes, many opcode # or `property hexcodes` or `hexdump`

type opcode
```

```
type instruction
  property name
  property arguments
  property opcode
  property encoding
```
