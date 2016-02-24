
Tactics are goal simplification algorithms.

type tactic
  is type algorithm

Proof is a set of logical deductions.

A deduction is an instruction that transforms one statement into another!
> the action of deducting or subtracting something.

In ml, proofs, deductions, terms, and rules are all data types.

A proof is an algorithm that transforms a set of high-level proposition into a low-level proposition, or axiom. So, transforms a set of high-level propositions into axioms.

Each tactic is an algorithm too, a step in the proof process in a specific situation.

Tactic is for specific situation. Strategy is general principles.

So "intros" is a first general technique/strategy/instruction/step in a proof. You first create some variables.

```coffee
prove associativity
  introduce a
  introduce b
  introduce c
  ...
```

Other proof tactics:

```
induce
reflex
deconstruct
assert
admit Solves the current subgoal by an axiom.
contradict
rewrite
fold
unfold
change term, into another
```
