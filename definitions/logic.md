
source proof
  https://coq.inria.fr/library/
  https://coq.inria.fr/library/Coq.Init.Logic.html
  https://github.com/sanjoy/Snippets/blob/master/Classical.v

note
  desc A term denotes a mathematical object and a formula denotes a mathematical fact.
  http://en.wikipedia.org/wiki/Term_(logic)

sequent http://en.wikipedia.org/wiki/Sequent

rule inference
  wiki http://en.wikipedia.org/wiki/Rule_of_inference
  help http://www.reddit.com/r/haskell/comments/2t59pe/question_about_understanding_type_inference_rules/
  http://akgupta.ca/blog/2013/05/14/so-you-still-dont-understand-hindley-milner/

type statement
  match assumption
  match assertion
  match definition
  match inductive
  match fixpoint

type assumption
  match Axiom 
  match Conjecture
  match Parameter 
  match Parameters
  match Variable
  match Variables
  match Hypothesis 
  match Hypotheses

type assertion
  match Theorem 
  match Lemma 
  match Remark 
  match Fact
  match Corollary 
  match Proposition 
  match Definition 
  match Example

type definition
  match Definition
  match Let

type Inductive
  match Inductive
  match CoInductive

A fact is something that is both an assumption and an assertion.

---

A logical rule can be read as "when I see this pattern, think this other pattern". You can think of it like constructing a mental image. When you observe some information structure (the input, or premise), you "think" some type. If you see a dog being walked, it's not that that is a dog. You recognize some information pattern in front of you. You observe a structure. Then this brings to mind the idea of a dog, or an animal, or many other "types". So the "type" is the the result of recognition, and the input is the raw information structure. So logic rules, in this sense, are just recognizable patterns. If/then means "if I see information of this structure (premise), then it is this type (conclusion)".

The goal then is to construct a chain of these things from the simplest possible formal type you can create, the type itself. So from the base type, you may create the idea of "true" and "false", and then from there create and/or operations, etc. Then from there, you can create everything else.

So the first step is to construct the base elements of the system. The relation, booleans, propositions, etc.

The next step is to figure out the algorithms for deriving a current term/statement, and verifying it is correctly typed. To do this, it must first transform the structure into structural normal form, then find the correct type for it (using graph matching perhaps).

After that, it is figuring out how to transform a statement into it's type, using the `usage` constructor. This will put every structure into a typed structure.

The next step is figuring out how exactly operational semantics works, and how to use that to verify that an algorithm will terminate, or to verify that it is correct. How to verify if an algorithm is *correct* and will terminate? This what I am least clear about so far.

Algorithm:

```
action derive
  given expression
  find rule where conclusion matches expression
    if the rule is an axiom, derivation is complete
    otherwise
      derive rule premise # recurse, until you hit axiom
      # the rule will already have been derived or not, so it's opitmized
```

"Evaluation relation": two expressions are equivalent if they evaluate to the same value in all states.

Write down basic commands/actions, and the effect they have on state. These are the basic rules in operational semantics.
