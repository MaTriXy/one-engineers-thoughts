
source formally verified browser
  https://github.com/Conservatory/quark/tree/master/kernel

source tutorial
  http://www.cis.upenn.edu/~bcpierce/sf/current/toc.html
  http://compcert.inria.fr/man/

source proof of temporal logic
  https://www.cs.nyu.edu/~ejk/papers/thesis.pdf

brew install ssreflect

> Coq comes with nothing built-in

source cheatsheets
  https://coq.inria.fr/distrib/current/refman/tactic-index.html
  https://coq.inria.fr/distrib/current/refman/command-index.html
  http://adam.chlipala.net/itp/tactic-reference.html
  http://andrej.com/coq/cheatsheet.pdf

source tactics
  http://cs.brown.edu/courses/cs195x/current/sf/html/MoreCoq.html
  http://www.seas.upenn.edu/~cis500/current/sf/MoreInd.html

source info
  http://en.wikipedia.org/wiki/Calculus_of_constructions

note We use brackets to write contexts. A typical example is [x : T ; y := u : U ; z : V ]

brew update
brew install opam
brew unlink camlp5
brew install Camlp5

> basic tactics either run an inference rule forwards or backwards (for example, convert hypotheses A and B into A∧B or convert goal A∧B into two goals A and B with same hypotheses), apply a lemma (~ function application), split up a lemma about some inductive type into a case for each constructor, and so on.

> In most type theories, one usually makes a syntactic distinction between types and terms. This is not the case for pCIC which defines both types and terms in the same syntactical structure.

What exactly are terms in Coq?

```coq
forall A B C, (A->B->C)->(A->B)->(A->C).
```
means
```
forall A B C : Type, (A -> B -> C) -> (A -> B) -> A -> C
```

---

```coq
Definition decidable (P:Prop) := P \/ ~ P.

Theorem dec_not : forall A:Prop, decidable A -> decidable (~ A).
Proof.
unfold decidable; tauto.
Qed.
```

```coffee
alias
  of type x
  as x

alias
  decidable
  is decidable

# fact and definition mean the same thing
# but maybe definitions are axioms, things that are taken without proof.
# `fact decidable`
# for maybe a definition is a type
# `type proposition decidable`
definition decidable
  given p, type proposition
  respond
    either
      p
      not p

fact not decidable
  for every a, as proposition
    when decidable a
      decidable not a
  proof
    # but, should use better steps than these, these are almost impossible to read.
    unfold decidable
    tauto
```

Definitions are like constructions. They can either be types (which are actions of mental construction), or just generic actions.

---

Print out in ocaml.

```coq
Extraction le_lt_dec.
(** val le_lt_dec : nat -> nat -> sumbool **)

let rec le_lt_dec n m =
  match n with
  | O -> Left
  | S n0 ->
    (match m with
     | O -> Right
     | S m0 -> le_lt_dec n0 m0)
```

GOOD: http://seb.mondet.org/blog/post/coqtests-02-sumbools.html
http://adam.chlipala.net/cpdt/html/Subset.html

```coq
Eval compute in le_lt_dec 42 42.
     = left
         (Gt.gt_le_S 41 42
            (Lt.le_lt_n_Sm 41 41
               (Gt.gt_le_S 40 41
                  (Lt.le_lt_n_Sm 40 40
                     (Gt.gt_le_S 39 40
                        (Lt.le_lt_n_Sm 39 39
                           (Gt.gt_le_S 38 39
                              (Lt.le_lt_n_Sm 38 38
                                 (Gt.gt_le_S 37 38
                                    (Lt.le_lt_n_Sm 37 37
                                       (Gt.gt_le_S 36 37
                                          (Lt.le_lt_n_Sm 36 36
                                             (Gt.gt_le_S 35 36
                                                (Lt.le_lt_n_Sm 35 35
                                                  (Gt.gt_le_S 34 35
                                                  (Lt.le_lt_n_Sm 34 34
                                                  (Gt.gt_le_S 33 34
                                                  (Lt.le_lt_n_Sm 33 33
                                                  (Gt.gt_le_S 32 33
                                                  (Lt.le_lt_n_Sm 32 32
                                                  (Gt.gt_le_S 31 32
                                                  (Lt.le_lt_n_Sm 31 31
                                                  (Gt.gt_le_S 30 31 (..))))))))))))))))))))))))
     : {42 <= 42} + {42 < 42}
```

> vanila: https://coq.inria.fr/library/Coq.Arith.Le.html
[1:31pm] vanila: to prove le you need to build up a term with these constructors
[1:31pm] vanila: there will have to be something like 100000 le_S constructors in your proof term
[1:31pm] vanila: because it's define in terms of unary natural numbers
[1:32pm] vanila: when you write 100000 that is just syntactic sugar for S (S (S ...)) with 10000s of constructors
[1:32pm] vanila: so a direct proof term like this will kill Coq
[1:33pm] vanila: on the other hand, you could implement base 10 (or binary) numbers and prove that they have a relationship with the unary number system
[1:33pm] Tuplanolla: Here's a more efficient encoding for natural numbers: Inductive bin : Type := Z : bin | T : bin -> bin | ST : bin -> bin.
[1:33pm] vanila: then you should easily be able to use computation to prove "100000" < "1000000" as base 10 numbers
[1:33pm] Tuplanolla: That one is either zero, twice something or the successor of twice something.
viatropos: Ok so there are more efficient ways of doing this is what it seems like you're saying
[1:35pm] viatropos: But you're also saying that you *do* have to actually compute every step for it to be "proven"?
[1:36pm] vanila: sort of
[1:36pm] vanila: for a direct proof: yes
[1:36pm] ptcek left the chat room. (Quit: Lost terminal)
[1:36pm] viatropos: interesting, how can you prove the same thing using something other than direct proof?
[1:36pm] vanila: but there are indirect proofs which could be done with less computation (like using base 10 for example)
[1:37pm] viatropos: ok, but even that, you still would do something like 10^2 <= 10^3, 10^3 <= 10^4, etc.
[1:37pm] viatropos: is there a way to do it in only 1 step?
[1:37pm] viatropos: or just a few steps, independent of the size of the number?
[1:38pm] viatropos: like say it was proving 12381871 <= 1874989182 (something arbitrary)
[1:38pm] Tuplanolla: Encode them as strings and compare lengths for example. Is that one enough step?
[1:39pm] Tuplanolla: You need to be the clever one here.
[1:39pm] viatropos: Ah ok, that makes sense
[1:39pm] viatropos: It's all about being clever then 
[1:39pm] viatropos: But you do actually have to perform all the steps
[1:40pm] vanila: Definition bar : nat := 1874989182.
vanila: Definition bar : nat := 1874989182.
[1:40pm] vanila: this crashes Coq
vanila: because the object is gigantic: S (S (S ...))
[1:42pm] vanila: so you can't even really talk about this number as a 'nat' in Coq
[1:44pm] viatropos: super interesting, starting to make sense now
[1:44pm] viatropos: so are there standard "efficient" techniques for better defining that number?
[1:44pm] vanila: you can use BinNat
[1:44pm] viatropos: like how would you prefer to define that number in coq?
[1:44pm] viatropos: ah
[1:44pm] vanila: Definition bar' : N := 1874989182%N.
[1:44pm] vanila: this should be fine, and using binnat comparison you can use computation to prove the theorem
[1:45pm] vanila: but le on N is defined different than on nat, so the proof itself is much much shorter
[1:45pm] vanila: that's why Coq can handle it
[1:46pm] viatropos: interesting, okay it's starting to make sense, yay
viatropos: So then, how would this work in practice? Say you have an expression in a programming language like `n <= m`, and they're of type "natural". But they can be any value, say up to 2147483647. Once the proof assistant or verifier comes to that expression `n <= m`, and knows `n == 21474836400` and `m == 2147483647 `, and that they are natural numbers, would the ideal be that it knows natural number proofs of large values are slow, so it instead uses the BinNat proof, knowing there is an already verified proof of the equality between nat and BinNat?
[1:54pm] vanila: yeah thats right, although it might be even better to use 32 (or whatever) bit numbers, nat and N let you make numbers arbitrarily high
[1:54pm] vanila: when modelling a programming language
viatropos: so then if `nat` is so inefficient in practice, where is it useful?
[2:03pm] vanila: nat is very useful because it has such a simple induction scheme
[2:06pm] Tuplanolla: If you read classical mathematics, you'll rarely encounter numbers greater than 8, viatropos.
[2:07pm] cedric_: For instance, for the Vector type, you do not lose much space by using nat as an index: Inductive Vector (A:Type) : nat -> Type := Nil : Vector A O | Cons : forall n, A -> Vector A n -> Vector A (S n).
[2:07pm] tpsinnem left the chat room. (Ping timeout: 240 seconds)
[2:08pm] cedric_: You could use BinNat instead of nat in this definition, but it will be certainly less convenient to use.

---

```coq
Inductive symbol :=
  | T: terminal -> symbol
  | NT: nonterminal -> symbol.
```

```coffee
pattern term
  either
    pattern terminal
    pattern non terminal
```

---

https://github.com/mmalvarez/vst/blob/master/examples/sep/language.v#L43

```coq
Inductive command := 
| Skip : command
| Assign: var -> var -> command
| Load : var -> var -> command
| Store: var -> var -> command
| Seq: command -> command -> command.

Inductive step: relation (command * state) :=
| stepAssign: 
        forall x y v stk hp,
        table_get stk y = Some v ->
        step (Assign x y, (stk,hp)) (Skip, (table_set x v stk, hp))
| stepLoad: 
        forall x y v v' stk hp,
         table_get stk y = Some v ->
         table_get hp v = Some v' ->
         step (Load x y, (stk,hp)) (Skip, (table_set x v' stk, hp))
| stepStore: 
         forall x y v p stk hp,
          table_get stk y = Some v ->
          table_get stk x = Some p ->
          step (Store x y, (stk,hp)) (Skip, (stk, table_set p v hp))
| stepSeq0:
         forall c2 s,
         step (Seq Skip c2, s) (c2, s)
| stepSeq1:
         forall c1 c1' c2 s s',
         step (c1,s) (c1',s') ->
         step (Seq c1 c2, s) (Seq c1' c2, s').
```

```coffee
# inductive type
pattern command
  either
    pattern skip
    pattern assign
    pattern load
    pattern store
    pattern sequence

pattern skip

pattern assign
  input key
  input value

pattern load
  input key
  input value

pattern store
  input key
  input value

pattern step
  is relation command, state
  pattern step assign
    input x
    input y
    input value
    input table
    input heap
    let key, get key(y), from table
    when equal key, some value # when key exists
      step
        assign x, y, table, heap
        skip
        set table, x, y, table, heap
  pattern step load
    input x
    input y
    input v1
    input v2
    input table
    input heap
    let key(state), get y, from table
    when equal key(state), some v1
      let value(heap), get v, from heap
      when equal value(heap), some v2
        step
          load x, y, table, heap
          skip
          set table, x, v2, table, heap
```

```coffee
alias
  when equal key, some value
  when exists key
```

Seems like need an idea of "action patterns".
