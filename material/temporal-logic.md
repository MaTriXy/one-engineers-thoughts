
source buchi automata
  http://buchi.im.ntu.edu.tw/

Temporal logic is used as a separate specification language against a finite state model. So you have a prebuilt state machine essentially, and a set of temporal logic statement about the behavior of that state machine that must hold (be true). So you need a state machine first.

The question is, can you build a state machine from the specification itself? How do you distinguish the definition of the state machine from the specification? It seems like the SMV language is sorta like this.

https://en.wikipedia.org/wiki/Linear_temporal_logic_to_B%C3%BCchi_automaton

> There are algorithms that translate an LTL formula to an equivalent BA.[1] [2] [3] [4] This transformation is normally done in two steps. The first step produces a generalized Büchi automaton(GBA) from a LTL formula. The second step translates this GBA into a BA, which involves relatively easy construction. Since LTL is strictly less expressive than BA, the reverse construction is not possible.

```
state now
state next
```

Metatem algorithm:

> - transform PTL specification into SNF
> - from the initial rules, which define an initial state of the execution, _forward chaining_ through the set of step rules that describe the _next state_ of the execution
> - constraining this execution by attempting to satisfy eventualities (sometimes termed _goals_) introduced by the _sometimes_ rules.

> TRANS
((state = idle & next(state) = request) |
(state = request & sema & turn = id &
(next(state) = critical & next(sema) = 0) |
(state = critical & next(state) = release))

> Therefore, a number of programming languages based on temporal logics have
emerged in the past two decades, such as XYZ/E [31], Tempura [26], TOKIO [33], Framed Tempura [18] and METATEM [12,14],
and others [3,29,13,15].

> an algorithm for transforming an arbitrary PTL formula into a set of SNF rules. From PTL to NNFp. The first step in the transformation simply involves rewriting the formula so that all negations only appear when applied to propositions. This is analogous to translating classical formulae into Negation Normal Form (NNF), From NNFp to Flat Rule Form. http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.67.2212&rep=rep1&type=pdf

---

- control-flow graph CFG
- dataflow graph
- state space graph

state space graph from control flow graph?

> "control flow state space and data flow state space as its state space"

> The state space technique is a unified time-domain formulation that can be
utilized for the analysis and design of many types of systems. It can be applied to linear and
nonlinear continuous-time and discrete-time multivariable systems.
http://www2.hawaii.edu/~gurdal/EE351L/lab02.pdf

https://en.wikipedia.org/wiki/State-space_representation

>7.3 The Current State
At each point in a proof there is a current state that consists of:
• The set of current declarations.
• The set of current definitions and a subset consisting of the usable
definitions.
• A set of currently known facts and a subset consisting of the usable
facts.
• A current goal, which is a formula.

http://research.microsoft.com/en-us/um/people/lamport/tla/tla2-guide.pdf

> In finite-state verification, model checkers examine finite-state machines representing concurrent software systems looking for errors in design.
https://en.wikipedia.org/wiki/Temporal_logic_in_finite-state_verification

> A finite state machine is a model of a reactive system.

relational semantics

---

```coffee
# trigger -> <>goal
fact
  when trigger, eventually goal

# goal -> .(requirement1 /\ requirement2 /\ requirement3)
# next(goal) -> (requirement1 /\ requirement2 /\ requirement3)

fact
  when next goal
    all req1, req2, req3

# that doesn't make much sense
```

Generate a buchi automaton from a propositional temporal logic formula φ.

> ω-automata extend finite automata to infinite inputs. (visits (at least) one of the final states infinitely often)

> Büchi showed in 1962 that ω-regular languages are precisely the ones definable in a particular monadic second-order logic.

(relates to that monadic second-order logic graph theory book, page 437 on constructing automata from monadic second-order logic formulas)

> ω-automata are useful for specifying behavior of systems that are not expected to terminate, such as hardware, operating systems and control systems.

> The **run** of A on such an input is an infinite sequence ρ = (r0,r1,r2,...) of states.

A "run" or a "path". A path makes more sense when visualizing, a run makes more sense when program execution.

> The main purpose of an ω-automaton is to define a subset of the set of all inputs: The set of accepted inputs.

"Accepting state" of an automaton is really when it completely matches a pattern. "Accept" or "recognize" can be just called "match", and instead of "alphabet", call it "pattern". So it doesn't accept a certain set of words in an alphabet, it _matches a certain pattern in a set of patterns_.

Omega automata are generalization of finite automata.

> The algorithm for minimizing nondeterministic finite automaton also correctly minimizes a Büchi automaton. However, the algorithms for minimizing deterministic finite automaton does not work for deterministic Büchi automaton.

https://en.wikipedia.org/wiki/B%C3%BCchi_automaton#Transforming_from_other_models_of_description_to_non-deterministic_B.C3.BCchi_automata

Transform kripke structure to buchi automaton.

## convert linear temporal logic formula to buchi automaton

> Transformation from LTL to GBA

1. convert ltl formula to negation normal form NNF (formula rewriting, e.g. `p ∧ p = p`, ...)
2. translate LTL formula into a generalized Büchi automaton. Specifically, our
algorithm generates a transition-based generalized Büchi automaton (TGBA). This is the “core” of the translation process. (it generates transition-based generalized Büchi automata, rather than classical statebased ones)
3. convert generalized Büchi automaton into a Büchi automaton (degeneralize).

> LTL formulae φ stands for properties of paths (Traces) and The path can be either fulfill the LTL formula or not. A transition system TS satisfies the LT property P if all its traces respect P, i.e., if all its behaviors are admissible. A state satisfies P whenever all traces starting in this state fulfill P.
> Any LTL formula can be transformed into a canonical form, the so-called positive normal form (PNF). 

- [LTL to B¨uchi Automata Translation: Fast and More Deterministic?](http://arxiv.org/pdf/1201.0682.pdf)
- Simple On-the-fly Automatic Verification of Linear Temporal Logic (THIS ONE HAS THE ALGORITHM)

> Translations from temporal logics to equivalent ω-automata have been intensively studied. http://es.cs.uni-kl.de/publications/datarsg/Schn01b.pdf

Translate temporal logics to equivalent omega automaton. Similar to how you transform patterns of text into a text pattern recognizer. So transform a pattern of changes into a tropon, a change pattern recognizer.

Since automata can be modeled as just sets of rules recognizing patterns, then temporal logics and omega automata are just rules recognizing patterns between states, which can be used to generate the actual recognizer, or in this case, execution machine, since "recognizing actions" seems to mean actually "executing a program".

_Executing a program means continuously matching patterns defined by action rules?_

The act of continuously recognizing patterns is what execution _is_.

---

Encode actions into infinite automata. Encode infinite automata into binary decision diagram. Then you have a maximally efficient executing program ("state recognizer").

So the whole process is sort of:

- recognize/encode patterns of text, constructing terms
- recognize patterns of terms, constructing records (one way of encoding patterns for a computer to execute)
- recognize patterns of actions in the records, constructing automata
- encode the records/values and automata into the target platform (javascript, assembly), so it can be executed.

Or using "encode" instead of "recognize":

- encode patterns of text as terms
- encode patterns of terms as records
- encode action records as automata
- encode automata as binary decision diagram
- encode binary decision diagram in target platform

This pattern recognition process is a process of _encoding_.
This is a self-encoding process.

> state-space based methods, often called “model checking”

> An interpretation for a linear-time temporal logic formula is an infinite word 􏰿 􏰦 x 0x1 􏰵 􏰵 􏰵 over the alphabet 2P , i.e. a mapping from the naturals to 2P .

That is, an LTL formula is an "endless pattern" from the set of possible state patterns generated from the proposition.

Then, the buchi automaton is the machine that recognizes that endless pattern.
> Our goal is to build an automaton (transition system) that generates all infinite sequences satisfying a given temporal logic formula 􏰈.
> An execution of A is an infinite sequence􏰪 􏰦 q0q1q2􏰛 􏰛 􏰛 suchthatq0 􏰊 I and,foreach i 􏱀 0, qi 􏰰􏰤 qi􏰨1. An accepting execution 􏰪 is an execution such that, for each acceptance set Fi 􏰊 F , there exists at least one state q 􏰊 Fi that appears infinitely often in 􏰪 .

---

Specification -> [synthesis] -> Implementation. No need for verification! http://resources.mpi-inf.mpg.de/departments/rg1/conferences/vtsa13/slides/jacobs1.pdf

> **Realizability**: Is there a finite state system that realizes the specification?

Büchi game
http://richmodels.epfl.ch/_media/w2_wed_3.pdf

> Four steps to synthesis:
> 1. specify (ltl, buchi automata)
> 2. obtain a game
> 3. solve the game
> 4. construct circuit

> Problem􏰛:  Derive reactive module from temporal speci􏰠cation
> Solutions􏰛:
- Automata theory
- Model building
- Proof theory
- Constraint satisfaction
> 􏰮Extraction of programs from proofs

> A fair transition system is given by a set of transitions; each is a first-order relation between the set of sytem variables and the next-state system variables, indicating how the system can move from one state to the next. http://www-step.stanford.edu/spl/fts.html

Specification + Environment + Scheduler -> project onto a module.

Does the environment mean like the platform?

> The method proposed in [4] for a given
LTL specification ϕ starts by constructing a B¨uchi automaton
Bϕ, which is then determinized into a deterministic Rabin
automaton.

> Our approach to the problem of asynchronous synthesis is
based on [13]. This paper reduces the problem of asynchronous
synthesis into synchronous synthesis. This method to
which, for convenience, we refer as the Rosner Reduction.

> Let ϕ(x; y) be an LTL formula intended to specify an asynchronous
system. Inspired by the work in [13], we propose a
translation T : ϕ(x, y) → X(x, y, r) from an LTL formula ϕ
with a single input variable x and a single output variable y,
to another LTL formula X with an additional auxiliary input
variable r.
The auxiliary variable r is a scheduling variable which determines
the points in the computation in which the system may
read the value of the input variable x, or modify the value of
the output variable y. Initially, r = 0. Variable x may be read
whenever r rises from 0 to 1. Variable y may be modified
whenever r drops from 1 to 0. We use the notation r as an
abbreviation for ¬r.

> The terminology reactive systems is due to David Harel and Amir Pnueli
[HP84] to qualify the class of systems, or programs, where the emphasis is
put on their interaction with the environment1
rather than on their ultimate
computation, if relevant. http://people.irisa.fr/Sophie.Pinchinat/publications/jdeds2007.pdf
