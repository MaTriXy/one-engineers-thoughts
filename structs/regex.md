
https://courses.engr.illinois.edu/ece390/books/artofasm/CH16/CH16-1.html#HEADING1-4

```coffee
example language regular
  set empty
  set string empty

example expression regular
  symbol string empty
  symbol character

definitions
  let r, expression regular
  let s, expression regular
  let t, expression regular

  definition concatenation
    given r, is expression regular
    given s, is expression regular
    then concatenation r, s
      is expression regular

  definition union
    given r, is expression regular
    given s, is expression regular
    then union r, s
      is expression regular

  definition intersection
    given r, is expression regular
    given s, is expression regular
    then intersection r, s
      is expression regular

  definition monoid free
    given r, is expression regular
    given s, is expression regular
    then monoid free r, s
      is expression regular

  definition difference
    given r, is expression regular
    given s, is expression regular
    then difference r, s
      is expression regular

  definition precedence

alias star(kleene), monoid(free)

case regex
  when empty
    nfa
      state not accept
  when string empty
  when character
  when string
    nfa
      state a
      state b
      transition a, b
  when intersection
    ...
  when monoid free
```

```coffee
convert regex, to nfa
  name Thompson's Construction Algorithm
  wiki http://en.wikipedia.org/wiki/Thompson%27s_construction_algorithm
```

```
convert regex, to nfa, to dfa
  problem Exponentially large DFA.
```
