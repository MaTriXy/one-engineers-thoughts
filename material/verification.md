
https://en.wikipedia.org/wiki/Formal_verification

- model checking: exhaustively check model. explore all states and transitions.
- deductive verification
  + This approach has the disadvantage that it typically requires the user to understand in detail why the system works correctly
- smt solver: https://en.wikipedia.org/wiki/Satisfiability_modulo_theories
- Fully featured dependently typed languages support deductive verification as a special case.
- correctness by construction.

> The great advantage of model checking is that it is often fully automatic; its primary disadvantage is that it does not in general scale to large systems; symbolic models are typically limited to a few hundred bits of state, while explicit state enumeration requires the state space being explored to be relatively small.

> The mechanics of verifying proofs by computer is pretty much a solved problem. http://math.stackexchange.com/questions/113316/state-of-the-progess-of-the-automated-proof-checking

- proof theory is syntactic in nature
- model theory is semantic in nature

> Together with model theory, axiomatic set theory, and recursion theory, proof theory is one of the so-called four pillars of the foundations of mathematics.

The three most well-known styles of proof calculi are:

- The Hilbert calculi
- The natural deduction calculi
- The sequent calculi

- https://en.wikipedia.org/wiki/Proof_calculus
- https://en.wikipedia.org/wiki/Structural_proof_theory
- https://en.wikipedia.org/wiki/Cut-elimination_theorem

> "A_1, A_2, A_3, \ldots \vdash B_1, B_2, B_3, \ldots", which is to be read as "A_1, A_2, A_3, \ldots proves B_1, B_2, B_3, \ldots",

> For systems formulated in the sequent calculus, analytic proofs are those proofs that do not use Cut.

> Cut elimination is one of the most powerful tools for proving interpolation theorems.

https://en.wikipedia.org/wiki/QED_manifesto
http://www.cse.chalmers.se/research/group/logic/TypesSS05/Extra/wiedijk_2.pdf

https://en.wikipedia.org/wiki/Existential_graph

>  analytic proofs are the normal forms, which are related to the notion of normal form in term rewriting https://en.wikipedia.org/wiki/Proof_theory

https://en.wikipedia.org/wiki/Proof_net

> Linear logic is a resource conscious logic.

linear logic provides a natural and simple encoding of Petri net reachability

> Linear logic is a substructural logic proposed by Jean-Yves Girard as a refinement of classical and intuitionistic logic.

https://en.wikipedia.org/wiki/Linear_logic

> Introduced by Jean-Yves Girard, proof nets have been created to avoid the bureaucracy, that is all the things that make two derivations different in the logical point of view, but not in a "moral" point of view.

Logics, algebras, and calculi.

https://en.wikipedia.org/wiki/Quantale

> Substructural type systems are a family of type systems analogous to substructural logics where one or more of the structural rules are absent or only allowed under controlled circumstances. Such systems are useful for constraining access to system resources such as files, locks and memory by keeping track of changes of state that occur and preventing invalid states.[1][2]

https://en.wikipedia.org/wiki/Structural_rule

> The successful 'removal' of cut rules, known as cut elimination, is directly related to the philosophy of computation as normalization (see Curry–Howard correspondence);

- computation as normalization

it often gives a good indication of the complexity of deciding a given logic.

https://en.wikipedia.org/wiki/Ludics

http://plato.stanford.edu/entries/logic-substructural/

> In abstract algebra, a residuated lattice is an algebraic structure that is simultaneously a lattice x ≤ y and a monoid x•y

Validation: "Are we trying to make the right thing?", i.e., is the product specified to the user's actual needs?
Verification: "Have we made what we were trying to make?", i.e., does the product conform to the specifications?

https://en.wikipedia.org/wiki/Verification_and_validation

http://math.stackexchange.com/questions/462/how-do-proof-verifiers-work

- operational semantics: "how a program is executed" (semantic?)
- axiomatic semantics: "what are the logical properties that hold before/after a program is executed" (syntactic)

https://en.wikipedia.org/wiki/Calculus_of_communicating_systems

> Operational semantics are a category of formal programming language semantics in which certain desired properties of a program, such as correctness, safety or security, are verified by constructing proofs from logical statements about its execution and procedures, rather than by attaching mathematical meanings to its terms (denotational semantics).

https://en.wikipedia.org/wiki/Operational_semantics

https://en.wikipedia.org/wiki/Resolution_(logic)
https://en.wikipedia.org/wiki/Herbrand%27s_theorem

> In mathematical logic, an atomic formula (also known simply as an atom) is a formula with no deeper propositional structure, that is, a formula that contains no logical connectives or equivalently a formula that has no strict subformulas. Atoms are thus the simplest well-formed formulas of the logic. Compound formulas are formed by combining the atomic formulas using the logical connectives.

(sorta like pattern theory)

https://en.wikipedia.org/wiki/Atomic_formula

> The precise form of atomic formulas depends on the logic under consideration; for propositional logic, for example, the atomic formulas are the propositional variables. For predicate logic, the atoms are predicate symbols together with their arguments, each argument being a term. In model theory, atomic formula are merely strings of symbols with a given signature, which may or may not be satisfiable with respect to a given model

> Herbrand universe to be the set of ground terms of \mathcal{L}.

https://en.wikipedia.org/wiki/Term_algebra

https://en.wikipedia.org/wiki/Predicate_(mathematical_logic)

> In propositional logic, atomic formulas are called propositional variables.[3] In a sense, these are nullary (i.e. 0-arity) predicates.
In first-order logic, an atomic formula consists of a predicate symbol applied to an appropriate number of terms.
In set theory, predicates are understood to be characteristic functions or set indicator functions, i.e. functions from a set element to a truth value. Set-builder notation makes use of predicates to define sets.
In autoepistemic logic, which rejects the law of excluded middle, predicates may be true, false, or simply unknown; i.e. a given collection of facts may be insufficient to determine the truth or falsehood of a predicate.
In fuzzy logic, predicates are the characteristic functions of a probability distribution. That is, the strict true/false valuation of the predicate is replaced by a quantity interpreted as the degree of truth.

> A propositional calculus is a formal system \mathcal{L} = \mathcal{L} \left( \Alpha,\ \Omega,\ \Zeta,\ \Iota \right), where:

https://en.wikipedia.org/wiki/Propositional_calculus

> A frequently adopted convention treats the constant logical values as operators of arity zero, thus:
> \Omega_0 = \{ 0, 1 \}.
Some writers use the tilde (~), or N, instead of ¬; and some use the ampersand (&), the prefixed K, or \cdot instead of \wedge. Notation varies even more for the set of logical values, with symbols like {false, true}, {F, T}, or \{ \bot, \top \} all being seen in various contexts instead of {0, 1}.

> Interpret A \vdash A as "Assuming A, infer A". Read \vdash A \to A as "Assuming nothing, infer that A implies A", or "It is a tautology that A implies A", or "It is always true that A implies A".

> We define a truth assignment as a function that maps propositional variables to true or false.

> The crucial properties of this set of rules are that they are sound and complete. Informally this means that the rules are correct and that no other rules are required.

correct and complete


> Soundness: If the set of well-formed formulas S syntactically entails the well-formed formula φ then S semantically entails φ.
> Completeness: If the set of well-formed formulas S semantically entails the well-formed formula φ then S syntactically entails φ.

"basis set"

> First-order logic (a.k.a. first-order predicate logic) results when the "atomic sentences" of propositional logic are broken up into terms, variables, predicates, and quantifiers, all keeping the rules of propositional logic with some new ones introduced.

> Propositional calculus is about the simplest kind of logical calculus in current use. It can be extended in several ways.

> Second-order logic and other higher-order logics are formal extensions of first-order logic. Thus, it makes sense to refer to propositional logic as "zeroth-order logic", when comparing it with these logics.

> a higher-order logic is a form of predicate logic that is distinguished from first-order logic by additional quantifiers and a stronger semantics.

> First-order logic quantifies only variables that range over individuals

https://en.wikipedia.org/wiki/Higher-order_logic

> First-order logic quantifies only variables that range over individuals; second-order logic, in addition, also quantifies over sets; third-order logic also quantifies over sets of sets, and so on. For example, the second-order sentence ∀P((0∈P ∧ ∀i(i∈P → i+1∈P)) → ∀n(n∈P)) expresses the principle of mathematical induction. Higher-order logic is the union of first-, second-, third-, …, nth-order logic; i.e., higher-order logic admits quantification over sets that are nested arbitrarily deeply.

> However, by a result of Gödel, HOL with standard semantics does not admit an effective, sound, and complete proof calculus.

Modal logic is based on values btwn 0-1. Temporal logic is based off that.

https://en.wikipedia.org/wiki/Modal_operator
https://en.wikipedia.org/wiki/Modal_logic

> Intuitionistic logic, sometimes more generally called constructive logic, is a system of symbolic logic that differs from classical logic by replacing the traditional concept of truth with the concept of constructive provability

Intuitionistic logic is alternative to propositional logic.

> While not entailed by the preceding conditions, contemporary discussions of classical logic normally only include propositional and first-order logics.[4][5]

https://en.wikipedia.org/wiki/Non-classical_logic

> redeveloping logic as a systematic formal theory of computability, as opposed to classical logic which is a formal theory of proof

https://en.wikipedia.org/wiki/Computability_logic

> Computability logic (CoL) is a recently introduced semantical platform and
ambitious program for redeveloping logic as a formal theory of computability, as opposed to
the formal theory of truth that logic has more traditionally been

> Computability logic (CL) is a systematic formal theory of computational
tasks and resources, which, in a sense, can be seen as a semantics-based
alternative to (the syntactically introduced) linear logic.

"truth" is "algorithmic solvability", basically saying that "truth" is the ability to transform structures between other structures.

> computability logic unifies classical, intuitionistic and linear logics.

> Remarkably, classical, intuitionistic and linear (in a broad sense) logics turn out to be three natural fragments of Computability Logic. This is no accident. The classical concept of truth is nothing but a special case of computability.

http://www.csc.villanova.edu/~japaridz/CL/

http://mathoverflow.net/questions/132679/what-can-be-done-with-computability-logic-that-previous-logic-systems-cant

https://en.wikipedia.org/wiki/Game_semantics

> Hence meaningful concepts of "intuitionistic truth" and "linear-logic truth" can be derived from the semantics of computability logic.

> Being semantically constructed, as yet computability logic does not have a fully developed proof theory. Finding deductive systems for various fragments of it and exploring their syntactic properties is an area of ongoing research.

That's what I'm doing right now! :)

https://en.wikipedia.org/wiki/Penelope_Maddy
https://en.wikipedia.org/wiki/Quasi-empiricism_in_mathematics

> Wegner's recent paper [8] suggests that interactive computation can help mathematics form a more appropriate framework (empirical) than can be founded with rationalism alone.

> Principles of Problem Solving. Problem solving is related to the notion of truth, since solutions are required to be true (correct).
> Hilbert’s assertion that all theorems can be proved
through logic was rationalist, while Turing’s proof
that unsolvability negated Hilbert’s assumption was
empiricist. pretation of empiricist arguments.
Our assumption that truth and problem solving
encourage empiricist rather than rationalist argument
suggests that Turing’s original assumptions should be
reestablished and that the rationalist reinterpretation
of Turing’s work by mathematical thinkers of the
1960s should be questioned and perhaps discarded.
We hope you accept that empirical (open) reasoning
is often more correct than rationalist (closed)
arguments, and that modes of thought about truth
and problem solving should promote empiricist over
rationalist reasoning, as well as definitive truth over
questionable a priori value judgments.

An open modeling language.

By "open", we mean empirical from Wegner :).

> Church’s thesis breaks down. Though the thesis is
valid in the narrow sense that Turing machines
express the behavior of algorithms, the broader assertion
that algorithms capture the intuitive notion of
what computers compute is invalid.

> Manna
and Pnueli [2] showed that nonterminating reactive
processes, like operating systems, cannot be modeled
by algorithms.

> Compositional methods also provide
a route to taming the state explosion problem, since the size of a compound
system is usually much larger than that of its components.

"consistency" proof, to "ground" the theories. Basically just verifying that you can take any tree of statements, and transform them into the base-level facts, the initial assumptions. If everything can be derived from the initial assumptions, then at least it's consistent.

> analytic proofs are the normal forms

> As of 2007, most of the (state-of-the-art) theorem provers for first-order logic are based on superposition (e.g. the E equational theorem prover), although only a few implement the pure calculus.

Automated theorem proving depends on underlying logic. Ranges from trivial to impossible.

> - Simple description logic: Poly-time
- Propositional logic: NP-Complete (3-SAT)
- First-order logic w/ arithmetic: Impossible

> • Given:
– Set of axioms (KB encoded as axioms)
– Conjecture (assumptions + consequence)
• Inference:
– Search through space of valid inferences
• Output:
– Proof (if found, a sequence of steps
deriving conjecture consequence from
axioms and assumptions)

clausal normal form

https://en.wikipedia.org/wiki/Conjunctive_normal_form

> Every propositional formula can be converted into an equivalent formula that is in CNF.

https://en.wikipedia.org/wiki/Horn_clause

## Provers

- https://en.wikipedia.org/wiki/Isabelle_(proof_assistant)
  + higher-order proof techniques
    * term rewriting based on HO unification
    * tableaux prover
    * decision procedures

## Methods

- https://en.wikipedia.org/wiki/Method_of_analytic_tableaux

## Logics

- https://en.wikipedia.org/wiki/Bunched_logic
- Separation logic extends classical first-order logic with multiplicative formulas from intuitionistic linear logic. http://pl.postech.ac.kr/SL/popl204.pdf
  + http://www0.cs.ucl.ac.uk/staff/p.ohearn/SeparationLogic/Separation_Logic/SL_Home.html
  + http://www.cs.cmu.edu/afs/cs.cmu.edu/project/fox-19/member/jcr/www15818As2011/cs818A3-11.html
  + > Heaplets (heap portions) as possible worlds (i.e., a kind of
  + separation logic is a substructural hoare logic
modal logic)
- https://en.wikipedia.org/wiki/Hoare_logic

> correctness of an algorithm is asserted when it is said that the algorithm is correct with respect to a specification

> A design (or implementation) cannot ever be declared “correct” on its own. It can only ever be “correct with respect to a given specification”. https://en.wikipedia.org/wiki/Formal_specification

https://en.wikipedia.org/wiki/Termination_analysis

If termination is based on reality, then if you can show that a process is a type of object, and that object has a lifecycle, then you can maybe prove termination for any structure. Even a programming language infinite loop will halt, once the substructures of which it is composed breakdown. This requires an integrated logic of multi-scale structure.

>  In linear logic, proofs can be seen as various kinds of networks as opposed to the flat tree structures of sequent calculus.
https://en.wikipedia.org/wiki/Geometry_of_interaction

> Interaction nets are a model of computation based on graph rewriting. Programs and data are represented
as graphs (nets), and execution of a program is modeled by manipulating the net based on rewrite or
reduction rules.

> From Functional Programs to Interaction Nets via the Rewriting Calculus

The rho-calculus is the "pattern calculus", a generalization/abstraction over the lambda calculus.

> The pure pattern calculus generalises the pure lambda-calculus by basing
computation on pattern-matching instead of beta-reduction. The simplicity
and power of the calculus derive from allowing any term to be a
pattern.

That sounds more like what I am thinking about.

All terms are patterns.

> Introduced at the end of the nineties, the Rewriting Calculus
(ρ-calculus, for short) is a simple calculus that uniformly integrates termrewriting
and λ-calculus

model checking vs. theorem proving https://news.ycombinator.com/item?id=7982189

> A large cost of formal verification is designing and implementing specifications. For this reason, even if you plan on proofs for some components, it still makes sense to use a tool which supports both model checking and theorem proving using a single specification. Especially if your interests are non-academic.

Implement both model checking and theorem proving.

https://github.com/johnyf/tool_lists/blob/master/verification_synthesis.md

list of verification tools: https://github.com/johnyf/tool_lists/blob/master/verification_synthesis.md

Maybe you could use model checking to give you hints about what a theorem should look like. It uncovers some knowledge for you.

https://en.wikipedia.org/wiki/Semantics_(computer_science)

> The canonical example of axiomatic semantics is Hoare logic.

> The primary motivation for the study of domains, which was initiated by Dana Scott in the late 1960s, was the search for a denotational semantics of the lambda calculus.

https://en.wikipedia.org/wiki/Fixed-point_combinator#Y_combinator

> A normal form is any combinatory term in which the primitive combinators that occur, if any, are not applied to enough arguments to be simplified.

https://en.wikipedia.org/wiki/Abstract_interpretation

> Symbolically executing all feasible program paths does not scale to large programs. The number of feasible paths in a program grows exponentially with an increase in program size and can even be infinite in the case of programs with unbounded loop iterations.[1] Solutions to the path explosion problem generally use either heuristics for path-finding to increase code coverage,[2] or reduce execution time by parallelizing independent paths. https://en.wikipedia.org/wiki/Symbolic_execution

`effect(s ; i)` specifies the state obtained by executing instruction i on
state s .
> Let I be the instruction in program(s ) pointed to by p(s ) . Then
step(s ) is defined to be effect(s ; I ) .

http://www.cs.utexas.edu/users/sandip/publications/proof-styles/slides.pdf

https://www.kiv.zcu.cz/research/groups/dss/download/presentation-2004-02-23.pdf

> Refine invariance over time to go from top-down to bottom-up verification.

>  I call this research subatomic
proof theory, because the fundamental idea is considering atoms as superpositions of truth states.
By doing so, atoms become binary logical relations, and this gives rise to an extremely simple,
universal inference rule [14, 15]. http://www.ki.inf.tu-dresden.de/~guglielm/Research/pap/CalcStrPR.pdf http://cs.bath.ac.uk/ag/p/AG8.pdf

http://www.amazon.com/The-Little-Prover-Daniel-Friedman/dp/0262527952

Cool little book on proofs.

> Domain theory (and so, denotational semantics) is a purely qualitative approach to modeling the structure of information states. https://en.wikipedia.org/wiki/Domain_theory
> Computation then is modeled by applying monotone functions repeatedly on elements of the domain in order to refine a result. Reaching a fixed point is equivalent to finishing a calculation. Domains provide a superior setting for these ideas since fixed points of monotone functions can be guaranteed to exist and, under additional restrictions, can be approximated from below.
https://en.wikipedia.org/wiki/Fixed-point_theorem
https://en.wikipedia.org/wiki/Banach_fixed-point_theorem
> The Banach fixed-point theorem gives a general criterion guaranteeing that, if it is satisfied, the procedure of iterating a function yields a fixed point.

> A common theme in lambda calculus is to find fixed points of given lambda expressions. Every lambda expression has a fixed point, and a fixed-point combinator is a "function" which takes as input a lambda expression and produces as output a fixed point of that expression.[9] An important fixed-point combinator is the Y combinator used to give recursive definitions.
> In denotational semantics of programming languages, a special case of the Knaster–Tarski theorem is used to establish the semantics of recursive definitions.
> A recursive function can be described as the least fixed point of a certain functional, mapping functions to functions.

> Truth be told, I think there's currently no up-to-date introductory book on language semantics that reflects the substantial progress the last decade has seen, with its decisive shift away from denotational methods and sequential computation to concurrency (process calculi and game semantics), axiomatics semantics and the use of interactive proof assistants in verification. http://cstheory.stackexchange.com/questions/3533/books-on-programming-language-semantics

Denotational is functional.

> The transition semantics provides
a sort of half-way house in which computation is a combination of rewriting and proof search. http://repository.upenn.edu/cgi/viewcontent.cgi?article=1330&context=cis_reports&sei-redir=1&referer=http%3A%2F%2Fwww.google.com%2Furl%3Fsa%3Dt%26rct%3Dj%26q%3Dgunter%2520forms%2520of%2520semantic%2520specification%26source%3Dweb%26cd%3D1%26ved%3D0CCQQFjAA%26url%3Dhttp%253A%252F%252Frepository.upenn.edu%252Fcgi%252Fviewcontent.cgi%253Farticle%253D1330%2526context%253Dcis_reports%26ei%3DtQNYT9TzGqfP0QWU_ZDRDQ%26usg%3DAFQjCNFzzSB4SYf9UVlLUJA30Yi6q835iA%26sig2%3DyWyWBz1GuDdj7vycKtt-_g#search=%22gunter%20forms%20semantic%20specification%22

> Ibelieve in a high-level specifcation language based on evolving algebras; the successive refnement method is then one tool to prove implementation correctness. From EVOLVING ALGEBRAS: AN ATTEMPT TO DISCOVER SEMANTICS - http://research.microsoft.com/en-us/um/people/gurevich/opera/92.pdf

That's sorta what I am thinking of with model transformations.

> An evolving algebra, on the other hand, may be tailored to an arbitrary abstraction level.

> The basic idea is very simple, at least in the sequential case, when time is sequential
(the algorithm starts in some initial state S0 and goes through states S1, S2, etc.) and
only a bounded amount of work is done on each step. Each state can be represented
by a rst-order structure: a set with relations and functions.

> In 2000, Gurevich axiomatized the notion of sequential algorithms, and proved the ASM thesis for them. Roughly stated, the axioms are as follows: states are structures, the state transition involves only a bounded part of the state, and everything is invariant under isomorphisms of structures. (Structures can be viewed as algebras, which explains the original name evolving algebras for ASMs.
https://en.wikipedia.org/wiki/Abstract_state_machines

> with state effectively defined as a (finite) set of named, finite relations. http://www.amazon.com/Abstract-State-Machines-High-Level-Analysis/dp/3540007024

>  decision diagram-based formal verification

---

> Interaction semantics (called core semantics in (Beringer et al.
2014)) are a protocol-oriented operational semantics of thread interaction,
for modeling both multithread concurrent and multimodule
programs.

https://en.wikipedia.org/wiki/Universal_Verification_Methodology
---

> Recursion theorists in mathematical logic often study the theory of relative computability, reducibility notions and degree structures described in this article. This contrasts with the theory of subrecursive hierarchies, formal methods and formal languages that is common in the study of computability theory in computer science. There is a considerable overlap in knowledge and methods between these two research communities; however, no firm line can be drawn between them.

https://en.wikipedia.org/wiki/Computability_theory

> The study of which mathematical constructions can be effectively performed is sometimes called recursive mathematics

---

> Property specifications are often written as Linear Temporal Logic (LTL) expressions. Once a requirement is expressed as an LTL formula, a model checker can automatically verify this property against the model.

https://en.wikipedia.org/wiki/Temporal_logic_in_finite-state_verification

---

> Soundness of the logic means that every provable formula is valid—in other words, that  F implies |= F.

source robotics verification
  https://github.com/VerifiableRobotics/LTLMoP/
