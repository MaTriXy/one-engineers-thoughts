
A calculus is an alphabet, and a set of transition rules. A transition rule is a set of states and a transition function.

Then the structural calculus is a set of structures. A structure is recognizable information. A structure within an abstract formal system is a set of constraints. A constraint is a relation between two structures.

Syntactically structures are represented by words. You can also call them terms. The terms form a tree, and this tree is called a statement. A proof transforms a statement into foundational assumptions. An assumption is an unproven statement. However, good assumptions are based on experimental observations.

```coffee
definition structure
  is set constraints

definition term
  is named structure

definition statement
  is tree term
  so
    is tree structure
    so
      is set constraints

definition proof
  input statement
  output set assumptions

definition assumption
  is observable structure

definition constraint
  is relation over set structure

definition set
  is many types of structures
```

A relation between two structures can be considered a change. An _action_ changes one structure to another. Actions result in relations between structures.

```coffee
definition action
  is relation between structures
  transform
    source structure
    target structure
```

Actions can be performed in sequence or in parallel, assuming parallel computation is possible. Action is computation.

Relations between two structures can also be interpreted as transformation rules, or a state transition system. That is, the initial structure is the initial state, and the final structure is the final state. The transition relation is the action.

A transition system <gamma, ->, T> is:

- set of configurations, or states
- transition relation
- terminal configuration, or end states.

We can also phrase it as:

- set of source structures, current, input
- computation
- set of target structures, desired, output

Computation is the update of the universe. When we think about these, we can visualize them as having an order, and we frame it as a problem. But in nature, it is more general as nature isn't intentionally solving problems. You can think of nature as constantly changing structure, constantly being in formation.

State tells you the value of variables. Nested terms may be variables.

<S,s> -> s'

"If a statement S is executed in state s, it will result in state s'"

A primitive action is executing the same action twice in a row. This is "commutative". You can either execute each action individually, or both actions as a whole, and get the same result.

> Termination: We say that that the execution of statement S terminates from start state s if there exists a state s' such that <S,s> -> s'. Moreover, we say that S loops forever on s if there does not exist a state s' such that <S,s> -> s'.

> Variables v have values described by state s'.

It should be A "action" instead of S "statement":

<A,s> -> s'

An action transform state s to s'.

(sidenote: The word "action" seems to be related to "performing an act", which is an intelligent thing. Maybe "actions are intelligent", and "changes are automatic"). So then computation C changes state s to s'.

Groups are structures and a relation applied to them that lead to other structures in the group. So it's a type of structure and an action that literally ties them together.

http://www.amazon.com/Elementary-Induction-Abstract-Structures-Mathematics
