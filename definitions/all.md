
```coffee
definition information
  # I
  ? Information is the propagation of cause and effect in a universe. ?

definition knowledge
  # <K, P> (relation between knowledge and problems)
  # K = S(I) (structured information)
  Knowledge is structured information used to solve problems.

action know

definition model
  # M: I -> K
  # M: I -> S(I)
  A model is a representation of information as knowledge.

action model

definition image
  ? Stored information structure. (from pattern theory) ?

definition representation
  # P: S(a) -> S(b)
  A representation is a similarity relation between two information structures.

action represent

definition interpretation
  ? An interpretation is a relation between two information structures. (something about an agent. semiotics) ?

action interpret

definition structure
  # S: C(I)
  A structure is recognizable information.

action structure
action destructure

definition recognition
  # C: I -> M
  Recognition is a function matching information with an abstraction.
  ? Recognition is a function matching information with a stored structure. ?
  ? Recognition is a function matching information with a stored representation. ?

action recognize

definition observation
  ? An observation is information captured by an agent. ?
  ? An observation is information stored in raw/original form by an information processing agent. ?
  ? vs. an interpretation, which creates a representation of the raw information. ?

action observe # direct action, but there are other actions you can do on the object

definition abstraction
  ? A symbolic information structure. ?
  ? A symbolic structure. ?

action abstract
action concretize

definition store
  # T: Σ(S(i))
  ? A store is a structure that contains information structures. ?
  A store is a structure that contains abstractions.

action store
action retrieve
action fetch

definition context
  # X: K
  A context is a subset of stored knowledge used to interpret information.

definition problem
  # P: <S(a), S(b)>
  A difference between two structures. (and the fact that they are not equal / the same)

definition solution
  # O: S(a) -> S(b), for a problem P
  ? A set of actions transforming one state of a problem into the other state. ?
  ? A function transforming one structure into another. ?
  ? A function resolving a problem. ?
  ? A function acting on a problem, converting one structure to the other. ?

action solve

definition state
  # T(I): S(I(i)) | I(i) ∈ F
  ? The structure of information in a frame within a system. ?
  ? The structure of information in a frame. ?
  ? A state is a set of facts about a universe. ?

definition frame
  # F: <I(i), I(i + 1)>
  The structure of information before it changes.
  ? The structure of information relative to after it changes. ?
  ? The current structure of information. ?
  ? The current state of the universe. ?
  # how to make this not circular?
  ? The structure of the universe without any change. ?
  ? The structure of the universe without the possibility of change. ?
  ? Relation between two states of the universe, and the structure of the universe in the observed/current state. ?
  ? The currently observable universe. ?
  ? The relation between an observer and a universe. ?
  ? This must have something to do with an observer? ?

definition change
  A change is a structural difference between two frames.

action change

definition action
  ? A set of changes caused by one structure to another structure. ?

definition event
  ? An action within a set of frames. ?
  ? An action at a specific time ?

definition effect
  ? The difference in structure after an action is applied. ?

definition process
definition procedure

definition algorithm
  A set of actions transforming an input to an output.

definition system

definition universe
  ? A system. ?

definition world
  ? A system. ?

definition environment
  ? The immediately observable or experiencible system. ?

definition rule
  A rule is a set of statements and an action to be executed when those statements are facts.

definition function
  A relation between two structures, with direction.

definition relation
  ? In set theory and logic, a relation is a property that assigns truth values to k-tuples of individuals ?
  ? A relation is a structure between structures. ?
  ? A relation is a connection between two or more structures. ?
  ? In math, a relation is a set of ordered pairs. ?
  ? A relation is a structure of several structures. ?
  ? A relation is a structure of structures. ?

definition interaction

action interact

definition communication
  ? The transferring of information from one point to another ?
  ? The transferring of information from source to receiver. ?

action communicate

definition message

definition medium
  ? The environment in which problems are solved ?
  ? A communication outlet or tool used to store and deliver information ? (which when structured into knowledge, can be used to solve problems)

definition statement
  ? A logical sequence of symbols. ?
  ? Is a statement a symbol ?
  ? A logical symbol. ?
  ? A relation between a set of symbols. ?
  ? A symbolic representation of an information structure. ?
  ? A tree of symbols. ?

action state

definition assertion

action assert

definition assumption
  ? Initial knowledge. ?

action assume

definition fact
  ? A statement that is provable down to assumptions and basic definitions. ?
  ? A statement that can be transformed into assumptions. ?
  ? A statement that can be derived from foundational assumptions. ?

definition true
  A statement that is a fact.

definition false
  A statement that is not a fact.

definition proof
  A transformation of a statement to a set of assumptions.

definition example
definition instance

action instantiate

definition constraint
  ? A constraint is a relation on a set of variables. ?
  ? A constraint is a relation on a set of structures. ?

definition record

definition type

definition property

definition path

definition agent
  A structure that performs actions.

definition understanding
  ? To understand is to transform an observable information structure into an abstract information structure. ?
  ? To understand is to transform an observation into an abstraction. ?

action understand

definition transformation

action transform

definition relevancy
  The usefuleness of information in solving a problem.

definition random
  ? Randomness is the lack of pattern or predictability in events ?
```

Communication changes your world.

```
alias goal, outcome
# A representation is an assigment of symbols to information. (structured information?)

alias action, instruction
```

Appendix listing all the ways you could state the definitions:

```coffee
definition knowledge
  example Context is knowledge used to solve the problem of understanding.
  ? something about being stored ?

definition symbol
  ? A symbol is a representation of recognizable information. ?
  ? A symbol is a representation of a structure. ?
  ? A symbol is a representation of information. ?
  ? fact A symbol is a representation of information. ?

definition representation
  ? A representation is a relationship between two information structures. ?
  ? A homomorphic relationship between two sources of information. ?
  ? A representation is a relationship between a symbol and an information structure. ?
  ? A representation is a relationship between a model and an information structure. ?
  ? A representation is a relationship between symbols and information. ?
  ? A representation is a relationship between two information structures, typically one external to the mind and one internal to the mind. ?
  ? A representation is a relationship between a cognitive structure (schema) and an information structure. ?
  ? A representation is a mapping of an information structure to a cognitive structure. ?
  ? A representation is a mapping of an information structure to a cognitive structure. ?
  ? A representation a homomorphic relationship between two structures. ?
  # P: S(a) -> S(b)
  ? A representation is a similarity relation between two structures. ?
  ? A representation is a similarity interpretation. ?

definition model
  # M
  fact A model is an interpretation of information in a universe.
  fact A model is an assignment of symbols to information in a universe.
  fact A model is used to solve problems.
  ? a conceptual model is a set of records, which are each a tree of statements. a network of statements ?
  ? A model is a type of sign that aims to make a feature of the world usable in a problem space. ?
  ? A model is a sign that makes a feature of the world usable in a problem space. ?
  ? A model is a knowledge sign. ?
  ? A model is a sign that represents information as knowledge. ?
  ? A model is a representation of information as knowledge. ?
  ? A model structures information into knowledge. ?
  ? A model transforms information into knowledge. ?
  # Scientific modelling is a scientific activity, the aim of which is to make a particular part or feature of the world easier to understand, define, quantify, visualize, or simulate by referencing it to existing and usually commonly accepted knowledge.

definition context
  A context is stored knowledge used to interpret information.
  fact A context sets expectations for what information is present. (where?)

definition structure
  # S: C(I)
  A structure is recognizable information.
  A structure is information for which there is a model.
  ? A structure is a set of constraints on information ?

definition interpretation
  An interpretation is an assignment of symbols to information.
  ? fact An interpretation is an assignment of symbols to information/observations. ?
  ? An interpretation is an assigment of a model to information. ?

definition frame
  The structure of information before it changes.
  ? The current structure of information. ?
  ? The current state of the universe. ?
  # how to make this not circular?
  ? The structure of the universe without any change. ?
  ? The structure of the universe without the possibility of change. ?
  ? Relation between two states of the universe, and the structure of the universe in the observed/current state. ?
  ? The currently observable universe. ?
  ? The relation between an observer and a universe. ?

definition problem
  # P: <S(a), S(b)>
  ? A difference between two states. (of the world?) ?
  ? A difference relation between two structures. ?
  A difference between two information structures.
  example The problem is that the current state is not the desired state.

definition efficient
definition spontaneous
definition prediction
definition quantity
definition quality
definition intuition
```

## specific examples

```
definition grammar
  A set of rules that define the structure of text.
  A set of contexts used to understand text.

definition text
definition phrase
definition sentence
definition paragraph
definition article
definition report
definition summary
```

```
definition document
definition content
definition media
```

```
definition audience
definition story
definition chapter
```

```
definition task
```

```
definition motion
  A change of position of an object with respect to time.
```

```
definition title
definition keyword
definition description
  ? A spoken or written representation. ?
```

```
definition natural

definition formal
```

```
definition evidence

definition important
definition interesting
definition enjoyable
definition engaging
definition effective
definition expectation

definition topic

definition goal

definition learn

definition remember
  ? To re-assemble information into knowledge. ?

definition element

definition general
definition specific
definition particular

definition creativity
definition evolution
definition refinement

definition belief

definition memory

definition concept

definition complex
definition simple
definition confusing
definition complete
definition detailed

definition point # A mathematical object, not necessarily a point in space.
definition space

definition intelligence

definition decision

definition explanation
definition dependence

definition encoding
definition decoding

definition architecture
definition foundation
definition framework
definition tool

definition determine

definition measurement
definition experiment
definition consistency
definition inconsistent
definition coherent
definition test
definition verify
definition experience

definition consciousness
definition awareness
definition attention
definition motivation
definition reason

definition value # business value
definition evaluation
definition standard

definition desire

definition question
definition answer

definition strategy
definition tactic
```

## other terms

These terms are ones humans use, which refer to underlying structures. We include these here to disambiguate.

```
definition symbol
  ? A symbol is a representation of an information structure. ?
  ? A symbol is a representation. ?
  ? A symbol is a mapping of an information structure to a cognitive structure. ?

definition object
  ? An object is an information structure. ?
  ? An object is information an information store has a sign for. ?

definition pattern
  A pattern is a repeatable structure.
  ? A pattern is an information structure. ?
  ? A pattern is a repeatable information structure. ?
  A pattern is a repeated template.

definition template
  A template is a repeatable information structure.

definition sign
  # P: S(I) -> S(C)
  A sign is a mapping of an information structure to a cognitive structure.
  A sign is a mapping of an information structure to a stored information structure.

definition property
  A property is a relation between two structures when conceptualizing information structures as objects.

definition state
  ? The structure of information in a frame. ?
  ? A state is a configuration in a frame. ?
  ? A state is a set of facts about a universe in a frame. ?

definition configuration
  ? The properties of an information structure. ?

definition situation
  ? A set of events in a location. ?
  ? A set of events in an environment. ?

definition wrong
definition right

definition implement
  To implement is to take an abstract information structure and make it into an observable information structure.

definition truth
  ? that which is true or in accordance with fact or reality. ?

definition relation
  ? A relation is a structure of structures. ?

definition list
  ? A list is a relation of structures with order. ?

definition tree
  ? A relation of structures with a hierarchy. ?

definition web
  ? A relation of structures with a cycle. ?

definition graph

definition group

definition collection
  ? A collection is a relation of structures. ?

definition category
  ? A category is a relation of structures. ?
```

```
definition community
definition participation
definition engagement
definition interest
definition value

definition popular
  ? Popular information is information that is interesting to many agents. ?
```

## Paper

The paper introduces the human terms above. Then in the next section, it formalizes those terms into mathematical symbols. This way you get a simple intro that's engaging without jargon, and then can dig further into the mathematical details. Maybe there's an intermediate section in the modeling language showing how it's "computable" first, using human-readable but structured model code. Then after that basically transform into math symbols.

## Assumptions

```
assumption
  The universe updates once every frame. (But maybe, many updates can be applied in a single frame).

assumption
  The universe changes.

assumption
  A change of the universe is isomorphic.
  basis Based on the assumption that the universe contains everything, but we don't know that for sure.

assumption
  There is no infinity.

assumption
  There is no time.
  There is no space.

assumption
  There is only information.
  The universe is information.

potential assumption
  There are no closed systems.
  But this is not workable.

assumption
  The universe is the only closed system.

assumption
  Information can neither be created nor destroyed.
```

The assumptions should be refined until they are logically consistent with each other and with observation.

http://mathoverflow.net/questions/44208/is-there-any-formal-foundation-to-ultrafinitism?rq=1

>  My question is this. Is there a system of logic that will allow us to prove only statements that have physical meaning? I don't have a formal definition of "physically meaningful" so instead let me try to illustrate what I mean by an example or two.

Every unit of space is a unit of computation. Every frame is a computation. So the universe is a parallel processor

planck length: 16.162e-36m
universe: 93 billion light years (9.4607e+15m)

d = (universe / planck length) = 5.8536691e+50 (ratio)
r = d / 2 = 2.9268346e+50
units of computation = pi*r^2 = 2.691202e+101 ~ 2.7e100
that means there is about 2.7 googol computers.

```coffee
definition success
  ? Success is when a problem is solved. ?
definition goal

definition metric
definition measurement
definition hypothesis
definition improvement
definition plan
definition definition
definition resource

definition individual
definition instance
definition class

definition probability
definition possibility

definition compelling

definition product
definition prototype

definition focus
definition decision
definition agreement
definition delight user

definition story
definition narrative
definition fulfill
definition basic x
definition good enough
definition done

definition project
  A commitment to solve a problem.

definition data
```

```
definition experience
  The collection of state changes that have generated the current structure.
```
