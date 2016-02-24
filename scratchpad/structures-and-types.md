
`usage` changes a statement tree into a structure, which is a set of constraints. So then in the end you transform all the statements into structures (sets of constraints). The algorithms/actions/changes then are just relations between structures in a sequence.

Given all that, you can find the type structures. Types are just abstract structures, so types are also just sets of constraints.

Once you've found all the types, you can resolve the type system, formally proving all the stuff in the type system.

Then once you have that, you can match the rest of the structures' constraints against all the types' constraints, and figure out the structure types! This means that a single structure can be multiple types, and part of two structures can be a single type together! This is much more general than existing type theories. And it better fits reality. The type system is basically our conceptual model, and the rest of the structures are natural/external structures. We then pattern match our conceptual structures with external structures. In the same way, the type system is matched against the rest of the structures.

So then `type` with `property` is just a _simplification_ of `structure` with `constraints`. Really, what you want is to transform structure/constraints into different conceptual forms (objects, relations, patterns, types, graphics, etc.). "Types" are just a simple way to organize conceptual structures for humans to read, to make it easy for us to understand (to get it into our brain). You could also call them "schemas" like Kant.

```
1. statement -> usage/constructor -> structure
2. somehow figure out which ones are types. maybe it's a structure with a constraint "is abstract" or something
3. then patterm match those "type" structures with the remaining structures to figure out their representation.
4. once you know their representation, you can verify the whole system with operational semantics.
```

This means that "structures" are the base, and "types" are just a special case of structures. It also means the "abstract" is just a subset of all structures, which means logic is a subset of the more general "structure", which is a representation of information. A "formal system" is just an abstract structure.

```coffee
structure
  constraints
^
|
v
type
  constraints
```

```coffee
structure
```

The main thing to figure out next is, what is the structure of structures if they have no types? It's like a structure has a "derivation source" or a corresponding "statement", which gives you all the info you need to know about a generic sorta geometric structure. The generic structures point to their definition as their "id" or low-level "type". But that just tells how it got there, sort of a unique "construction" pathway. That is just so you don't have to have "names" or "types" on the structures. Then from the generic constraints in the structure, you can map from types and figure out their actual meaning.

Since structures are "recognizable", based on how the brain recognizes patterns, they can be visualized without language. So "naming" them is just extra so we can write them down in a text file. But ideally the structures should be intuitive, you should be able to see or feel the structures just as much as read them. So the names are just there to put them into the formal system, to tie them to types explicitly.

---

Intro:

Telling history of logic, how classical true/false was the culmination of philosophy, then they realized it was a mental construction. Then they added computability. So slowly it's a revealing of layers of assumptions, or a grounding in reality. If you extend this further, this is where the idea of structure comes into play. You start with the experimentally observed principles of the universe, the science of nature, and construct a logic out of that.

Also show how people tried since the 1930s to talk about functions, and how the lambda calculus and type theory were based off that. But it's not grounded in reality. Reality requires side effects. Type theory and functions are pure abstractions that don't take into account reality.

Also, it turns out that proof theory is only dealing with _syntax_. It's all just based on syntax! And it wasn't until the 80s when a guy found a generalized "geometry" of proofs. Finding a model that could be visualized but doesn't require language or beauraucracy.

So it should be independent of syntax, and a logic based in reality, based on experimental observations.

Elaborating on mental constructions, logic has to take into account perception. If we assume there is just information, then as humans we recognize information. This recognizable information is structure, it's information that's re-cognizable. It's able to be stored in a mind, represented in some different format.

Therefore, the definition of structure is not circular like it typically is in dictionaries or other mathematical textbooks. Instead, it is based on the relationship between our minds and the world. Structure is recognizable information.

Humans are specific cases of intelligent agents. So really we can say that structure arises from observations from intelligent agents.

But we don't have a definition of intelligence yet, so we need to resolve that. Let's assume, however, that this definition of structure is good. If everything in the universe is a structure, then intelligence is a structure. So the question is, what's the difference between non-intelligence, and intelligence? It turns out that intelligence is problem solving, and problems are an intention to transform the current state into some desired state. This again ties structure to intelligence, and also to the initial state of the universe.

So finally, we can have a logic that takes into account intelligence, and experimental observations in the universe. This logic is based on structure, which arises from the relationship between intelligence and information. Then, structure is fundamental.

Then the questions are, what are the different structures?

There are relations of structures. And structures of structures. From this, everything can be modelled. It can be modelled, because structure itself is the relationship between intelligence and information.

---

The hardest pieces to explain, or what's most confusing to people so far, is:

- How is intuitionistic logic different from classical logic? The idea of the excluded middle doesn't really make sense.
- Information doesn't have any parts, so how does that work?
- Ancient logic was based on if/then, but wasn't a foundation of mathematics.

If types are patterns, then an automaton/machine is a pattern recognizer. To verify types, to derive types, would require recognizing a connection between them, and moving there step by step. By applying rules of change to the type. But what exactly are these rules of change? They are relations between two types, itself a type, the `rule` type. The "rewrite" rule type is a formal type, saying some structure can be rewritten to another structure, because some equivalences.

So it's like:

```coffee
register 8
# means
a = relation r, type bit
b = relation e, type bit
c = relation g, type bit
relation i, type bit
relation s, type bit
...
x = relation r, e, type before
y = relation e, g, type before
z = relation g, i, type before
...
```

It can see those two purely based on the information. Then from it's knowledge, it finds a rewrite rule, or matches a pattern, saying it can rewrite this as a new pattern:

```coffee
relation a, b, c, x, y, z, type sequence byte
```

In a rule form:

```coffee
when a, b, c, x, y, z
then type sequence bit

# expanded:
when
  relation r, type bit
  relation e, type bit
  relation g, type bit
  relation i, type bit
  relation s, type bit
  ...
  relation r, e, type before
  relation e, g, type before
  relation g, i, type before
then
  type sequence bit
```

This rule is created from the definition of a type:

```coffee
type sequence
type bit
type byte, type sequence bit, where length sequence, 8
```

So then that should form a pattern matching rule like the above:

```coffee
when a, b, c, x, y, z
then type sequence bit
```

So a type is just a pattern, like a language grammar. And like any language grammar/pattern, it can be automatically transformed into an automaton / pattern recognizer.

So then, is a proof that some information is of a certain type just the fact that the information can be recognized by the pattern recognizer? It's the same as proof that a word is in the grammar is if it can be matched by a pattern recognizer?

- http://cs.stackexchange.com/questions/11315/how-to-show-that-l-lg
- http://cs.stackexchange.com/questions/23609/proving-that-a-word-is-not-generated-by-a-context-free-grammar

So to prove an element is an instance of a type, you do pattern matching. It's basically generating/deriving information from a type? But how to prove types derive from each other?

Types are formal patterns of observation. So they can be turned into observation machines (pattern recognizers), or formal definitions (patterns or structures). That is, a pattern can be defined in both a structural/denotational and operational/transformational way. When it is transformational, use `observe`. When structural, use `fact`. So it's like, use `fact` when you are certain, until then use `observe`.

---

Transition rules can maybe be thought of as "recognizing". You "recognize" the input, and "realize" the output. So it's a recognition/realization loop. Taking this further, instead of there being rules like in cellular automaton, there is recognition. So the universe is "realizing" itself.

The problem with rules is, where did they come from. _How_ do the things change? What is causing them to change? You can call it the "tick of the clock", or that the universe inherently has frames. But even so, given a previous frame, how would it know to change the state and react some atoms together into a new element? Instead, if you think of it as "realization", it's pattern recognition. The change is caused by the realization that one thing is another thing. So there is an agent realizing that a is b, and this realization is the cause of the change. It's like if an intelligent agent were using vision to perceive, it's brain would have pattern recognizers for the visual information, and the result of pattern matching would be the realization ("aha moment") that the information is some type of structure, it's a "thing".

So then, it's like rules are pattern matching. There must be another thing that is doing the pattern matching. And maybe these are the tropons. The tropon is the change agent. It recognizes patterns in the current state, and changes them into the next state. It's not that there's logical rules so things just "happen", there is a recognizer for the current state sorta thing. This recognizer is realizing the universe. It takes one state, and turns it into another.

Just like the brain recognizes information and realizes structure (which is pattern matching), the recognizer/constructor/tropon recognizes the current state of some structure, and changes it into a new structure. The tropons are the rules of transformation (when framed in terms of logic).

In this sense, the universe is realizing itself.

> An associative memory is a system that maps an input pattern xµ with an output pattern yµ.

So, the tropon is sort of an auto-associative memory.

---

The structure as constraints/relations is the "normal form". Everything can be boiled down to this normal form, and thus all optimizations can work off of this most generic normal form.

> every value is in normal form (from type theory book)

---

The basic rule of type theory (the obvious one) can be read as:

```coffee
rule
  when observe x:T
    construct x, of type T

rule
  when observe x:T
    remember exists structure x
    remember type structure(x), T
```

When you observe (in text, in the world) `x:T`, then construct in your mind, or add to your memory (remember) that there is a structure x of type T.

So this is how the rules are actually changing the state of the world. They are not just "abstract rules", they are actually computational rules that are changing our minds, or a computers memory. The rule is an action in that sense.

```coffee
action
  input observation x:T
  output
    # add two statements to memory
    remember exists structure x
    remember type structure(x), T 
```

Think of actions like feeding wood to a fire. You input the wood, and the output is a bigger fire. This is the essense of an action, input drives change. Actions have an effect. The action of adding wood to a fire results in a bigger fire.

(Action is a good metaphor because all kids love playing with fire. Other good metaphors are dipping your feet in water and watching the ripples).

> Variables in facts are implicitly universally quantified, so likes(X, apples) means "for all X, X likes apples" - The Art of Prolog

---

In m's formal type system, a `structure` is a `type` that is general enough to be able to model any real world structure. In the general model of types, types themselves are cognitive information structures, so from the outside there is a reciprocal relationship. So when you recognize the first type, you use this as information to recognize again, which gives you the next type, etc. This pattern recognition chain is a derivation tree in traditional terminology. But in the formal type system itself, the starting point is a type, and a structure is a type. A type is normalized into a structure (a set of relations), this is called structural normal form, or the normal form of structures.

---

https://github.com/AbsInt/CompCert/blob/master/cfrontend/Csyntax.v#L35

That -^ is why "patterns" are just inductive types. Inductive types are pattern generators.

---

In pattern theory, generators/configurations correspond to types/patterns, and images correspond to the raw information, the structures that have a type.
