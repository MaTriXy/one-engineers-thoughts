
http://en.wikipedia.org/wiki/Constraint_%28mathematics%29

> A constraint is anything that prevents the system from achieving its goal.

A _condition_ describes the state of the system that will cause an action. A _constraint_ says that an action won't happen unless the system is in a certain state. So they're both the same thing, just coming at it from different angles. Maybe these can just be considered _patterns_. Each pattern in the state can cause a set of actions. Conversely, an action won't happen unless the state matches a certain pattern.

This means you can ask questions like, what actions can occur right now (with the system in the state that it's in). And from those actions, what is the ideal action that can happen right now. Picking that ideal action is _making a decision_.

```coffee
type rule
  property pattern, type pattern
  property action, type action

type pattern
  property facts, type set fact
```

An abstract pattern is a set of abstract statements.

A constraint is like a rule where the action is "accept". If a constraint is a limit or restriction, it's like a rule where it only accepts those that it matches. So a constraint on a set of [ 1, 2, 3, 4, 5 ] might be where `i > 2`, where as a rule it would mean `if i > 2, accept`. So constraints are the conditions of a rule, and rules define the action when constraints are met. Which means you can define constraints to be rules in any context, if you're using constraints simply for matching :)

A constraint is a rule where the action is 'accept'. A constraint is like a relation between two or more things, with an operation applied. But you can have constraints like `direction: ascending`, which seem like 'criteria', but could be restated as "for all elements, the date of a must be before the date of b", or `∀(a,b ∈ E)(a < b)`. So then a constraint is a relation between two or more elements that holds true, or it's an operation/action applied to two elements which must return true. So `a < b` means `compare(a, b)` and if the result is a is less than, return true. So then yeah, a constraint is a relation that must be satisfied for a rule.

```coffee
type structure
  property name
  property relations, type many structure
  property constraints, type many constraint
```

But actions seem like they're only possible with intention. _A change_ is a noun, comparing two structures. _To change_ is like an intentional thing. Something can't change something else, only if it has intention? In this sense, at a simple level there is "interaction" and reactions, which cause change, but there are no "actions". Somehow actions seem like they have intentions. In that case, the tick of the universe allows interactions to change structures ("cause change"). So there doesn't need to be "actions that are executed when conditions are met" (which is the definition of rules), but rather "changes in structure that occur when conditions are met". So then it's like, those changes are independent of action, and so can be described by "constraints".

Constraints are relations between structures that must exist.

```coffee
type constraint
  property variables
  property relation

type relation
  property name
  property variables

type variable # This is like a generic type

definition
  ? A variable is a changing structure ?

constraint gte, on a, b, c
constraint equal, on a, b, c
constraint ordered, a, b, c

usage constraint
  input relation
  input variables

relation ordered
relation nested
relation all
relation any / or / either
relation more
relation less
relation gte
relation gt
relation lt
relation lte
relation equal
relation includes
relation excludes
```

What patterns are there in relations and constraints?

http://en.wikipedia.org/wiki/Petri_net
http://en.wikipedia.org/wiki/Abstract_rewriting_system

Term rewriting systems

Constraints are relations between structures that must exist. These constraints are "restrictions" or "limits".

```coffee
type constraint
  property scope, type set variable
  property relation, type relation A relation over the variables.

test unary
  input constraint
  only one variable

test binary
  input constraint
  two variables

...
```

```coffee
type relation # binary relation
  property a, type set
  property b, type set
  property name # like "greater than" or "divide" type thing.
```

A `variable` is any other statement in the system.

What are the constraints that define a tree?

How to convert a set of structures with constraints and relations, to a machine? A set of structures, to a recognition machine.

A tree/list/graph is a specific implementation of a structure with constraints. So they can all be generalized to that. But you might want to still be able to directly create trees, because it simplifies their representation. But you should be able to see them in any form you want.

```coffee
type item list

type node tree
  property constraints # on the node children
  property children # these get translate to `structure` with certain constraints.
  constraint children, ordered

type node tree
  property constraints # on the node children
  property children, type list # constraint, ordered too

type node graph
```

These can all be generalized to:

```coffee
type structure
  property constraints
  property relations
```

So somehow, all these `type node tree` should be equivalent.

All types or structures can have constraints on them perhaps.

http://stackoverflow.com/questions/22117381/state-machines-in-coq

Constraints seem to need a "dimension" too. Because "before" can be "positionally", or "temporally", for example. So it's space/time dimensions. x before y _in time_, or _in space_. Or instead of "time", _in evolution_, or _in transformation_, _in change_.

```
constraints as patterns
```

Constraints are the things recognized in the current state of the universe to recall or generate the next state.

Constraints/conditions/patterns are the things recognized in the current state. When framed as constraints, they are structures that need to be present in order for the pattern to be recognized.

```
is relationtype, x
is tangent, x, to y
is above b, a
above b, a
is multiple(10), x
is prime, x
```

These are all examples of constraints.

---

Constraints are patterns in the current state. Patterns are structures.

A constraint is just a relation that must be valid between a collection of structures in a state.
