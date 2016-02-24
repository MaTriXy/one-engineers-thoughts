
Operational: How the effect is reached by computation.
Denotational: The effect itself
Axiomatic: Assertions about the effect

```coffee
# operational
action add
  match ...

# denotational
effect add
  given a
  given b
  state includes
    sum a, b

# axiomatic
relation add
  before
    assert a
    assert b
  after
    assert c
```

Something along those lines.

---

The definition of `action` is like specifying the operational semantic structure of the action. You don't have to describe the "abstract syntax", or how it's used, since that is generically taken care of by the `usage` constructor. So there is a general way of adding any semantic structure to the system. The `usage` tells you how to build statements/expressions in the language, so it replaces the need for BNF.

---

A "semantic function" maps a syntax entity to a semantic entity. So `N[ns]=n` means map syntactic entity `ns` to semantic entity `n`. Really this is sort of saying, given I see some syntactic pattern, some syntactic information `ns`, I recognize it as this type `n`. This is denotational semantics. So denotational is like pattern matching. "Given I see this syntax, this is its semantics." Or "Given I observe information, I see it has this structure/pattern/type."

Syntactic categories have _basis elements_ and _composite elements_. Examples of syntactic categories are booleans, variables, numbers, statements, arithmetic expressions. So the syntactic category of booleans starts with basis/basal elements `true` and `false`, and then builds on that, forming `not(boolean)` and `and(boolean, boolean)`, etc. So this syntactic category is inductively definined.

Denotational semantics maps patterns of characters/syntax, to their actual meaning in code. Denotational semantics is functional programming.

---

`If` rule 1:

```
<S1,s> -> s'
---
<if b then S1 else S2,s> -> s'

... if B[b] = tt
```

```coffee
rule if a
  input s1, type statement
  input s2, type statement
  input x, type state
  input y, type state
  input b, type boolean

  given
    evaluate s1
      in x
      to y
  infer
    evaluate 'if b then s1 else s2'
      in x
      to y
      when equal b, true
```

Why do you need this if you have typing?

---

- http://www.typedynamic.com/2012/06/formal-language-semantics.html?m=1
- http://blog.brownplt.org/2012/06/04/lambdajs-coq.html
