
> All rules use the basic logic operators.

So rules are used _after_ the logical connectives are assumed.

> Each of the logical rules introduces a new logical formula either on the left or on the right of the turnstile \vdash.

```coffee
rule introduction
  Introduce a logical connective.

  \frac{A \wedge B\hbox{ prop} \qquad A\hbox{ true} \qquad B\hbox{ true}}{(A \wedge B)\hbox{ true}}\ \wedge_I

rule elimination
  Remove a logical connective.
```

Types are propositions.

> The most important judgments in logic are of the form "A is true". The letter A stands for any expression representing a proposition; the truth judgments thus require a more primitive judgment: "A is a proposition". Many other judgments have been studied; for example, "A is false" (see classical logic), "A is true at time t" (see temporal logic), "A is necessarily true" or "A is possibly true" (see modal logic), "the program M has type τ" (see programming languages and type theory), "A is achievable from the available resources" (see linear logic), and many others.

\frac{J_1 \qquad J_2 \qquad \cdots \qquad J_n}{J}\ \hbox{name}

```coffee
notation rule
  propositions
  line
  conclusions
  name, to right of line
  https://en.wikipedia.org/wiki/Natural_deduction#Judgments_and_propositions
```

Names like `^I` means "introducing and", sometimes called `^F`, "conjunction formation". Similarly, `vI` is "introducing" or "forming" "disjunction". Then eliminatin is `^E` or `vE` for the different connectives.

Hypothetical derivations are used with `...`. "B true is derivable from A ∧ (B ∧ C) true"

> The collection of hypotheses will be written as Γ when their exact composition is not relevant.

> The typing relation \Gamma\vdash e\mathbin{:}\sigma indicates that e is a term of type \sigma in context \Gamma

> That obvious rules says that you can extract information from the context.

> Constraint logic programming is a form of constraint programming, in which logic programming is extended to include concepts from constraint satisfaction.

---

Law of excluded middle. You can have a thing that is both good and bad. And if you define the opposite of good to be bad, then in classical logic this would be a contradiction. How can something be both good and bad? In logic, `G ^ !G`. This is possible in natural language because by the words, we imply different interpretations. We can say someone is both a farmer and not a farmer, if they technically have the job title as a farmer, yet don't really like being a farmer, so it's not in their heart. So if you do a logical contradiction, it should know this means the meaning of the propositions must be different.

https://en.wikipedia.org/wiki/Law_of_thought#The_three_traditional_laws

https://en.wikipedia.org/wiki/Paraconsistent_logic

> Paraconsistent logic rejects the law of non-contradiction.

https://en.wikipedia.org/wiki/Principle_of_explosion

Once a contradiction has been asserted, any proposition (or its negation) can be inferred from it.

https://en.wikipedia.org/wiki/Reason_maintenance

>  dialetheism (most notably advocated by Graham Priest), which asserts that **true contradictions exist in reality**, for example groups of people holding opposing views on various moral issues.

https://en.wikipedia.org/wiki/Monotonicity_of_entailment
https://en.wikipedia.org/wiki/Non-monotonic_logic
https://en.wikipedia.org/wiki/Defeasible_reasoning

> non-monotonic logics are devised to capture and represent defeasible inferences (c.f. defeasible reasoning), i.e., a kind of inference in which reasoners draw tentative conclusions, enabling reasoners to retract their conclusion(s) based on further evidence.

>  Intuitively, monotonicity indicates that learning a new piece of knowledge cannot reduce the set of what is known.

https://en.wikipedia.org/wiki/Problem_of_future_contingents

---

```coq
Definition excluded_middle := forall A:Prop, A \/ ~ A.
```

```coffee
law excluded middle
  input a, type prop
  assert
    either a, not a

rule excluded middle
  given a, type prop
  assert
    either a, not a
```

```
<X := 5,s> -> s[5/X]
```

```coffee
when
  assign x, 5, in state
then
  replace x, 5, in state
```

but since it's describing the structure of the state before and after a command:

```coffee
when
  command assign x, 5
  state
    with x, 5 # x replaced by 5

when
  command
    assign x, 5
  state
    replace x, with 5
```

```
<skip,s> -> s
```

Skip does nothing to the state

```coffee
when
  command skip
  state unchanged
```

while loop

```
<b,s> -> false
---
<while b do c,s> -> s
```

```coffee
when evaluate b(state), false
  produce while(b, do(c(state))), state

rule
  input
    evaluate b(state), false
  output
    produce while(b, do(c(state))), state

pattern evaluate b(state), false
  pattern produce while(b, do(c(state))), state
```

When `b` in state s _evaluates_ to false, the the while loop _produces_ the same state.

```coffee
action
  # initial state that holds
  input a, type x # forall a in x
  input b, type x # forall b in x
  input c, type y # forall c in y
  begin
    # future state that holds? operational semantic command
    # inductive rules can be generated from this definition somehow
```

---

```coq
Inductive string : Set :=
  | EmptyString : string
  | String : ascii -> string -> string.
```

```coffee
type string
  type set character

pattern string
  range none, many
    pattern character
```

```coq
Definition IsSucc (n:nat) : Prop :=
  match n with
  | O => False
  | S p => True
  end.

Inductive le (n:nat) : nat -> Prop :=
  | le_n : n <= n
  | le_S : forall m:nat, n <= m -> n <= S m

Theorem O_S : forall n:nat, 0 <> S n.
Proof.
  discriminate.
Qed.
Hint Resolve O_S: core.

Lemma plus_n_O : forall n:nat, n = n + 0.
Proof.
  induction n; simpl; auto.
Qed.
Hint Resolve plus_n_O: core.
```

```coffee
is successor
  input n, type natural number
  match n
    when zero, false
    when successor(p), true

# haven't figured this one out yet.
is le
  input n, type natural number
  input m, type natural number
  output proposition
  when given n, m
    n <= successor m
  when given n
    n <= n  

fact successor zero
  given n, type natural number
  fact not equal zero, successor n

fact adding n, zero
  given n, type natural number
  fact equal n, add n, zero
```

```coffee
fact successor of zero
  given n, type natural number
  not equal zero, successor n

fact successor of zero
  given n, type natural number
  fact not equal zero, successor n

fact successor zero
  given n, type natural number
  assert not equal zero, successor n
```

```coffee
# could be divided into two identical functions, one for each case.
is le
  input n, type natural number
  output proposition
  when given n
    n <= n

is le
  input n, type natural number
  input m, type natural number
  output proposition
  when given n, m
    n <= successor m
```

This is defined to do an actual test. Return a boolean value. Whereas in coq it is a proposition. You have the proposition le(n, n), le(n, m)... But how then do you resolve that to true/false?

```coffee
is le
  input n, type natural number
  when given n
    true # can't do this because in coq it's a proposition.
```

So it's almost more like -- construct a proposition:

```coffee
pattern le
  input n, type natural number

pattern le
  input n, type natural number
  input m, type natural number

# or types

type le
  input n, type natural number

type le
  input n, type natural number
  input m, type natural number
```

That really just describes a named relation between two natural numbers. To tell if this is actually "true", we have to see if it's decidable or something?

So the `type` is essentially a proposition, a mental structure you say exists. But it's not the actual boolean value, that comes later. After a proof of it's decidability.

```
Definition IsSucc (n:nat) : Prop :=
  match n with
  | O => False
  | S p => True
  end.
```

`is le` is not actually true. It's just creating a proposition that "there are two numbers n and m where n is less than or equal to m".

> croyd left the chat room. (Remote host closed the connection)
[8:25pm] Cypi: viatropos : what you can do is write a function like this one [Definition le_lt_dec n m : {n <= m} + {m < n}.] which will either return a proof that n <= m or a proof that m < n
[8:26pm] Cypi: you can do this because you can prove that comparison on natural numbers is actually decidable
[8:26pm] Cypi: (this is not the case for everything in Prop)
[8:26pm] Cypi: Then you could indeed use the result of this function like boolean carrying a little bit more information
[8:29pm] viatropos: Cypi: so that expands to something like [Definition le_lt_dec : forall n m : nat, sumbool (le n m) (lt m n)]
[8:30pm] viatropos: where should i look to learn more?
[8:31pm] viatropos: why can't u just do [Definition is_le n m : match n with n <= m => True ... ] something like that?
[8:31pm] Cypi: About le_lt_dec specifically? You could just take a look at its definition in the standard library: [Require Import Arith. Print le_lt_dec.]
[8:31pm] Cypi: or you could try to write it yourself
[8:32pm] Cypi: You cannot match directly on something in Prop, because you can only match on something which is in an inductive type
[8:32pm] Cypi: (or coinductive type, but let's put that aside)
[8:32pm] viatropos: ok cool, well will have to try that then, understanding the implementation of le_lt_dec
> You can try to write it yourself using tactics if you want. Start with [Definition le_lt_dec n m : {n <= m} + {m < n}. Proof. revert m; induction n.]
[8:35pm] Cypi: (you might need some auxiliary lemmas about basic stuff about <= and <, or you can use directly [auto with arith] instead, as you wish)
> viatropos: thank you!
[8:37pm] viatropos: Do you mind explaining in a casual way what is required to have "n <= m" be true/false boolean?
[8:37pm] viatropos: so first, we have a proposition [le]
[8:38pm] viatropos: this is just a proposition saying "there are two numbers n and m where n is less than or equal to m", correct?
[8:38pm] viatropos: it doesn't say anything about true or false booleans
[8:38pm] Cypi: So for every natural numbers n m, we get a proposition [le n m] (or [n <= m])
[8:38pm] viatropos: then the next thing is to do something about decidability
[8:38pm] viatropos: k
[8:38pm] Cypi: indeed. You need to prove that the proposition [n <= m] is decidable
[8:39pm] viatropos: why do you need to do that to get true/false booleans?
[8:39pm] Cypi: and proving this is the same thing as actually giving a function which actually tells if [n <= m] or [~ (n <= m)]
[8:39pm] viatropos: how did you know that you need to prove if it's decidable?
[8:40pm] Cypi: This is basically the same thing: if for some proposition P, you can evaluate P to true or false (while respecting the truth/falsehood of P), then P is decidable
[8:40pm] viatropos: ah
[8:40pm] viatropos: interesting
[8:41pm] Cypi: So you could also write some function [Definition foo n m : bool.], and then prove that [foo n m = true <-> n <= m]
[8:43pm] viatropos: are these ideas sort of encapsulated in this symbol? https://github.com/coq/coq/blob/3fcadca93b8d9dd70d9d93412cbacf8d4e851ed7/theories/Init/Specif.v#L195
[8:43pm] viatropos: sumbool* (not symbol)
Cypi: sumbool is just an enriched booleans: it carries a proof in each branch, not just true/false. So it's not directly related, but they are useful to express decidability of some proposition P.
[8:44pm] viatropos: ok
[8:44pm] Cypi: (the decidability of P can just be expressed by [{P} + {~ P}]
[8:44pm] Cypi: )

https://en.wikipedia.org/wiki/Decidability_(logic)

> johnw: viatropos: for example, the type "a = b" has a single inhabitant.  Since a function accepting such an argument is only callable if you have that inhabitant, there's nothing to "decide".  But {P} + {~P} gives you _either_ the witness to the truth of P, or to its falsehood, and this either/or nature of sumbool lets you branch on the difference, i.e., make a decision based on its truth.

https://en.wikipedia.org/wiki/Decision_problem
https://en.wikipedia.org/wiki/Constructive_proof

> johnw: any function less_than_or_equal (x y : nat) : bool has that property
[9:41pm] johnw: but (x : n <= m) does not

> viatropos: ok, it's starting to sink in some more
[9:37pm] viatropos: starting to make sense
[9:40pm] viatropos: i guess the main thing that's tripping me up is i keep thinking about this thing (function or whatever, that tests if n <= m) is actually doing some computation
[9:40pm] viatropos: like in javascript, it performs some machine code computation to get the value
[9:40pm] johnw: n <= m is a type
[9:40pm] viatropos: but here there's no computation, you are proving
[9:40pm] viatropos: yeah
[9:41pm] johnw: now, ssreflect does have a version of <= that is a procedure that returns a boolean
[9:41pm] johnw: and as a result, it's decidable
[9:41pm] viatropos: interesting
[9:41pm] johnw: any function less_than_or_equal (x y : nat) : bool has that property
[9:41pm] johnw: but (x : n <= m) does not
[9:42pm] rodgort left the chat room. (Quit: Leaving)
[9:42pm] johnw: there's only one inhabitant there, so there is no "yes/no"; if it weren't true, "x" wouldn't exist at all
[9:42pm] viatropos: why does coq define le like the later, rather than the former?
[9:42pm] johnw: well, there's a whole lot of power in being able to say that x only *exists* if n <= m
[9:42pm] johnw: meaning, the function can't even be called if it's not already true
[9:43pm] johnw: that's something being decided at compile-time, not runtime
[9:43pm] johnw: a boolean returning function doesn't convey type-level information, unless you reflect it back to the type level by saying less_than_or_equal x y = true
[9:44pm] johnw: and this sort of "small scale" reflection is what ssreflect was created for
[9:46pm] viatropos: interesting, what do you mean by reflection here?
[9:46pm] viatropos: like, from [less_than_or_equal x y = true] you can get the type [x <= y]
[9:46pm] viatropos: ?
> yeah, there is a way to go between them

http://summerofgodel.blogspot.com/2013/06/peter-smiths-overview-of-godels.html
