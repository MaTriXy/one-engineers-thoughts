
> Definition 1.1. A storage type S is a tuple S = (C,P,F,I,E,m), where C is the set of configurations, P is the set of predicate symbols, F is the set of instruction symbols, I is the set of input elements, E is the set of encoding symbols, and m is the meaning function that associates with every p ∈ P a mapping m(p) : C → {true, false}, with every f ∈ F a partial function m(f) : C → C, and with every e ∈ E a partial function m(e) : I → C.

```coffee
type storage
  property configurations, set configuration
  property instructions, set instruction
  property predicates, set predicate
  property encodings, set encoding
  property inputs, set input

  function meaning
    usage
      input predicate
      ouptut function
        input configuration
        output boolean
    usage
      input instruction
      output function
        input configuration
        output configuration
    usage
      input encoding
      output function
        input input
        output configuration
```

> Definition 1.2. Let S = (C, P, F, I, E, m) be a storage type. A context-free S transducer, or CF(S) transducer, is a tuple G = (N,e,∆,Ain,R), where N is the nonterminal alphabet, e ∈ E is the encoding symbol, ∆ is the terminal alphabet (disjoint with N), Ain ∈ N is the initial nonterminal, and R is the finite set of rules; every rule is of the form
A → if b then ξ
with A ∈ N, b ∈ BE(P), and ξ ∈ (N(F) ∪ ∆)∗.

```coffee
# A context-free S transducer, or CF(S) transducer
# G = (N,e,∆,Ain,R)
type transducer storage
  property alphabet(nonterminal)
  property encoding
  property alphabet(terminal)
  property initial(nonterminal), in alphabet(nonterminal)
  property rules, set rule
```

```coffee
notation S = (C,P,F,I,E,m)
notation G = (N,e,∆,Ain,R)
```

```
operator boolean
  and
  or
  not
  true
  false
```
