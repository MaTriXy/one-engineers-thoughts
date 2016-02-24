
A rule is a conditional statement. Rules are used to select actions based on the state of the world. Rules can be learned and executed probabilistically. A rule says when a set of statements are facts, perform an action. Facts are true statements. Rules connect the state of the world to a set of actions. A rule is about cause/effect. A rule is an action with constraints.

> A rule provides some description of how to solve a problem.

http://en.wikipedia.org/wiki/Rule_of_inference

In this sense, a rule is a transformation function of inputs to outputs. But it is not an action like you would normally think. It's an action on symbolic information structures. A specific type of transformations on information structures.

```
when
```

becomes a rule!

```coffee
type rule
  property conditions, set condition # antecedents, premises
  property conclusion, type conclusion # consequent, action

type rule
  property constraints, set constraint
  property action, type action

usage when
  input constraints # are satisfied
  input action

usage when
  input conditions
  input conclusion

usage otherwise
  input conclusion
```

A rule graph is formed from a set of `when` statements.

```coffee
when x, y
when i, j
otherwise, x
```

Conclusion can be an action, or anything really.

A rule is about cause/effect

```coffee
type rule
  property cause
  property effect
```

http://en.wikipedia.org/wiki/Causality
http://en.wikipedia.org/wiki/Conditional_(computer_programming)
http://en.wikipedia.org/wiki/Conditional_probability
http://en.wikipedia.org/wiki/Logical_consequence

- entailment
- conditional

The rules are the connections between the objects and actions. They are the causes.

http://en.wikipedia.org/wiki/Semantic_reasoner
http://en.wikipedia.org/wiki/Inference_engine
http://en.wikipedia.org/wiki/Action_selection
http://en.wikipedia.org/wiki/Fixed_action_pattern

This means actions are composed of other actions and rules.

> The overiding task of Mind is to produce the next action. http://www.msci.memphis.edu/~franklin/paradigm.html

http://en.wikipedia.org/wiki/Material_conditional
http://en.wikipedia.org/wiki/Necessity_and_sufficiency

A rule is a conditional. The rule creates an action when certain conditions are met. Conditions are the prerequisites for an action. So there is some circularity in that definition.

Rules can be learned and executed probabilistically.

Maybe a "condition" is a true statement. Or a condition is a fact in a current frame.

A rule says when a set of statements are facts, perform an action. Facts are true statements.

Conditions are facts.

Rules inside a process create a branch in control flow. That is, they create a control-flow graph.

A rule is an action that will take place if constraints are met. So a rule is just an action with constraints.

Maybe conditions are satisfied constraints. Or true statements are satisfied constraints.

So then a `where` statement following an action maybe also is a rule??

```coffee
# action: select, constraints: equal true, active
select users, where equal true, active

visit user, in users
  when equal true, active
    select user
```

Equivalence between `where` and `when`.

So maybe actions can have constraints? And you only care about actions, don't have to know about rules.

Well, for the `select` statement, the constraints argument could be delegated to a `when` internally, so maybe it's just shorthand.

This also would mean a `query` is somehow related to a rule. A query is an action with constraints, and a desired response or effect. Whereas a rule is an action only executed if constraints are met? Not sure yet.

The difference between a rule and a query is, the rule is only executed if constraints are satisfied, whereas the query is executed looking for data that satisfies the constraints. So you can have a rule that executes a query when certain constraints are met.

Or maybe there is a generic action that a rule is from:

```
alias
  execute y, where equal x, true
  when x, y
```

Need to understand the relation between rule and state for an agent.

The constraints in a rule determine when an action can be applied.

> In Soar, chunking is realized by computers as a kind of product system rule learning, or explanation-based learning, or procedural learning.

Production system (Ops5). Super helpful topic.

http://en.wikipedia.org/wiki/Production_system_(computer_science)

```
produce action, when constraints
```

> If a production's precondition matches the current state of the world, then the production is said to be triggered. If a production's action is executed, it is said to have fired.

Working memory is the database in a production system keeping track of the current state, and interpreting rules.

> The rule interpreter must provide a mechanism for prioritizing productions when more than one is triggered.

## Algorithms

http://en.wikipedia.org/wiki/Forward_chaining
http://en.wikipedia.org/wiki/Backward_chaining
http://en.wikipedia.org/wiki/Rete_algorithm

> match-resolve-act cycle

> Retes are directed acyclic graphs that represent higher-level rule sets.

Question is: how do you define all the rules? For parsing, the grammar specifies a bunch of rules. Then it can engage in other problem solving strategies. But how do you define these?

> Decision cycle: Elaborate current state (fill it in with knowledge), then decide on next action to apply, which will modify state. Preferences also accumulate during elaboration. This phase basically pulls up all the knowledge that can be used on the current state.

> Behavior needs to be directed.

That is because thinking of problem-solving with goals.

https://github.com/SoarGroup/Soar/blob/development/Core/SoarKernel/src/production.cpp
https://github.com/SoarGroup/Soar/blob/development/Core/SoarKernel/src/rete.cpp

- problem creation in cogntive architectures? how does that work?
- how much initial knowledge does a cognitive agent need?

Initially, the system will receive high-level commands from a human, such as "compile code" and "run program". These are the top-level goals or end-states the computer must follow. Then when it runs into problems (impasses in soar's terminology), it has to figure out how to solve them. It can redefine the problem or whatever, but at first, it can't redefine the top-level human-entered command. That must be followed.

It also has to have some initial knowledge. How to read a file, how to follow rules, how to search for information... It then needs some initial rules too. So at what point does it have enough where it can learn on it's own? Humans learn by randomly interacting with the environment, and by their parents doing specific things to them, and other stuff. So the computer would have to interact with a person, and you could teach it things which it should learn.

The first problem, the system needs to say "I don't understand". Then it needs to say the solution is to "Search Google". That has to be an action/task it knows how to perform, but it doesn't initially, so how does it learn? It needs to know how to open a browser and read the content. So it needs to know that the browser is a tool for accessing information. So basically, there is a lot to know. It can't just imagine this, it has to learn it from someone else. Or it has to read it. So first it needs to be able to read. I will teach it how to visit websites, but it needs to already have built in the ability to see and to read.

A grammar, or formal model, is for static behavior. While acting in a real world without clear goals or variables, is dynamic.

An FSM is a type of rule-based system.

```
if current-state and condition then activate-new-state
```

> What distinguishes these triplets from classic production rules as used in (say) Soar and ACT-R is that the triplets may be partial (some of the three elements may be missing) and may be uncertain. The difference lies in the underlying knowledge representation used for the schemata, and the probabilistic logic used to represent the implication.

If rules are very specific, formal processes, then they can be optimized and changed to basically state machines instead of part of the general action-selection cycle. The action selected is more optimized, like it's "automatic behavior"

```
algorithm match-resolve-act cycle
  loop
    match conditions of rules with contents of working memory
    if no rule matches then stop
    resolve conflicts
    act (i.e. perform conclusion part of rule)
```


> Rete and FSM as examples of state-change algorithms. the Halo 2 AI implements a hierarchical finite state machine (HFSM) or a behavior tree, or even more specifically, a behavior DAG (directed acyclic graph), since a single behavior (or behavior subtree) can occupy several locations in the graph. http://www.gamasutra.com/view/feature/2250/gdc_2005_proceeding_handling_.php

http://en.wikipedia.org/wiki/Reactive_planning

> Decision routines

A grammar is like a plan on how it wants to interpret some source code. It's preplanning an action strategy.

https://github.com/hraberg/mimir

---

"Structure" rules are stating "observations". The act of observing itself is an action! So there are both structure/action rules, but really in the end it is all action rules. Given that I "observe", the "I will observe y".

```coffee
definition reflexive
  input x, type type
  input r, type relation x
  when observe every a, of type x
    observe r a, a
```

```coq
Definition reflexive {X: Type} (R: relation X) :=
  ∀a : X, R a a.
```

```coffee
in every relation b, c
  fact relation a, c

# for a set of structures and set of constraints, a set of facts hold
# rule? logical rule, vs. action rule.
# structure rule vs. action rule
# state rule vs. change rule
in every(<structure>), <fact>
```

So the mathematical equations are observations of structure by an intelligent agent.

This means that all rules are algorithms, and there is a clear algorithm for the construction of a proof.

A rule is a sequent. https://en.wikipedia.org/wiki/Sequent

> A_1,\,\dots,A_m \,\vdash\, B_1,\,\dots,B_n.

- `assumptions` on the left
- `propositions` on the right

```coffee
definition rule
  given assumptions
  observe propositions
```

https://en.wikipedia.org/wiki/Sequent_calculus#Inference_rules

https://en.wikipedia.org/wiki/Abstract_algebraic_logic

> Heyting algebras serve as the algebraic models of propositional intuitionistic logic in the same way Boolean algebras model propositional classical logic.

https://en.wikipedia.org/wiki/Lindenbaum%E2%80%93Tarski_algebra

> Obviously, computability of f means nothing but
existence of a machine that wins the game xy(y = f(x)) against any possible
(behavior of the) user. xA(x) is de2ned in the same way,
only here it is the machine who makes an initial move=choice. This interpretation makes
 a constructive version of existential quanti2er, while  is a constructive version of
universal quanti2er.
> what is a problem (task) for the machine, is a resource for
the environment, and vice versa.

> The paradigm shift in computer science towards interaction provides a solid motivational background for
CL.

> TMs cannot model interaction since they shut out the world
while computing.
Interactive systems are modeled by interaction machines (IMs) that are simple extensions
of TMs. 

https://en.wikipedia.org/wiki/Interactive_computation
