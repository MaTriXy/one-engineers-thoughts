
```
algorithm read string
algorithm write string
algorithm allocate memory
algorithm deallocate memory
algorithm render html
algorithm parse string, given grammar
algorithm scroll file large # memory mapped
```

```coffee
#
# Parse input using automaton into CST.
# 
# This is a "predicated" parser. Using semantic predicates.
#

algorithm parse
  input string
  input automaton
  output cst
  output ast

  let characters, get characters, from string
  let state, get start, from automaton
  let stack, list
  let position, 0

  loop
    let character, get character, from(characters), at(position)
    let terminal, get character, from state
    let match, compare character, terminal
    let rules, get rules, from state
    # why did i do this? i forget..
    let previous, stack
    let current, token(start(position), rule), for rule, in rules
    let stack, diff previous, current
    let context, set character, position, terminal, stack, match
    let state, transition state, context, automaton
    continue if state

  #
  # Transition to next parser state given current context.
  #

  algorithm transition
    input state(current)
    input context
    input automaton
    output state(next)

    let transitions, get transitions(out), from current
    let transition, for transition, in transitions
      when satisfy context, transition
        transition
    let state(next), get target, from transition
    return state(next)

  #
  # Test if the current context satisfies the transition's constraints.
  #

  algorithm satisfy
    input context
    input transition
    output action

    let position, get position, from context
    let match, get match, from context

    case match
      when true
        increment position
        return current
      when false
        if satisfy context, transition
          reduce
          let next, get target, from transition
          return next
        else
          either
            recover
            error
```

```
algorithm Closure(I)
  repeat
    for all items [A → α •X β c] in I
      for any production X → γ
        for any d ∈ First(βc)
          I = I ∪ { [X → • γ d] }
  until I does not change 

algorithm Goto(I, X)
  J = { }
  for any item [A → α •X β c] in I
    J = J ∪ {[A → α X • β c]}
  return Closure(J) 

algorithm build lr dfa
  Start with the item [<S’> → • <S> $ I]
    I irrelevant because we will never shift $
  Repeat until no more additions possible 
    Find the closure of the item and make a state
    Pick a state I
      for each item [A→ α •X β c] in I
        find Goto(I, X)
        if Goto(I, X) is not already a state, make one
        Add an edge X from state I to Goto(I, X) state

algorithm create lr parse table
   For each LR(1) DFA state
    Transition to another state using a terminal symbol is a shift to that state (shift to sn)
    Transition to another state using a non-terminal symbol is a goto that state (goto sn)
    If there is an item [A → α • a] in the state, action for input symbol a is a reduction via the production production A → α (reduce k) 
```

To construct an LR(0) automaton:
– start with start rule & compute initial state with closure
– pick one of the items from the state and move “@” to the right one symbol (as if you have just parsed the symbol)
• this creates a new item ...
• ... and a new state when you compute the closure of the new item
• mark the edge between the two states with: – a terminal T, if you moved “@” over T
– a non-terminal X, if you moved “@” over X
– continue until there are no further ways to move “@” across items and generate new states or new edges in the automaton


Algorithm+ strategy= parallelism
