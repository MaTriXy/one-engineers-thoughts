
# Transforms

Every _module_ is just a tree of statements. That is the bare-bones model AST. You then take this tree of statements, and transform it into a set of _types_. Transforming a module AST to a set of types can be thought of as a _module ast to module type transformation_.

So the goal is, first transform any module into a tree of types. Then everything you do from there is just type-to-type transformation!

So then it's like:

```coffee
# homotopy! bytes -> bytes
# homotopy! string -> string
transform type(byte), type(string) # utf-8 encoding
transform type(string), type(cst)
transform type(cst), type(ast) # model ast
transform type(ast), type(module)
transform type(module), type(program)
transform type(program), type(assembly)
transform type(assembly), type(machine)
transform type(machine), type(ast) # machine ast
transform type(ast), type(cst)
transform type(cst), type(string)
transform type(string), type(byte)
```

## type(grammar) -> type(automaton)

Transform a grammar into a state machine (context-dependent automaton).

```coffee
transform grammar, automaton
  given input, grammar
  return output, automaton

  for rule, in rules input
    
```

## type(bytes) -> type(string)

Bytes to UTF-8 string (initial just basic latin set).

```coffee
transform type(bytes), type(stream)
```

## type(string) -> type(cst)

```coffee
transform type(string), type(cst)
  given input, type(string)
  return output, type(cst)

  # use grammar to parse string!
  let grammar, grammar output
  # 1. create tokens from characters.
  for character, in characters input
    ...
```

## type(tree) -> type(graph)

```coffee
transform tree, graph
```

## type(cst) -> type(ast)

```coffee
transform type(cst), type(ast)
  given input, type(cst)
  return output, type(ast)

  for token, in tokens input
```

## type(ast) -> type(module)

Given a module, and a set of types, transform the tree of statements in the module into a normalized tree (the "model ast" perhaps, or "type tree"). Maybe it's `ast(module) -> ast(model)`, but atm I'm liking `ast(module) -> ast(type)`. Module has a set of "blocks", which are what you write however you want. These you then have to define how to transform into types.

```coffee
transform type(ast), type(module)
  given input, type(ast)
  return output, type(module)

  for statement, in statements input
    case name statement
      when export
        insert exports(output), transform(statement, type(export)) # how to transform nested stuff?
      when import
        insert imports(output), transform(statement, type(export))
    # next, check if statement is function by testing if it has `given` and `return`
    # otherwise maybe it's a constant such as a label, string, list, or some other "constructor"
    # it could actually be anything (a request, or a transform, or anything)
    # so how to handle that?

  where
    transform type(statement), type(export)
      given input, type statement
      return output, type export

      for statement, in statements input
        # what is the "type" of an export? (what properties does it have?)
        assign name(output), name(statement)

    transform statement, import
      given input, statement
      return output, import

    transform statement, function
      given input, statement
      return f, function

      for statement, in statements input
        case name statement
          when given
            insert inputs(f), transform(statement, property)
          when return
            assign output(f), transform(statement, property)

    transform statement, property
      given input, statement
      return output, property
      let statements, statements(input)

      for statement, in statements
        when first statement, in statements # and also is inline
          assign name(output), name(statement)
        else
          case name statement
            when default
              assign default(output), transform(statement, value)
            when type
              assign type(output), transform(statement, type)

    transform statement, value # property value
      given input, statement
      return output, value # generic output type?

      when is(string, value(input))
        return value(input) # print 'hello world'
      else # is block or something?

    transform statement, type
    transform statement, string
    transform statement, integer
    transform statement, list
```

_Need to see how you would do this in clojure too._

This would mean, each module can have its own way of being parsed. Perhaps there are some common ones for parsing modules into a "type graph", but you can always override that and do whatever you'd like probably.

Questions:

- What is the general pattern of this transformation? Try transforming many things into other things to see the general pattern.
- Is there a DSL for writing transformation rules without having to iterate over statements so directly? Probably there is.

Then it's almost like, at the top of every module, or in a wrapper module, you can specify the transformation at the top of the file type thing! Sorta like `exports.x = asdf`, but it would `transform` type thing! That would be sweet.

## type(module) -> type(program)

Transform the _module type_ to the _program type_.

```coffee
transform type(module), type(program)
  given input, type(module)
  return output, type(program)

  for export, in exports input
  for function, in functions input
```

## type(program) -> type(assembly)

Transform set of program instructions to os-/arch-specific assembly.

```coffee
transform type(program), type(assembly(x86, osx))
  given input, type(program)
  return output, type(assembly)
  bind start(output), start(input)
  for constant, in constants input
    # bind constants
    # however, also want to intelligently figure out how many bytes are in there and such.
  for function, in functions input
```

## type(assembly) -> type(machine)

```coffee
transform type(assembly), type(machine)
  given input, type(assembly)
  return output, type(machine)

  for section, in sections
    for block, in blocks section
      for instruction, in instructions block
        insert hexcodes(output), hex(instruction)
```

---
