
> An important area for application of the cut theorem is in proofs of the decidability of logics

http://www.amazon.com/Proof-Theory-Formalisms-Mathematics-Applications/dp/1466564660

Decidable is an algorithm that tells if a certain element is in a set of formulas, typically true or false.

```coq
Definition decidable (P:Prop) := P \/ ~ P.
```

https://coq.inria.fr/library/Coq.Logic.Decidable.html

> A problem is decidable if there is an algorithm to solve it. An algorithm is a Turing machine that halts on all inputs (accepts or rejects it).
> Problems that are not decidable are called undecidable (also called semi-decidable, Turing-recognizable, or recursively enumerable)

By "decides", it either matches or doesn't match. Instead of "decidable", think of it as "able to make a decision, because it either matches or doesn't match." If it can never figure out either if it matches or doesn't match, like it goes into an infinite loop, then it is "not able to ever make a decision", so it is "undecidable". To accept or reject is to decide? That doesn't really feel right, it doesn't register mentally. It seems like a better word is "resolvable". If it accepts, it is resolved. If it rejects, it is resolved. If it neither matches or doesn't match, then it never resolves, it never makes a decision.

- Every regular language is decidable.
- Every context-free language is decidable.
- Any programming language you can think of is decidable.

It's hard to visualize this "decidable" word.

```
M decides a language L ⊆ Σ* if and only if:
For any string w ∈ Σ*
  if w ∈ L then M accepts w
  if w ∉ L then M rejects w
where M is a turing machine
```

So if a machine can either match or not match every element of a set, then it is "decidable". It's like, "processible" is better, or to say:

- Every regular language can be processed.
- Every element of a regular language can be resolved.
- Every pattern in a regular language can be recognized as a match or an error.
- Every pattern in a regular language is either expected or not expected.

That feels much better.

Example decidable problems:

- Does a particular DFA accept a given input string?
  + Check if it lands in accepting or rejecting state
- Does a DFA accept any string at all?
  + Check if the DFA can reach an accept state from the start state by traveling along the transition arrows.
- Do two DFAs (DFA A and DFA B) accept the same language?
- Does a regular expression generate a particular string?

How to use the word undecidable:

- Some problems are undecidable.
- In some problems, there is some pattern which is neither expected nor not expected.
- In some problems, there is some pattern which can never be figured out.

> A problem is called partially decidable, semi-decidable, solvable, or provable if A is a recursively enumerable set. This means that there exists an algorithm that halts eventually when the answer is yes but may run for ever if the answer is no.

A problem is semi-decidable if there if can either expect a pattern, or never not expected it.

> Partially decidable problems and any other problems that are not decidable are called undecidable.

> In computability theory, the halting problem is a decision problem which can be stated as follows: Given the description of an arbitrary program and a finite input, decide whether the program finishes running or will run forever.

https://en.wikipedia.org/wiki/Halting_problem

Prove a problem is undecidable by _reduction_.

https://en.wikipedia.org/wiki/Reduction_(complexity)

https://en.wikipedia.org/wiki/List_of_undecidable_problems

> an undecidable problem is a type of computational problem that requires a yes/no answer, but where there cannot possibly be any computer program that always gives the correct answer; that is any possible program would sometimes give the wrong answer or run forever without giving any answer.

> A single statement is called undecidable if neither it nor its negation can be deduced using the rules of logic from the set of axioms being used.

> There is a connection between the two notions of undecidability. Fix a decision problem
and an axiom system A such that
(a) there is a computer program that generates exactly the axioms of A; and
(b) there is a computer program that, when fed an instance i of the decision problem, outputs
a statement Yi
in the language of A such that
• if Yi
is provable in A, then the answer to i is YES, and
• if ¬Yi
is provable in A, then the answer to i is NO.
http://arxiv.org/pdf/1204.0299v2.pdf

> In all the undecidable decision problems we present, the source of the undecidability can be traced back to a single undecidable decision problem, namely the halting problem, or equivalently the membership problem for listable sets

---

https://en.wikipedia.org/wiki/Hilbert%27s_problems

---

Ascii decidability:

```coq
ascii_dec :
forall a b : ascii, sumbool (@eq ascii a b) (not (@eq ascii a b))

eq : forall A : Type, A -> A -> Prop
not : Prop -> Prop
sumbool : Prop -> Prop -> Set
```

That is saying "for all a, b of type ascii, either a is equal to b, or a is not equal to b".

```coffee
decidability ascii
  input a, type ascii
  input b, type ascii
  either
    equal a, b
    not equal a, b
```

> Cypi: @ is just a modifier to say that no arguments should be explicit in the next constant
[3:20pm] Cypi: so @eq is just like eq, but with no implicit arguments
[3:20pm] Cypi: that no arguments should be implicit*, sorry
[3:21pm] Cypi: You can do [Print eq.] if you want, it is just the standard equality

Sumbool takes two proposition and returns a set.

```coq
SearchAbout "dec".
ascii_dec:
  forall a b : ascii, sumbool (@eq ascii a b) (not (@eq ascii a b))
Bool.bool_dec:
  forall b1 b2 : bool, sumbool (@eq bool b1 b2) (not (@eq bool b1 b2))
Bool.reflect_dec:
  forall (P : Prop) (b : bool), Bool.reflect P b -> sumbool P (not P)
lt_eq_lt_dec:
  forall n m : nat, sumor (sumbool (lt n m) (@eq nat n m)) (lt m n)
gt_eq_gt_dec:
  forall n m : nat, sumor (sumbool (gt m n) (@eq nat n m)) (gt n m)
le_lt_dec: forall n m : nat, sumbool (le n m) (lt m n)
le_le_S_dec: forall n m : nat, sumbool (le n m) (le (S m) n)
le_ge_dec: forall n m : nat, sumbool (le n m) (ge n m)
le_gt_dec: forall n m : nat, sumbool (le n m) (gt n m)
le_lt_eq_dec: forall n m : nat, le n m -> sumbool (lt n m) (@eq nat n m)
le_dec: forall n m : nat, sumbool (le n m) (not (le n m))
lt_dec: forall n m : nat, sumbool (lt n m) (not (lt n m))
gt_dec: forall n m : nat, sumbool (gt n m) (not (gt n m))
ge_dec: forall n m : nat, sumbool (ge n m) (not (ge n m))
dec_le: forall n m : nat, Decidable.decidable (le n m)
dec_lt: forall n m : nat, Decidable.decidable (lt n m)
dec_gt: forall n m : nat, Decidable.decidable (gt n m)
dec_ge: forall n m : nat, Decidable.decidable (ge n m)
Decidable.decidable: Prop -> Prop
Decidable.dec_not_not:
  forall P : Prop, Decidable.decidable P -> (not P -> False) -> P
Decidable.dec_True: Decidable.decidable True
Decidable.dec_False: Decidable.decidable False
Decidable.dec_or:
  forall A B : Prop,
  Decidable.decidable A ->
  Decidable.decidable B -> Decidable.decidable (or A B)
Decidable.dec_and:
  forall A B : Prop,
  Decidable.decidable A ->
  Decidable.decidable B -> Decidable.decidable (and A B)
Decidable.dec_not:
  forall A : Prop, Decidable.decidable A -> Decidable.decidable (not A)
Decidable.dec_imp:
  forall A B : Prop,
  Decidable.decidable A ->
  Decidable.decidable B -> Decidable.decidable (A -> B)
Decidable.dec_iff:
  forall A B : Prop,
  Decidable.decidable A ->
  Decidable.decidable B -> Decidable.decidable (iff A B)
eq_nat_decide: forall n m : nat, sumbool (eq_nat n m) (not (eq_nat n m))
Eqdep_dec.K_dec:
  forall A : Type (* Coq.Logic.Eqdep_dec.1 *),
  (forall x y : A, or (@eq A x y) (not (@eq A x y))) ->
  forall (x : A) (P : @eq A x x -> Prop),
  P (@eq_refl A x) -> forall p : @eq A x x, P p
Eqdep_dec.K_dec_type:
  forall A : Type (* Coq.Logic.Eqdep_dec.55 *),
  (forall x y : A, sumbool (@eq A x y) (not (@eq A x y))) ->
  forall (x : A) (P : @eq A x x -> Prop),
  P (@eq_refl A x) -> forall p : @eq A x x, P p
Eqdep_dec.K_dec_set:
  forall A : Set,
  (forall x y : A, sumbool (@eq A x y) (not (@eq A x y))) ->
  forall (x : A) (P : @eq A x x -> Prop),
  P (@eq_refl A x) -> forall p : @eq A x x, P p
Eqdep_dec.eq_rect_eq_dec:
  forall A : Type (* Coq.Logic.Eqdep_dec.68 *),
  (forall x y : A, sumbool (@eq A x y) (not (@eq A x y))) ->
  forall (p : A) (Q : A -> Type (* Coq.Logic.Eqdep_dec.71 *)) 
    (x : Q p) (h : @eq A p p), @eq (Q p) x (@eq_rect A p Q x p h)
Eqdep_dec.eq_dep_eq_dec:
  forall A : Type (* Coq.Logic.Eqdep_dec.78 *),
  (forall x y : A, sumbool (@eq A x y) (not (@eq A x y))) ->
  forall (P : A -> Type (* Coq.Logic.Eqdep_dec.81 *)) (p : A) (x y : P p),
  EqdepFacts.eq_dep A P p x p y -> @eq (P p) x y
Eqdep_dec.UIP_dec:
  forall A : Type (* Coq.Logic.Eqdep_dec.88 *),
  (forall x y : A, sumbool (@eq A x y) (not (@eq A x y))) ->
  forall (x y : A) (p1 p2 : @eq A x y), @eq (@eq A x y) p1 p2
Eqdep_dec.inj_pair2_eq_dec:
  forall A : Type (* Coq.Logic.Eqdep_dec.199 *),
  (forall x y : A, sumbool (@eq A x y) (not (@eq A x y))) ->
  forall (P : A -> Type (* Coq.Logic.Eqdep_dec.202 *)) 
    (p : A) (x y : P p),
  @eq (@sigT A P) (@existT A P p x) (@existT A P p y) -> @eq (P p) x y
Even.even_odd_dec: forall n : nat, sumbool (Even.even n) (Even.odd n)
List.in_dec:
  forall A : Type (* Coq.Lists.List.57 *),
  (forall x y : A, sumbool (@eq A x y) (not (@eq A x y))) ->
  forall (a : A) (l : list A),
  sumbool (@List.In A a l) (not (@List.In A a l))
List.list_eq_dec:
  forall A : Type (* Coq.Lists.List.2001 *),
  (forall x y : A, sumbool (@eq A x y) (not (@eq A x y))) ->
  forall l l' : list A,
  sumbool (@eq (list A) l l') (not (@eq (list A) l l'))
Max.max_dec:
  forall n m : nat, sumbool (@eq nat (max n m) n) (@eq nat (max n m) m)
Min.min_dec:
  forall n m : nat, sumbool (@eq nat (min n m) n) (@eq nat (min n m) m)
NPeano.div2_decr: forall a n : nat, le a (S n) -> le (Div2.div2 a) n
eq_nat_dec: forall n m : nat, sumbool (@eq nat n m) (not (@eq nat n m))
dec_eq_nat: forall n m : nat, Decidable.decidable (@eq nat n m)
decide_left:
  forall (C : Prop) (decide : sumbool C (not C)),
  C ->
  forall P : sumbool C (not C) -> Prop,
  (forall H : C, P (@left C (not C) H)) -> P decide
decide_right:
  forall (C : Prop) (decide : sumbool C (not C)),
  not C ->
  forall P : sumbool C (not C) -> Prop,
  (forall H : not C, P (@right C (not C) H)) -> P decide
dec_inh_nat_subset_has_unique_least_element:
  forall P : nat -> Prop,
  (forall n : nat, or (P n) (not (P n))) ->
  @ex nat (fun n : nat => P n) -> @has_unique_least_element nat le P
ZArith_dec.Z_lt_dec:
  forall x y : BinNums.Z,
  sumbool (BinInt.Z.lt x y) (not (BinInt.Z.lt x y))
ZArith_dec.Z_le_dec:
  forall x y : BinNums.Z,
  sumbool (BinInt.Z.le x y) (not (BinInt.Z.le x y))
ZArith_dec.Z_gt_dec:
  forall x y : BinNums.Z,
  sumbool (BinInt.Z.gt x y) (not (BinInt.Z.gt x y))
ZArith_dec.Z_ge_dec:
  forall x y : BinNums.Z,
  sumbool (BinInt.Z.ge x y) (not (BinInt.Z.ge x y))
ZArith_dec.Z_lt_ge_dec:
  forall x y : BinNums.Z, sumbool (BinInt.Z.lt x y) (BinInt.Z.ge x y)
ZArith_dec.Z_lt_le_dec:
  forall x y : BinNums.Z, sumbool (BinInt.Z.lt x y) (BinInt.Z.le y x)
ZArith_dec.Z_le_gt_dec:
  forall x y : BinNums.Z, sumbool (BinInt.Z.le x y) (BinInt.Z.gt x y)
ZArith_dec.Z_gt_le_dec:
  forall x y : BinNums.Z, sumbool (BinInt.Z.gt x y) (BinInt.Z.le x y)
ZArith_dec.Z_ge_lt_dec:
  forall x y : BinNums.Z, sumbool (BinInt.Z.ge x y) (BinInt.Z.lt x y)
ZArith_dec.Z_le_lt_eq_dec:
  forall x y : BinNums.Z,
  BinInt.Z.le x y -> sumbool (BinInt.Z.lt x y) (@eq BinNums.Z x y)
ZArith_dec.Z_dec:
  forall n m : BinNums.Z,
  sumor (sumbool (BinInt.Z.lt n m) (BinInt.Z.gt n m)) (@eq BinNums.Z n m)
ZArith_dec.Z_dec':
  forall n m : BinNums.Z,
  sumor (sumbool (BinInt.Z.lt n m) (BinInt.Z.lt m n)) (@eq BinNums.Z n m)
ZArith_dec.Z_noteq_dec:
  forall x y : BinNums.Z,
  sumbool (not (@eq BinNums.Z x y)) (@eq BinNums.Z x y)
Zabs.Zabs_dec:
  forall x : BinNums.Z,
  sumbool (@eq BinNums.Z x (BinInt.Z.abs x))
    (@eq BinNums.Z x (BinInt.Z.opp (BinInt.Z.abs x)))
Zeven.Zeven_odd_dec:
  forall n : BinNums.Z, sumbool (Zeven.Zeven n) (Zeven.Zodd n)
Zeven.Zeven_dec:
  forall n : BinNums.Z, sumbool (Zeven.Zeven n) (not (Zeven.Zeven n))
Zeven.Zodd_dec:
  forall n : BinNums.Z, sumbool (Zeven.Zodd n) (not (Zeven.Zodd n))
Zorder.dec_Zne:
  forall n m : BinNums.Z, Decidable.decidable (BinInt.Zne n m)
Zorder.dec_Zgt:
  forall n m : BinNums.Z, Decidable.decidable (BinInt.Z.gt n m)
Zorder.dec_Zge:
  forall n m : BinNums.Z, Decidable.decidable (BinInt.Z.ge n m)
BinNat.N.eq_dec:
  forall n m : BinNums.N,
  sumbool (@eq BinNums.N n m) (not (@eq BinNums.N n m))
BinNat.N.eq_decidable:
  forall n m : BinNums.N, Decidable.decidable (@eq BinNums.N n m)
BinNat.N.lt_decidable:
  forall n m : BinNums.N, Decidable.decidable (BinNat.N.lt n m)
BinNat.N.le_decidable:
  forall n m : BinNums.N, Decidable.decidable (BinNat.N.le n m)
BinNat.N.max_dec:
  forall n m : BinNums.N,
  sumbool (@eq BinNums.N (BinNat.N.max n m) n)
    (@eq BinNums.N (BinNat.N.max n m) m)
BinNat.N.min_dec:
  forall n m : BinNums.N,
  sumbool (@eq BinNums.N (BinNat.N.min n m) n)
    (@eq BinNums.N (BinNat.N.min n m) m)
NPeano.Nat.eq_dec:
  forall n m : nat, sumbool (@eq nat n m) (not (@eq nat n m))
NPeano.Nat.eq_decidable:
  forall n m : nat, Decidable.decidable (@eq nat n m)
NPeano.Nat.lt_decidable: forall n m : nat, Decidable.decidable (lt n m)
NPeano.Nat.le_decidable: forall n m : nat, Decidable.decidable (le n m)
NPeano.Nat.max_dec:
  forall n m : nat, sumbool (@eq nat (max n m) n) (@eq nat (max n m) m)
NPeano.Nat.min_dec:
  forall n m : nat, sumbool (@eq nat (min n m) n) (@eq nat (min n m) m)
BinPos.Pos.eq_dec:
  forall x y : BinNums.positive,
  sumbool (@eq BinNums.positive x y) (not (@eq BinNums.positive x y))
BinPos.Pos.sub_decr:
  forall n m : BinNums.positive,
  BinPos.Pos.lt m n -> BinPos.Pos.lt (BinPos.Pos.sub n m) n
BinPos.Pos.max_dec:
  forall n m : BinNums.positive,
  sumbool (@eq BinNums.positive (BinPos.Pos.max n m) n)
    (@eq BinNums.positive (BinPos.Pos.max n m) m)
BinPos.Pos.min_dec:
  forall n m : BinNums.positive,
  sumbool (@eq BinNums.positive (BinPos.Pos.min n m) n)
    (@eq BinNums.positive (BinPos.Pos.min n m) m)
BinInt.Z.eq_dec:
  forall x y : BinNums.Z,
  sumbool (@eq BinNums.Z x y) (not (@eq BinNums.Z x y))
BinInt.Z.eq_decidable:
  forall n m : BinNums.Z, Decidable.decidable (@eq BinNums.Z n m)
BinInt.Z.lt_decidable:
  forall n m : BinNums.Z, Decidable.decidable (BinInt.Z.lt n m)
BinInt.Z.le_decidable:
  forall n m : BinNums.Z, Decidable.decidable (BinInt.Z.le n m)
BinInt.Z.max_dec:
  forall n m : BinNums.Z,
  sumbool (@eq BinNums.Z (BinInt.Z.max n m) n)
    (@eq BinNums.Z (BinInt.Z.max n m) m)
BinInt.Z.min_dec:
  forall n m : BinNums.Z,
  sumbool (@eq BinNums.Z (BinInt.Z.min n m) n)
    (@eq BinNums.Z (BinInt.Z.min n m) m)
Top.le_lt_dec: forall n m : nat, sumbool (le n m) (lt m n)
```

> viatropos: question about symbol, trying to understand it because a lot of the decidability stuff in coq uses it but it's not explained clearly anywhere
[3:44pm] viatropos: found this http://seb.mondet.org/blog/post/coqtests-02-sumbools.html
[3:44pm] viatropos: by symbol, i mean sumbool (autocorrect :|)
[3:44pm] viatropos: is sumbool basically *creating* a boolean type?
[3:45pm] viatropos: b/c it's of type Set, and it returns a set of 2 items
[3:45pm] viatropos: and those items are propositions
[3:45pm] viatropos: so when it's written sumbool ‘is a boolean type equipped with the justification of their value’
[3:45pm] viatropos: it's not actually of type "bool" in coq
[3:45pm] Cypi: The keyword "Inductive" introduces the definition of a new inductive type
[3:45pm] Cypi: so now, it's not actually of type "bool"
[3:45pm] viatropos: instead, it's creating a custom type similar to bool, but for your 2 propositions
[3:46pm] Cypi: but since there are 2 constructors, you have a trivial correspondence with the type bool
[3:46pm] Cypi: yup
[3:46pm] viatropos: ok awesome, making more sense now
viatropos: ok awesome, making more sense now
[3:47pm] Cypi: I believe that when they say "boolean type", they approximately means "a type with two values"
[3:47pm] viatropos: yeah, that should be clarified haha
[3:47pm] Cypi: (even though in that case it is really an approximate meaning)
[3:47pm] viatropos: so confused for a long time
[3:47pm] Cypi: (because you can have non-equal proof of the same proposition)
[3:48pm] Cypi: (so you could have some [p : A] and [q : A] such that you cannot prove [left p = left q])
[3:48pm] Cypi: (but anyway, the spirit is there  )
[3:48pm] viatropos: don't quite understand what you mean there yet
[3:49pm] viatropos: want to get a better sense of how these decidability definitions work, let me try
[3:49pm] viatropos: so a decidability definition like [le_lt_dec : forall n m : nat, sumbool (le n m) (lt m n)] is says "for all natural numbers n and n, there is a 2-constructor type with the proposition [le n m] and [lt n m]"?
[3:49pm] hegel left the chat room. (Quit: WeeChat 1.0.1)
[3:49pm] viatropos: "natural numbers n and m"
[3:50pm] Cypi: No, it's better than that. This type exists anyway. But what you need to prove is that this type is inhabited. This is what [le_lt_dec] does.
[3:50pm] Cypi: For any [n m : nat], it gives you an inhabitant of the type [sumbool (le n m) (lt m n)]
[3:50pm] viatropos: what "gives an inhabitant", is it the proof?
[3:51pm] Cypi: Yes. In Coq, proving is the same as giving an inhabitant
[3:51pm] Cypi: Type <-> Theorems, Terms <-> Proofs

> 108  How can I prove that 2 terms in an inductive set are equal? Or different?
> Have a look at "decide equality" and "discriminate" in the Reference Manual.

Decide equality: This tactic solves a goal of the form forall x y:R, {x=y}+{~x=y}, where R is an inductive type such that its constructors do not take proofs or functions as arguments, nor objects in dependent types. It solves goals of the form {x=y}+{~x=y} as well.

> viatropos: why do some decidability definitions use [Decidable.decidable] while others use [sumbool]?
[4:10pm] viatropos: eg [BinNat.N.lt_decidable: forall n m : BinNums.N, Decidable.decidable (BinNat.N.lt n m)]
[4:10pm] viatropos: [ascii_dec: forall a b : ascii, sumbool (@eq ascii a b) (not (@eq ascii a b))]
[4:11pm] viatropos: is that just a refactoring thing or do they mean two different things?
[4:11pm] viatropos: (wondering if all "decidability definitions" have pretty much the same format)
[4:12pm] viatropos: it seems like it's two different coding styles i'm guessing
[4:13pm] Cypi: just a refactoring style, I believe
[4:13pm] viatropos: ok
Cypi: Ah, nevermind
[4:13pm] Cypi: Decidable.decidable is for things in Prop
[4:14pm] Cypi: but so is [@eq ascii a b]
[4:14pm] Cypi: so yeah, refactoring 
[4:14pm] viatropos: ok cool
Cypi: Uh, I'm terrible. There is another difference.
[4:16pm] Cypi: Decidable.decidable returns something in Prop, whereas sumbool is in Set
[4:16pm] Cypi: Decidable.decidable is just defined as [fun (P : Prop) => P \/ ~ P]
[4:17pm] Cypi: So it's using the inductive type [or], which is exactly the same as [sumbool], except that it lands in Prop, not in Set
[4:17pm] viatropos: ok, when would you pick one or the other?
[4:18pm] viatropos: like could the bool_dec be rewritten to use [Decidable.decidable]?
Cypi: You could, yes
[4:18pm] Cypi: If you are just proving stuff, then using things in Prop is fine
[4:18pm] Cypi: but if you need to compute, like you would do with actual booleans, then you need something in Set
[4:18pm] viatropos: what is the benefit of using sumbool then?
[4:19pm] viatropos: ok

Where "decide equality" tactic is defined: https://github.com/coq/coq/blob/trunk/tactics/eqdecide.ml

https://github.com/clarus/phd-experiments

```coffee
type truth
  type false
  type true

fact decidable, truth
  input a, type truth
  input b, type truth
  match
    either
      equal a, b
      not equal a, b
```

Generic model of decidable:

```coffee
pattern decidable
  input t, type type
  input a, type t
  input b, type t
  match
    either
      equal a, b
      not equal a, b

usage decidable
  input type

pattern truth
pattern ascii
  pattern set binary

decidable truth
decidable ascii
```

Sumbool is saying "for all a and b, they fall into one of these two categories.", or "they fit/match one of these two patterns".

Equality decidability

```ocaml
let rec eq_nat_dec n m =
  match n with
  | O ->
    (match m with
     | O -> true
     | S n0 -> false)
  | S n' ->
    (match m with
     | O -> false
     | S m' -> eq_nat_dec n' m')
```

```coffee
decide equality
  input a, type natural number
  input b, type natural number
  match a
    when zero
      match b
        when zero
          return true
        when successor y
          return false
    when successor x
      match b
        when zero
          return false
        when successor y
          return decide x, y
```

```coffee
decide equality
  input a, type natural number
  input b, type natural number
  match a
    when zero
      match b
        return true, when zero
        return false, when successor(y)
    when successor x
      match b
        return false, when zero
        return decide(x, y), when successor(y)
```

```coq
Recursive Extraction Nat.Private_Dec.max_dec.
```

```ocaml
type bool =
| True
| False

type sumbool =
| Left
| Right

let bool_dec b1 b2 =
  match b1 with
  | True ->
    (match b2 with
     | True -> Left
     | False -> Right)
  | False ->
    (match b2 with
     | True -> Right
     | False -> Left)
```

```coffee
pattern true
pattern false

pattern truth
  pattern true
  pattern false

pattern truth
  pattern left
  pattern right

decide truth
  input a, type truth
  input b, type truth
  match a
    when true
      match b
        return left, when true
        return right, when false
    when false
      match b
        return right, when true
        return left, when false
```

```ocaml
type nat =
| O
| S of nat

type sumbool =
| Left
| Right

(** val le_lt_dec : nat -> nat -> sumbool **)

let rec le_lt_dec n m =
  match n with
  | O -> Left
  | S n0 ->
    (match m with
     | O -> Right
     | S m0 -> le_lt_dec n0 m0)
```

```coffee
pattern natural number
  pattern zero
  pattern successor natural number

pattern decision binary
  pattern left
  pattern right

pattern choice
  pattern left
  pattern right

decide less than or equal to
  input a, type natural number
  input b, type natural number
  match a
    when zero
      return choice left
    when next x
      match b
        when zero
          return choice right
        when next y
          return decide x, y
```

```ocaml
type ascii =
| Ascii of bool * bool * bool * bool * bool * bool * bool * bool
```

```coffee
pattern ascii
  repeat eight
    pattern truth
```

```ocaml
let ascii_dec a b =
  let Ascii (x, x0, x1, x2, x3, x4, x5, x6) = a in
  let Ascii (b8, b9, b10, b11, b12, b13, b14, b15) = b in
  (match bool_dec x b8 with
   | Left ->
     (match bool_dec x0 b9 with
      | Left ->
        (match bool_dec x1 b10 with
         | Left ->
           (match bool_dec x2 b11 with
            | Left ->
              (match bool_dec x3 b12 with
               | Left ->
                 (match bool_dec x4 b13 with
                  | Left ->
                    (match bool_dec x5 b14 with
                     | Left -> bool_dec x6 b15
                     | Right -> Right)
                  | Right -> Right)
               | Right -> Right)
            | Right -> Right)
         | Right -> Right)
      | Right -> Right)
   | Right -> Right)
```

```coffee
decide ascii
  input a, type ascii
  input b, type ascii
  match decide a1, b1
    when left
      match decide a2, b2
        when left
          match decide a3, b3
            when left
              match decide a4, b4
                when left
                  match decide a5, b5
                    when left
                      match decide a6, b6
                        when left
                          match decide a7, b7
                            when left, return decide(a8, b8)
                            when right, return right
                        when right, return right
                    when right, return right
                when right, return right
            when right, return right
        when right, return right
    when right, return right
```

That's how you would do it functionally. But it would be simpler in an iterative way.

```coffee
decide ascii
  input a, type ascii
  input b, type ascii
  compare parts, a, b, decide
```

```ocaml
type comparison =
| Eq
| Lt
| Gt

let rec nat_compare n m =
  match n with
  | O ->
    (match m with
     | O -> Eq
     | S n0 -> Lt)
  | S n' ->
    (match m with
     | O -> Gt
     | S m' -> nat_compare n' m')
```

```coffee
pattern comparison
  choice pattern equal
  choice pattern less
  choice pattern more

action compare
  input a, type natural number
  input b, type natural number
  steps
    match a
      when zero
        match b
          when zero
            return equal
          when next y
            return less
      when next x
        match b
          when zero
            return more
          when next y
            return compare x, y

action compare
  input a, type natural number
  input b, type natural number
  match a, b
    when zero, zero
      return equal
    when zero, next(y)
      return less
    when next(x), zero
      return more
    when next(x), next(y)
      return compare x, y
```

```ocaml
let rec even = function
| O -> True
| S n0 ->
  (match n0 with
   | O -> False
   | S n' -> even n')
```

```coffee
# this is a fixpoint
# the most generic algorithm takes you down to zero one step at a time.
test even
  input n, type natural number
  match n
    when zero, return true
    when next(x)
      match x
        when zero, return false
        when next(y), return test(even, y)
```

```ocaml
let rec max n m =
   match n with
   | O -> m
   | S n' ->
     (match m with
      | O -> n
      | S m' -> S (max n' m'))
```

```coffee
# this is fixpoint too
test max
  input a
  input b
  match a
    when zero, return b
    when next(x)
      match b
        when zero, return a
        when next(y), return next test max x, y

test max
  input a
  input b
  match a, b
    when zero, anything
      return b
    when next(x), zero
      return a
    when next(x), next(y)
      return next test max x, y
```

```ocaml
let rec minus n m =
  match n with
  | O -> n
  | S k ->
    (match m with
     | O -> n
     | S l -> minus k l)
```

```coffee
action subtract
  input a
  input b
  match a
    when zero, return a
    when next(x)
      match b
        when zero, return a
        when next(y), return subtract(x, y)

action subtract
  input a
  input b
  match a, b
    when zero, anything
      return a
    when next(x), zero
      return a
    when next(x), next(y)
      return subtract(x, y)
```

```ocaml
let rec plus n m =
  match n with
  | O -> m
  | S p -> S (plus p m)

(** val mult : nat -> nat -> nat **)

let rec mult n m =
  match n with
  | O -> O
  | S p -> plus m (mult p m)
```

```coffee
action add
  input a
  input b
  match a
    when zero
      return b
    when next(x)
      return next add x, b

action multiply
  input a
  input b
  match a
    when zero
      return zero
    when next(x)
      return add b, multiply(x, b)
```
