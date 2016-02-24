
## Coq Tips

```
Locate ":>". (* lookup notation meaning *)
```

## Coq Docs

- Records: https://coq.inria.fr/refman/Reference-Manual004.html

## Records

```coq
Record dfa:Type := {
  dfa_state : finType;
  dfa_s: dfa_state;
  dfa_fin: pred dfa_state;
  dfa_step: dfa_state -> char -> dfa_state
}.
```

```coq
Definition dfa: Type.

(* -> is logical implication *)

Definition dfa_rect: forall P : dfa -> Type,
  (forall (dfa_state : finType) (dfa_s : dfa_state) (dfa_fin : pred dfa_state) (dfa_step : dfa_state -> char -> dfa_state), P {|
      dfa_state := dfa_state;
      dfa_s := dfa_s;
      dfa_fin := dfa_fin;
      dfa_step := dfa_step |}) -> forall d : dfa, P d.

Definition dfa_ind: forall P : dfa -> Prop,
 (forall (dfa_state : finType) (dfa_s : dfa_state) 
    (dfa_fin : pred dfa_state) (dfa_step : dfa_state -> char -> dfa_state),
  P
    {|
    dfa_state := dfa_state;
    dfa_s := dfa_s;
    dfa_fin := dfa_fin;
    dfa_step := dfa_step |}) -> 
 forall d : dfa, P d.

Definition dfa_rec: forall P : dfa -> Set,
 (forall (dfa_state : finType) (dfa_s : dfa_state) 
    (dfa_fin : pred dfa_state) (dfa_step : dfa_state -> char -> dfa_state),
  P
    {|
    dfa_state := dfa_state;
    dfa_s := dfa_s;
    dfa_fin := dfa_fin;
    dfa_step := dfa_step |}) -> 
 forall d : dfa, P d.
```

```
Definition dfa_rect: forall P : dfa -> Type,
  (forall (dfa_state : finType) (dfa_s : dfa_state) (dfa_fin : pred dfa_state) (dfa_step : dfa_state -> char -> dfa_state), P {|
      dfa_state := dfa_state;
      dfa_s := dfa_s;
      dfa_fin := dfa_fin;
      dfa_step := dfa_step |}) -> forall d : dfa, P d.

dfa_rect
  forall predicate
    if 
      forall state, s, fin, step
        equal predicate(state), state
        equal predicate(s), s
        equal predicate(fin), fin
        equal predicate(step), step
    then
      forall dfa
        predicate dfa

  define predicate
    input dfa
    output type

dfa_rect
  all function
    if
      all state, s, fin, step
        equal function(state), state
        equal function(s), s
        equal function(fin), fin
        equal function(step), step
    then
      all dfa
        function dfa

  where
    functions
      input dfa
      output type

dfa_rect
  every function
    when
      every state, start, final, step
        equal function(state), state
        equal function(start), start
        equal function(final), final
        equal function(step), step
      every dfa
        function dfa

  where
    functions
      input dfa
      output type

dfa_rect
  every function
    when
      every state, start, final, step
        true equal function(state), state
        true equal function(start), start
        true equal function(final), final
        true equal function(step), step
      every dfa
        true function dfa

  where
    functions
      input dfa
      output type
```

How the hell do you say this in a simpler way??

```coffee
dfa_rect
  map every function
    when
      map every state, start, final, step
        assert equal function(state), state
        assert equal function(start), start
        assert equal function(final), final
        assert equal function(step), step
      map every dfa
        assert function dfa
```

Now it's an algorithm!

```coffee
dfa_rect
  assert every function
    when
      assert every state, start, final, step
        assert equal function(state), state
        assert equal function(start), start
        assert equal function(final), final
        assert equal function(step), step
      assert every dfa
        assert function dfa
```

```coffee
dfa_rect
  test every function
    when
      test every state, start, final, step
        assert equal function(state), state
        assert equal function(start), start
        assert equal function(final), final
        assert equal function(step), step
      test every dfa
        assert function dfa
```

Winner! -^

```coffee
dfa_rect
  test every function
    let a
      test every state, start, final, step
        assert equal function(state), state
        assert equal function(start), start
        assert equal function(final), final
        assert equal function(step), step
    let b
      test every dfa
        assert function dfa
    when a, b
```

---

```coq
"[ 'pred' x | E ]" := SimplPred (fun x => E)
                      : fun_scope
                      (default interpretation)

SimplPred
     : forall T : Type, pred T -> simpl_pred T
```

```coffee
notation [ predicate x | E ]
  simple predicate
    function
      input x
      output E
```

Operator precedence: https://coq.inria.fr/refman/Reference-Manual005.html

```coq
Definition dfa_step : forall (d : dfa), d -> character -> d
```

```coq
Record dfa:Type := dfa_constructor {
  dfa_state:> finType;
  dfa_start: dfa_state;
  dfa_end: pred dfa_state;
  dfa_step: dfa_state -> character -> dfa_state
}.

About dfa_constructor.

dfa_constructor :
forall dfa_state : finType,
dfa_state -> pred dfa_state -> (dfa_state -> character -> dfa_state) -> dfa

Expands to: Constructor Top.DFA.dfa_constructor
```

```coq
Record dfa:Type := dfa_constructor {
  dfa_state: finType;
  dfa_start: dfa_state;
  dfa_end: pred dfa_state;
  dfa_step: dfa_state -> character -> dfa_state
}.

About dfa_constructor.

dfa_constructor :
forall dfa_state : finType,
dfa_state -> pred dfa_state -> (dfa_state -> character -> dfa_state) -> dfa

Expands to: Constructor Top.DFA.dfa_constructor
```

```coq
Record spotting:Type := spotting_constructor {
  bird: nat -> nat;
  city: nat + nat;
  date: nat * nat
}.

About spotting_constructor.

spotting_constructor : (nat -> nat) -> nat + nat -> nat * nat -> spotting

Definition spotting_constructor2 := (nat -> nat) -> nat + nat -> nat * nat -> spotting.

Definition bird := spotting -> nat -> nat
Definition city := spotting -> nat + nat
Definition date := spotting -> nat * nat

SearchAbout spotting.
date: spotting -> nat * nat
city: spotting -> nat + nat
bird: spotting -> nat -> nat
spotting_rec:
  forall P : spotting -> Set,
  (forall (bird : nat -> nat) (city : nat + nat) (date : nat * nat),
   P {| bird := bird; city := city; date := date |}) -> forall s : spotting, P s
spotting_ind:
  forall P : spotting -> Prop,
  (forall (bird : nat -> nat) (city : nat + nat) (date : nat * nat),
   P {| bird := bird; city := city; date := date |}) -> forall s : spotting, P s
spotting_rect:
  forall P : spotting -> Type,
  (forall (bird : nat -> nat) (city : nat + nat) (date : nat * nat),
   P {| bird := bird; city := city; date := date |}) -> forall s : spotting, P s
spotting_constructor: (nat -> nat) -> nat + nat -> nat * nat -> spotting

Destructors are named ident_ind, ident_rec or ident_rect which respectively correspond to elimination principles on Prop, Set and Type.
(induction/recursion)
```

> The types of nat_rec and nat_rect are similar, except that they pertain to (P:nat->Set)
and (P:nat->Type) respectively . They correspond to primitive induction principles (allowing dependent
types) respectively over sorts Set and Type. The constant ident_ind is always provided,
whereas ident_rec and ident_rect can be impossible to derive (for example, when ident is a proposition).

Use `Unset Printing Records.` to disable printing records.

Turn on Navigation -> Display all low-level contents.

```coq
date: spotting -> prod nat nat
city: spotting -> sum nat nat
bird: spotting -> nat -> nat
spotting_rec:
  forall P : spotting -> Set,
  (forall (bird : nat -> nat) (city : sum nat nat) (date : prod nat nat),
   P (spotting_constructor bird city date)) -> forall s : spotting, P s
spotting_ind:
  forall P : spotting -> Prop,
  (forall (bird : nat -> nat) (city : sum nat nat) (date : prod nat nat),
   P (spotting_constructor bird city date)) -> forall s : spotting, P s
spotting_rect:
  forall P : spotting -> Type (* Top.143 *),
  (forall (bird : nat -> nat) (city : sum nat nat) (date : prod nat nat),
   P (spotting_constructor bird city date)) -> forall s : spotting, P s
spotting_constructor: (nat -> nat) -> sum nat nat -> prod nat nat -> spotting
```

```coq
dfa_step:
  forall d : dfa,
  Finite.sort (dfa_state d) -> Finite.sort character -> Finite.sort (dfa_state d)
dfa_end: forall d : dfa, pred (Finite.sort (dfa_state d))
dfa_start: forall d : dfa, Finite.sort (dfa_state d)
dfa_state: dfa -> Finite.type
dfa_rec:
  forall P : dfa -> Set,
  (forall (dfa_state : Finite.type) (dfa_start : Finite.sort dfa_state)
     (dfa_end : pred (Finite.sort dfa_state))
     (dfa_step : Finite.sort dfa_state ->
                 Finite.sort character -> Finite.sort dfa_state),
   P (dfa_constructor dfa_state dfa_start dfa_end dfa_step)) -> forall d : dfa, P d
dfa_ind:
  forall P : dfa -> Prop,
  (forall (dfa_state : Finite.type) (dfa_start : Finite.sort dfa_state)
     (dfa_end : pred (Finite.sort dfa_state))
     (dfa_step : Finite.sort dfa_state ->
                 Finite.sort character -> Finite.sort dfa_state),
   P (dfa_constructor dfa_state dfa_start dfa_end dfa_step)) -> forall d : dfa, P d
dfa_rect:
  forall P : dfa -> Type (* Top.183 *),
  (forall (dfa_state : Finite.type) (dfa_start : Finite.sort dfa_state)
     (dfa_end : pred (Finite.sort dfa_state))
     (dfa_step : Finite.sort dfa_state ->
                 Finite.sort character -> Finite.sort dfa_state),
   P (dfa_constructor dfa_state dfa_start dfa_end dfa_step)) -> forall d : dfa, P d
dfa_constructor:
  forall dfa_state : Finite.type,
  Finite.sort dfa_state ->
  pred (Finite.sort dfa_state) ->
  (Finite.sort dfa_state -> Finite.sort character -> Finite.sort dfa_state) -> dfa
```

Because `dfa_start: dfa_state;` references a property on the record, it goes to `forall`.

>  If identi:>term is used, then identi is automatically declared as coercion from ident to the class of termi. If the optional “>” before ident is present, then ident0 (or the default name Build_ident if ident0 is omitted) is automatically declared as a coercion from the class of termn to ident (this may fail if the uniform inheritance condition is not satisfied). Coercions can be used to implicitly inject terms from one class in which they reside into another one.

```coffee
# test every state : Finite.type, start : Finite.sort state, end : pred (Finite.sort dfa_state), step : Finite.sort dfa_state ->
#                 Finite.sort character -> Finite.sort dfa_state
dfa_rec:
  test every proposition # dfa -> Set
    when
      test every state, start, end, step
        assert construct dfa
          with state
          with start
          with end
          with step
      test every dfa
        assert proposition dfa
  where
    proposition
      input dfa
      output set
```

```coffee
recursive induction dfa
  test every proposition
    when
      test every state, start, end, step
        assert construct dfa
          with state
          with start
          with end
          with step
      test every dfa
        assert proposition dfa
  where
    proposition
      input dfa
      output set
```

```coffee
# general structure for fact
action induce dfa recursively
  input dfa, type type
  output truth value # boolean, always "true" for proofs
  steps
    test every change
      when
        test every state, start, end, step # on dfa
          assert construct dfa
            with state
            with start
            with end
            with step
        test every dfa
          assert change dfa
    where
      change
        before dfa
        after set
```

```coq
dfa_step :
  forall d : dfa,
  Finite.sort (dfa_state d) -> Finite.sort character -> Finite.sort (dfa_state d)

Eval compute (dfa_step A x a)
```

The reason for 3 arguments is, first is "forall", giving the set of all dfas. The next is the specific instance x. Then third is the character.

---

The reason why Coq stuff is written on one line:

```coq
(* abbreviated *)
Fixpoint accept (x:A) (w:word) :=
match w with
  | [::] => final A x
  | a::w => accept (step A x a) w
end.
```

```coq
(* readable words *)
Fixpoint run' (dfa: all_dfa) (word: word_) : sequence_ all_dfa :=
match word with
  | [::] => [::]
  | character::word => (step all_dfa dfa character) :: run' (step all_dfa dfa character) word
end.
```

Naming them in a human readable way makes every line too long. But a hierarchical version can handle this so it maintains readability.

```coffee
action run
  input dfa(all), type set dfa
  input dfa, type dfa
  input word, type word
  output sequence type set dfa
  steps
    match word
      when empty
        return empty
      otherwise
        # character::word => (step all_dfa dfa character) :: run' (step all_dfa 
        let state, step dfa(all), dfa, character
        let sequence, run step dfa(all)
        prepend state, sequence
```

Seems like math is hiding too much of what's actually happening. It's fundamentally about actions, or changes. But "functional programming" hides this to make it about term rewriting. That is useful for some things, but not as the base of how the universe works. The universe is fundamentally about computation.

```coq
le_n : ∀n:nat, n ≤ n
```

that could be written something like this:

```coffee
le_n
  # basically the "forall" is a constraint on the type
  input n, type natural, constraint all
  output
    le n, n
```

---

```coq
Lemma accept_cons (x:A) (a:character) (w:word):
    (a::w \in accept x)
  = (w \in accept (step A x a)).

accept_cons :
forall (x : A) (a : character) (w : word),
(a :: w \in accept x) = (w \in accept (step A x a))

accept_cons :
forall (x : Finite.sort (state A)) (a : Finite.sort character) (w : word),
@eq bool
  (@in_mem (list (Finite.sort character)) (@cons (Finite.sort character) a w)
     (@mem word (boolfunPredType word) (accept x)))
  (@in_mem word w (@mem word (boolfunPredType word) (accept (step A x a))))

in_mem : forall T : Type (* Ssreflect.ssrbool.876 *), T -> mem_pred T -> bool
```

- http://ssr.msr-inria.inria.fr/doc/ssreflect-1.5/Ssreflect.ssrbool.html#in_mem
- http://ssr.msr-inria.inria.fr/doc/ssreflect-1.5/Ssreflect.ssrbool.html#mem_pred

```coffee
fact accept_cons
  input x, type dfa, for all
  input a, type character, for all
  input w, type word, for all

  equal
    in next(w), accept(x)
    in w, accept step dfa(all), x, next(w)
```

```coffee
fact accept_cons
  input a, as character, for all
  input w, as word, for all
  input x, as dfa, for all

  equal
    in next(w), accept(x)
    in w, accept step dfa(all), x, next(w)
```

```coq
Fixpoint get (n : nat) (s : string) {struct s} : option ascii :=
  match s with
  | EmptyString => None
  | String c s' => match n with
                   | O => Some c
                   | S n' => get n' s'
                   end
  end.

Theorem get_correct :
  forall s1 s2 : string, (forall n : nat, get n s1 = get n s2) <-> s1 = s2.
Proof.
```

```coffee
# get nth character from string
action get
  input n, number natural
  input s, string
  output optional ascii
  begin
    check s
      when empty, none
      when string c, s2
        check n
          when zero, some c
          # this is weird
          when successor(n2), get(n2, s2)

fact get_correct
  in every string s1, s2
    when
      in every number n
        fact
          equal 
            get n, s1
            get n, s2
      then
        fact
          equal s1, s2
```

> The point of the {struct ident} annotation is to let the user tell the system which argument decreases along the recursive calls. For instance, one can define the addition function as :

https://coq.inria.fr/refman/Reference-Manual003.html#sec54

```coq
Inductive True : Prop :=
  I : True.

Inductive False : Prop :=.
```

```coffee
type proposition
type true
type false
```

surround the bindings of implicit arguments by curly braces
https://coq.inria.fr/refman/Reference-Manual004.html#sec109

https://github.com/tomykaira/software_foundation_exercise

```coq
Notation "A -> B" := (forall (_ : A), B) : type_scope.

(** * Propositional connectives *)

(** [True] is the always true proposition *)

Inductive True : Prop :=
  I : True.

(** [False] is the always false proposition *)
Inductive False : Prop :=.

(** [not A], written [~A], is the negation of [A] *)
Definition not (A:Prop) := A -> False.

Inductive and (A B:Prop) : Prop :=
  conj : A -> B -> A /\ B

where "A /\ B" := (and A B) : type_scope.
```

```coffee
notation a -> b
  input a, as type
  input b, as type
  type rule

# usage when
type rule
  input a, as type
  input b, as type
  fact
    in every(a), fact b

type true
type false

type not
  input a, type proposition
  fact
    in every a, fact false

definition not
  input a, type proposition
  fact in every(a), false

constraint not
  input a
  when a
    false

constraint and
  input a
  input b
  output proposition
  when a
    when b
```

> Intuitionistic logic, a.k.a. constructive logic, differs from classic logic in that it focuses on 'provability' of a statement rather than 'truth'.

```coq
Variable A : Type.
Definition relation := A -> A -> Prop.
```

```coq
Definition relation := forall (Type, _), forall (Type, _), Prop
```

http://www.cis.upenn.edu/~bcpierce/sf/current/Rel.html

> A (binary) relation on a set X is a family of propositions parameterized by two elements of X — i.e., a proposition about pairs of elements of X. An example relation on nat is le, the less-that-or-equal-to relation which we usually write like this n1 ≤ n2.

The `le` relation is a family of propositions

This means `relation(X, X)` creates a family of propositions relating two elements of the same set/type. You use it like:

```coq
Definition reflexive {X: Type} (R: relation X) :=
  ∀a : X, R a a.

Theorem le_reflexive :
  reflexive le.
Proof.
  unfold reflexive. intros n. apply le_n. Qed.

Definition transitive {X: Type} (R: relation X) :=
  ∀a b c : X, (R a b) → (R b c) → (R a c).

Definition symmetric {X: Type} (R: relation X) :=
  ∀a b : X, (R a b) → (R b a).

Definition antisymmetric {X: Type} (R: relation X) :=
  ∀a b : X, (R a b) → (R b a) → a = b.

Definition equivalence {X:Type} (R: relation X) :=
  (reflexive R) ∧ (symmetric R) ∧ (transitive R).

(* A relation is a partial order when it's reflexive, anti-symmetric, and transitive. In the Coq standard library it's called just "order" for short. *)


Definition order {X:Type} (R: relation X) :=
  (reflexive R) ∧ (antisymmetric R) ∧ (transitive R).

Definition preorder {X:Type} (R: relation X) :=
  (reflexive R) ∧ (transitive R).
```

```coffee
Definition reflexive {X: Type} (R: relation X) :=
  ∀a : X, R a a.

definition relation
  input a, type type
  input b, type type

definition reflexive
  input x, type type
  input r, type relation x
  in every a, of type x
    r a, a

Definition transitive {X: Type} (R: relation X) :=
  ∀a b c : X, (R a b) → (R b c) → (R a c).

definition transitive
  input x, type type
  input r, type relation x
  in every a, b, c, of type x
    in every relation a, b
      in every relation b, c
        fact relation a, c
```

```coffee
in every relation b, c
  fact relation a, c

for every relation b, c
  fact relation a, c

# for a set of structures and set of constraints, a set of facts hold
# rule? logical rule, vs. action rule.
# structure rule vs. action rule
# state rule vs. change rule
in every(<structure>), <fact>
```

These are stating "observations". The act of observing itself is an action!

```coffee
definition reflexive
  input x, type type
  input r, type relation x
  when observe every a, of type x
    observe r a, a

definition reflexive
  given x, type type
  given r, type relation x
  when observe every a, of type x
    observe r a, a
```

```coq
Definition relation := fun (A : Type) => forall (_ : A), forall (_ : A), Prop
```

---

Inductive defintion generated with `Inductive and2 ...` in Coq:

```coq
and2_rect: forall (A B : Prop) (P : Type), (A -> B -> P) -> and2 A B -> P
```

```coffee
and2_rect
  given a, type proposition
  given b, type proposition
  given t, type type
  for every a, b, t
    when (a -> b -> t)
      observe and2 a b -> t

and2_rect
  given a, type proposition
  given b, type proposition
  given t, type type
  for every a, b, t
    when
      when observe a
        when observe b
          observe t
      observe
        when and2 a b
          observe t
```

Since it's about observations, it ties in with the whole structure being the relation between intelligence and information.

What is the constraint structure of that? It's like after each observation, your memory changes. So it should take that into account.

```coffee
and2_rect
  given a, type proposition
  given b, type proposition
  given t, type type
  for every a, b, t
    when
      when fact a
        when fact b
          fact t
      fact
        when and2 a b
          fact t
```

---

```coq
(* integer registers *)
Inductive ireg: Type :=
  | EAX: ireg  | EBX: ireg  | ECX: ireg  | EDX: ireg
  | ESI: ireg  | EDI: ireg  | EBP: ireg  | ESP: ireg.
```

```coffee
type register

usage register
  input name
  output type register integer

register eax
register ebx
register ecx
register edx
```

Second one is easier to read, and it's pretty much self explanatory.

```coq
Inductive instruction: Type :=
  (** Moves *)
  | Pmov_rr (rd: ireg) (r1: ireg)       (**r [mov] (32-bit int) *)
  | Pmov_ri (rd: ireg) (n: int)
  | Pmov_ra (rd: ireg) (id: ident)
  | Pmov_rm (rd: ireg) (a: addrmode)
  | Pmov_mr (a: addrmode) (rs: ireg)
  | Pmovsd_ff (rd: freg) (r1: freg)     (**r [movsd] (single 64-bit float) *)
  | Pmovsd_fi (rd: freg) (n: float)     (**r (pseudo-instruction) *)
```

```coffee
type instruction

usage instruction
  input name
  output type instruction

instruction Pmov_rr
  input rd, type ireg
  input r1, type ireg

instruction Pmov_ri
  input rd, type ireg
  input n, type int

instruction Pmov_ra
  input rd, type ireg
  input id, type ident

instruction Pmov_rm
  input rd, type ireg
  input a, type addrmode

instruction Pmov_mr
  input a, type addrmode
  input rs, type ireg

instruction Pmovsd_ff
  input rd, type freg
  input r1, type freg

instruction Pmovsd_fi
  input rd, type freg
  input n, type float
```

```coq
Definition code := list instruction.
```

```coffee
definition code
  is list instruction

type code
  type list instruction
```
