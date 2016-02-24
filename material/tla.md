
```tla
-------------------------- MODULE PCalOneBitClock --------------------------
(***************************************************************************
--algorithm Clock {
  variable b \in {0, 1};
  {
    while (TRUE) {
      if (b = 0) {
        b := 1
      } else {
        b := 0
      } 
    }
  }
}
 ***************************************************************************)
\* BEGIN TRANSLATION
VARIABLE b

vars == << b >>

Init == (* Global variables *)
        /\ b \in {0, 1}

Next == IF b = 0
           THEN /\ b' = 1
           ELSE /\ b' = 0

Spec == Init /\ [][Next]_vars

\* END TRANSLATION

=============================================================================
\* Modification History
\* Last modified Thu Aug 27 19:38:01 PDT 2015 by viatropos
\* Created Thu Aug 27 19:29:47 PDT 2015 by viatropos
```

```coffee
init
  let b, type binary

next
  when equal b, zero
    state next
      equal b, one
  otherwise
    state next
      equal b, zero
```

```coffee
action next
  when equal b, zero, in state this
    equal b, one, in state next
  otherwise
    equal b, zero, in state next

action next
  when equal b, zero
    equal b, one, in state next
  otherwise
    equal b, zero, in state next
```

```coffee
either x
  or y
  or z

either
  choice x
  choice y
  choice z
```

> The definitions of the six formulas FillSmall, . . . , BigToSmall, which often called subactions of the next-state action, must precede the definition of Next in the module.

```tla
EXTENDS Integers

VARIABLES big, small

TypeOK == /\ big \in 0..5
          /\ small \in 0..3

Init == /\ big = 0
        /\ small = 0

Min(m,n) == IF m < n THEN m ELSE n

FillSmall == /\ small' = 3
             /\ big' = big \* big is unchanged.

FillBig == /\ big' = 5
           /\ small' = small

EmptySmall == /\ small' = 0
              /\ big' = big

EmptyBig == /\ big' = 0
            /\ small' = small
            
SmallToBig ==
  LET poured == Min(big + small, 5) - big
  IN  /\ big' = big + poured
      /\ small' = small - poured

BigToSmall ==
  LET poured == Min(big + small, 3) - small
  IN  /\ big' = big - poured
      /\ small' = small + poured

Next == \/ FillSmall
        \/ FillBig
        \/ EmptySmall
        \/ EmptyBig
        \/ SmallToBig
        \/ BigToSmall
```

```coffee
variable big
variable small

relation min

action start
  equal big, 0
  equal small, 0

action step
  either
    go fill small
    or fill big
    or empty small
    or empty big
    or pour small, into big
    or pour big, into small

action fill small
  equal small, 3, in next state
  same big

action fill big
  equal big, 5, in next state
  same small

action pour small, into big
  let poured
    difference
      min
        sum big, small
        5
      big
  equal big(next), sum big(this), poured
  equal small(next), difference small(this), poured

action pour big, into small
  let poured
    difference
      min
        sum big, small
        3
      small
  equal big(next), difference big(this), poured
  equal small(next), sum small(this), poured
```

```coffee
action pour big, into small
  equal big(next)
    difference big(this), poured
  equal small(next)
    sum small(this), poured
  where poured
    difference
      min
        sum big, small
        3
      small
```

```coffee
action pour big, into small
  equal big(new)
    difference big(old), poured
  equal small(new)
    sum small(old), poured
  where poured
    difference
      min
        sum big(old), small(old)
        3
      small(old)
```

```tla
--algorithm DieHard {
  variables big = 0, small = 0;
  {
    while (TRUE) {
      either big := 5 \* fill the big jug
      or small := 3 \* fill the small jug
      or big := 0 \* empty the big jug
      or small := 0 \* empty the small jug
      or \* pour from small to big
        with (poured = Min(big + small, 5) - big) {
          big := big + poured;
          small := small - poured;
        }
      or \* pour from big to small
        with (poured = Min(big + small, 3) - small) {
          big := big - poured;
          small := small + poured;
        }
    }
  }
}
```

```tla
------------------------------ MODULE DieHard ------------------------------
(***************************************************************************
--algorithm DieHard {
  variables big = 0, small = 0;
  {
    while (TRUE) {
      either big := 5 \* fill the big jug
      or small := 3 \* fill the small jug
      or big := 0 \* empty the big jug
      or small := 0 \* empty the small jug
      or \* pour from small to big
        with (poured = Min(big + small, 5) - big) {
          big := big + poured;
          small := small - poured
        }
      or \* pour from big to small
        with (poured = Min(big + small, 3) - small) {
          big := big - poured;
          small := small + poured
        }
    }
  }
}
 ***************************************************************************)
EXTENDS Integers
Min(m,n) == IF m < n THEN m ELSE n

\* BEGIN TRANSLATION
VARIABLES big, small

vars == << big, small >>

Init == (* Global variables *)
        /\ big = 0
        /\ small = 0

Next == \/ /\ big' = 5
           /\ small' = small
        \/ /\ small' = 3
           /\ big' = big
        \/ /\ big' = 0
           /\ small' = small
        \/ /\ small' = 0
           /\ big' = big
        \/ /\ LET poured == Min(big + small, 5) - big IN
                /\ big' = big + poured
                /\ small' = small - poured
        \/ /\ LET poured == Min(big + small, 3) - small IN
                /\ big' = big - poured
                /\ small' = small + poured

Spec == Init /\ [][Next]_vars

\* END TRANSLATION
=============================================================================
\* Modification History
\* Last modified Thu Aug 27 20:51:31 PDT 2015 by viatropos
\* Created Thu Aug 27 20:07:28 PDT 2015 by viatropos
```

> TLA system specifications formalize fair transition systems.

> - safety: something bad never happens
>   + data is received in the same order as it was sent
> - liveness: something good eventually happens
>   + every data item will eventually be received
http://www.loria.fr/~merz/talks/argentina2005/slides.pdf

> A state is an assignment of values to variables, but what variables? The answer is simple: all variables.
> We can think of a state as representing a potential state of the entire universe.
> A specifcation is an abstraction. It describes some aspects of the system and ignores others.

> Type correctness is just a name for a certain invariance property. Assigning the name TypeInvariant to a formula gives it no special status.

```tla
InChan == INSTANCE Channel WITH Data <- Message; chan <- in
```

```coffee
type channel
  property data
  property port

channel in
  with data, message
  with port, in
```

```coffee
type channel
  property data
  property port
  
channel in
  value data, message
  value port, in
```

>  a module asserts that its assumptions
imply its theorems

```coffee
action send channel
  variable message
  equal rdy(channel), ack(channel)
  equal channel(next), channel(this)
    except
      with value, message
      with rdy, difference 1, rdy(this)

action receive channel
  not equal rdy(channel), ack(channel)
  equal channel(next), channel(this)
    except
      with ack(next), difference 1, ack(this)

action start channel
  invariant type
  equal ack, rdy, in channel

# init
action start fifo
  start channel(in)
  start channel(out)
  equal queue, empty

# init expanded:
action start fifo
  term channel, channel(in)
  invariant type, in channel
  equal ack, rdy, in channel
  term channel, channel(out)
  invariant type, in channel
  equal ack, rdy, in channel
  equal queue, empty

action send buffer
  not equal queue, empty
  send channel(out), head(queue)
  equal queue(next), tail(queue)
  unchanged in

# which would be expanded to essentially this:
action send buffer
  not equal queue, empty
  # send channel(out), head(queue)
  equal channel, channel(out)
  equal rdy(channel), ack(channel)
  equal channel(next), channel(this)
    except
      with value, message
      with rdy, difference 1, rdy(this)
  equal queue(next), tail(queue)
  unchanged in

action receive receiver
  receive channel(out)
  unchanged channel(in)
  unchanged queue

# expanded, composition of actions into single global state
action receive receiver
  term channel, channel(out)
  not equal rdy(channel), ack(channel)
  equal channel(next), channel(this)
    except
      with ack(next), difference 1, ack(this)
  unchanged channel(in)
  unchanged queue

action receive receiver
  meaning channel, channel(out)
  not equal rdy(channel), ack(channel)
  equal channel(next), channel(this)
    except
      with ack(next), difference 1, ack(this)
  unchanged channel(in)
  unchanged queue

action step
  either
    go receive buffer
    or send buffer
    or receive receiver

action model # spec
  start
  step forever
```

> We can regard IR as the specifcation of a component that transforms the lowerlevel behavior of l into the higher-level behavior of h. Formula IR is called an interface refnement. _(or "intermediate representation")_

---

Sequences:

```tla
------------------------------ MODULE Sequences -----------------------------
\* Imports the definitions from Naturals, but don't export them.
LOCAL INSTANCE Naturals

\* The set of all sequences of elements in S.
Seq(S) == UNION {[1..n -> S] : n \in Nat}

\* The length of sequence s.
Len(s) == CHOOSE n \in Nat : DOMAIN s = 1..n

\* The sequence obtained by concatenating sequences s and t.
s \o t == [i \in 1..(Len(s) + Len(t)) |-> IF i \leq Len(s) THEN s[i]
                                                           ELSE t[i-Len(s)]]

\* The sequence obtained by appending element e to the end of sequence s.
Append(s, e) == s \o <<e>>

\* The usual head (first) and tail (rest) operators. (Definition of Tail
\* changed on 4 Jun 2013 because original defined Tail(<< >>) = << >> .
Head(s) == s[1]
Tail(s) == CASE s # << >> -> [i \in 1..(Len(s)-1) |-> s[i+1]]

\* The sequence <<s[m], s[m+1], ... , s[n]>>.
SubSeq(s, m, n) == [i \in 1..(1+n-m) |-> s[i+m-1]]

\* The subsequence of s consisting of all elements s[i] such that
\* Test(s[i]) is true.
SelectSeq(s, Test(_)) == 
  LET F[i \in 0..Len(s)] == 
        \* F[i] equals SelectSeq(SubSeq(s, 1, i), Test]
        IF i = 0 THEN << >>
                 ELSE IF Test(s[i]) THEN Append(F[i-1], s[i])
                                    ELSE F[i-1]
  IN F[Len(s)]
=============================================================================
```

```coffee
LOCAL INSTANCE Naturals

sequence(S)
  variable n, pattern number
  union [1..n -> S] : n

length(sequence)
  variable n, pattern natural number
  choose n : domain s = 1..n

# The sequence obtained by concatenating sequences s and t.
action concat
  variable s
  variable t
  every i, from one, to sum length(s), length(t)
    when leq i, length(s)
      s[i]
    otherwise
      t[difference(i - length(s))]

# The sequence obtained by appending element e to the end of sequence s.
action append
  variable s, pattern sequence
  variable e
  concat s, [e]

# The usual head (first) and tail (rest) operators. (Definition of Tail
# changed on 4 Jun 2013 because original defined Tail(<< >>) = << >> .
property head # first
  variable s, pattern sequence
  s[1]

property tail # rest
  variable s
  CASE s # << >> -> [i \in 1..(Len(s)-1) |-> s[i+1]]

# The sequence <<s[m], s[m+1], ... , s[n]>>.
subsequence(s, m, n)
  [i \in 1..(1+n-m) |-> s[i+m-1]]

# The subsequence of s consisting of all elements s[i] such that
# Test(s[i]) is true.
selectsequence(s, Test(_)) == 
  LET F[i \in 0..Len(s)] == 
        \* F[i] equals SelectSeq(SubSeq(s, 1, i), Test]
        IF i = 0 THEN << >>
                 ELSE IF Test(s[i]) THEN Append(F[i-1], s[i])
                                    ELSE F[i-1]
  IN F[Len(s)]
=============================================================================
```

Array notation like `s[1]` hides the fact that it itself is an action, the action of retrieving from memory. This is why all actions should be framed as verbs.
