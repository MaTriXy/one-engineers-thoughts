
source tla
  http://research.microsoft.com/en-us/um/people/lamport/tla/Consensus.tla
  https://github.com/ongardie/raft.tla
  https://github.com/ongardie/dissertation
  http://cacm.acm.org/magazines/2015/4/184701-how-amazon-web-services-uses-formal-methods/fulltext
  Use of Formal Methods at Amazon Web Services
  https://github.com/quux00/PlusCal-Examples
  # download tla toolbox here:
  https://tla.msr-inria.inria.fr/tlatoolbox/products/

> In order to mitigate the state explosion problem, symbolic
model checkers, such as CadenceSMV [19], NuSMV [20], and
VIS [21], represent the system model symbolically using
sets of states and sets of transitions. They then analyze
the state space symbolically using binary decision diagrams
(BDDs) [22]. In contrast with explicit-state model checking,
states in symbolic model checking, are represented implicitly,
as a solution to a logical equation. This saves space in
memory since syntactically small equations can represent
comparatively large sets of states. All symbolic model
checkers essentially use the symbolic translation for LTL
specifications described in [23] and the analysis algorithm
of [24], though some optimize further. The technique of using
BDDs to reason about Boolean formulas representing the state
space, thereby avoiding building the state graph explicitly,
was invented by McMillan [25] and is considered to be one
of the biggest breakthroughs in the history of model checking
for its impact on the state explosion problem [26].4
http://ti.arc.nasa.gov/m/profile/kyrozier/papers/COSREV_62.pdf

> How to represent state-transition graphs with Ordered Binary Decision Diagrams:
http://www.cs.cmu.edu/~emc/15-820A/reading/lecture_1.pdf

> Implementing reachability analysis
• How is Si related to Si+1?
http://www.eecs.berkeley.edu/~sseshia/219c/spr11/lectures/MC-Lec4.pdf

>  In symbolic model checking, a state is represented by a vector of state variables
s
= (s(1);::: ; s(n)).

generic change function instead of "transition" function:

```coffee
change state1, state2
  do x
  or a
  or b
  or c
```

You have to pass in a finite state model (machine), and temporal formulas (the spec) into the model checker https://cloudup.com/cKtuQ7lq1eX.

> Description languages for Kripke Model

https://en.wikipedia.org/wiki/B%C3%BCchi_automaton used in linear temporal logic as the fsm representation.

> Unlike with other types of Automata (e.g., Buechi), in Kripke structures
the value of every variable is always assigned in each state.

Other representations of finite state machines:

- Moore machines
- Mealy machines
- Finite automata
- Büchi automata
- Kripke structures

http://disi.unitn.it/~rseba/DIDATTICA/fm2014/02_TRANSITION_SYSTEMS_HANDOUT.pdf
https://cloudup.com/c0aE9hhn3gx
http://www.cs.cmu.edu/~emc/15414-f11/lecture/lec13_SMV.pdf

SMV input language: Define finite state kripke structures, and specification in CTL formula. Then transform into OBDD based symbolic model checker.

https://cloudup.com/cU-zs3TVUM8

Compile hardward description into kripke structure.
