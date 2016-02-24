http://web.cs.wpi.edu/~kal/courses/cs4533/module3/mybuparsing.html
http://web.cs.wpi.edu/~kal/PLT/PLT5.2.2.html

5.2.2 LR-Family: SLR(1) Table Generation

At any stage of the parse, we will have the following configuration:

        
Stack                  Input        
s0x1s1...xmsm   aiai+1...$
where the s's are states, the x's are sequences of terminals or nonterminals, and the a's are input symbols. This is somewhat like a finite-state machine where the state on top (the right here) of the stack contains the "accumulation of information" about the parse until this point. We just have to look at the top of the stack and the symbol coming in to know what to do.

We can construct such a finite-state machine from the productions in the grammar where each state is a set of Items.

We create the table using the grammar for expressions above. The reader is asked in Exercise 2 to extend this to recognize a sequence of assignment statements.

An item is a production with a position marker, e.g.,

E  E · + T

```
algorithm lr table construction
  loop
    assert stack s0x1s1...xmsm
    assert input aiai+1...$

```

Algorithm

Constructing States via Item groups

(0) Create a new nonterminal S' and a new production S' -> S where S is the Start symbol

(1) IF S is the Start symbol, put S' -> · S into a Start State called State 0.

(2) Closure: IF A -> x · Xa is in the state, THEN add X  ·  to the state for every product X  ·  in the grammar.

(3) Look for an item of form A  x · z where z is a single terminal or nonterminal and build a new state from A --> xz ·  ( Include in the new states all items with · z in the original state.)

(4) Continue until no new states can be created. (A state is new if it is not identical to an old state.)

Definition: An LR(0) item of a grammar G is a production of G with a dot (.) at some point on the right side.
Example: For production E -> E + T, there are four distinct LR(0) items:
E ->  . E + T
E ->  E . + T
E ->  E + . T
E -> E + T . 

```coffee
type item lr

set item lr
  input grammar
  input production
  output set item
    for each node in production, create item with dot in front.
```

In order to generate these LR(0) item sets, we need to be able to compute closures across them.

Definition: Closure(I) where I is a set of LR(0) items consists of
• every item in I
• If A -> α . B β in closure(I), for all productions B -> γ , add B -> . γ to
closure(I) if not already there. Keep applying this rule until no more items can be added.
Initial elements (I) are often referred to as the kernel elements of closure(I). 

Example: we can use the expression grammar:
E -> E + T | T
T -> T * F | F
F -> ( E ) | id
Closure ({T -> T . * F}) = {T -> T . * F}
Closure ({T -> T . * F, T -> T * . F}) = {T -> T .* F, T -> T * . F, F -> . (E ), F -> . id}
Closure ({F -> ( . E ) } ) = {F -> ( . E ), E -> . E + T, E -> . T, T -> . T * F, T -> . F, F -> . ( E ), F -> . id } 

Generating LR(0) sets are the basis for constructing SLR parsers. To do this generation, we start with an augmented grammar1. An augmented grammar is produced by adding a new non-terminal and productions from this new non-terminal to the old start symbol. The purpose of this is to provide a single production that, when reduced, signals the end of parsing. For example, adding a symbol E’ and a production E’ -> E produces an augmented expression grammar. 

**Add a symbol to the beginning of the grammar, and a production to the old grammar**.

```
rule model augmented
  rule model

rule model
  ... original grammar
```

Defn: Goto(I,X), where I is a set of items, X is a terminal or non-terminal, is the closure(A -> a X . b) where A -> a . X b is in I. 

Algorithm:
C ={closure({S’Æ. S})}, where S’ Æ S is the production added for augmentation
• Repeat
  – For each item I in C and grammar symbol X such that Goto(I,X) is not empty and not in already an element of C
    • Add Goto(I,X) to C 

```coffee
algorithm generate dfa
  input grammar
  output dfa
  instructions
    let transitions, type set
    let items, closure rule(model(augmented)), rule(model)
    visit item, in items
      visit symbol, in symbol(item)
        assert loop invariant
        if ...
          add transition(item, symbol), to transitions
```

---

http://www.antlr.org/papers/allstar-techreport.pdf

A predicated grammar G = (N, T, P, S, Π,M) has elements:
• N is the set of nonterminals (rule names)
• T is the set of terminals (tokens)
• P is the set of productions
• S ∈ N is the start symbol
• Π is a set of side-effect-free semantic predicates
• M is a set of actions (mutators)

```coffee
type grammar predicated
  property nonerminals
  property terminals
  property productions
  property start
  property predicates
  property actions
```

http://msl.cs.uiuc.edu/~btovar/cs475/hw/recaut.pdf
