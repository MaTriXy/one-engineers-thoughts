
source principles
  principle Teach players organically. Don't use tooltips or dialogs or walkthroughs. Give them a simple, safe example first, so they figure it out themselves.

source design
  https://www.youtube.com/results?search_query=world+of+warcraft+developers
  http://www.gamasutra.com/blogs/KrystianMajewski/20140401/214427/Stepped_on_a_Narrative_LEGO.php
  http://rdansky.tumblr.com/post/88910910324/screw-narrative-wrappers
  http://www.gamasutra.com/view/feature/131594/environmental_storytelling_.php
  http://www.spaaace.com/cope/?p=751
  PROFESSIONAL TECHNIQUES FOR VIDEO GAME WRITING edited by Wendy Despain.
  http://www.jesperjuul.net/text/clash_between_game_and_narrative.html
  http://www.costik.com/nowords.html

source repo
  https://github.com/photonstorm/phaser
  https://github.com/pixijs/pixi.js
  https://github.com/wellcaffeinated/PhysicsJS

---

http://www.gametheory.net/dictionary/BackwardInduction.html

Payoffs in game theory is like the "value" you get when you perform an action. This _value_ is your motivation for doing the action.

> A strategy defines a set of moves or actions a player will follow in a given game.

A game is an interaction between two or more people that results in different outcomes and happiness levels for the individuals.

game
player
action
payoff

- normal form is in matrix, comparing all actions to payoff
- extensive form is the actual tree, stepping you through the evolution

```coffee
game normal form
  assume N, players
  assume A, set of actions sets for each player
  assume u, utility/payoff function
```

```coffee
game cooperative, same interest
game competitive, different interest
```

best responses lead in cycle, in heads/tales games.

Definition "very weak dominance", the "very weak" part is because `>=`, if dominance is `=`, then it's not really dominant, but technically it could still be dominant, so we say it's "very weak dominance".

Sheesh, that is so complicated! It could be greatly simplified, just pick different names.

Dominant strategies mean that is the best thing for me to do. And if everyone is doing dominant strategies, then that is a nash equilibrium. Nobody needs to change what they are doing.

There is no common scale of utility between agents.

pareto-dominant. Given 2 outcomes, one of the agents will _strictly_ prefer one of the choices, and so there is some dominance relation.

pareto optimality. The outcome is such that there is no better outcome.

every game has to have at least one pareto optimal outcome.

There can't be cycles in the pareto dominance relationship.

Nash theorem: every finite game has a nash equilibrium.

This means, there is always an optimal set of moves for all individuals.

---

- Relative Building-Block Fitnessand the Building-Block Hypothesis http://web.cecs.pdx.edu/~mm/Forrest-Mitchell-FOGA.pdf
"The building-block hypothesis states that the GA works well when short,low-order, highly-fit schemas recombine to form even more highly fithigher-order schemas. The ability to produce fitter and fitter partial solutionsby combining building blocks is believed to be a primary source of theGA’s search power"

So basically, building blocks emerge somehow automatically!

https://en.wikipedia.org/wiki/Genetic_algorithm#The_building_block_hypothesis

https://en.wikipedia.org/wiki/Gray_code

> This is in accordance with the general principle of conserving good
features through inheritance and discarding bad features developed in Grouping Genetic
Algorithms [6].

---

- Environment: determines inputs (not controllable)
- System: determines outputs (controllable)

In the same way the stoics have things that you can and cannot control.

> Two player graph-based, turn-based games with infinitary winning conditions

Reactive synthesis as a game.

---

Formalizing Quality of Reactive Systems

This means that _quality_ is the end goal of the universe. That the ideal is a _high quality experience_. This means maximizing quality. This means, the universe is going to become more and more pure in quality, until it is almost perfect, and then it falls apart again, beginning the cycle (the start of the next universe).

> A normal form for LTLO
http://www.cs.huji.ac.il/~shaull/pub/icalp12.pdf
quality in reactive systems

> A learning based approach to control synthesis of markov decision processes for linear temporal logic specifications

---

MIMD

individual
  memory
  processor
  alias node

From an abstract perspective, an individual is a node. Each node has _memory_ and the ability to _process information_.

https://en.wikipedia.org/wiki/MIMD

https://news.ycombinator.com/item?id=7121058

> In the end, Hillis and his co-workers at Thinking Machines settled on a three-dimensional architecture in which the processors were connected as if they formed a sixteen-dimensional cube. What this means is that each processor, although directly connected to only 16 others, was never more than sixteen steps away from any of the other 65,536 processors. Moreover, the possibility of a traffic jam was reduced because in sixteen dimensions there are numerous possible routes between any two processors. [1]

> theoretically, it is possible to simulate any other topology on a hypercube: trees, rings, 2-D and 3-D meshes, etc
http://www.netlib.org/utk/papers/advanced-computers/dm-mimd.html

> The idea for the project was to create an array-based parallel image processor with an architecture similar to the Goodyear MPP formerly used by NASA or the Connection Machine found in the control room of Jurassic Park. Unlike these earlier computers, the team implemented their array processor in an FPGA, giving rise to their Lena processor this processor is in turn controlled by a 32-bit AVR microcontroller with a custom-build VGA output.
http://hackaday.com/2013/02/26/massively-parallel-cpu-processes-256-shades-of-gray/
https://www.parallella.org/2014/06/03/my-name-is-brian-and-i-build-supercomputers-in-my-spare-time/

---

> The ultimate associative computer design would include a bit-serial operation mode for the associative numeric search routines, and byte or word serial mode would be for arithmetic computation and comparisons.

---

> Quadsected square codes are structure codes for graphs which can be used for the generation of node domination, node influencing and similar information useful in control flow graph analy- sis.

> Some of the advantages of combining associative and logic computing are: 1) the speed of knowledge retrieval is independent of the number of ground facts, 2) knowledge retrieval is possi- ble even if the information is incomplete, making knowledge discovery possible, 3) relations with a large number of arguments are handled efficiently with little overhead, 4) associative lookup is fast, allowing the tight integration of high performance knowledge retrieval and data parallel computation without any overhead due to data movement or data transformation, and 5) the
13
To appear in the November 1994 issue of IEEE Computer: Special Issue on Associative Processing.
model is efficient for both scalar and data parallel computations on various abstract data types such as sequences, matrices, bags and sets.

> For example, in geographical information systems, spatial data structures such as quad-trees and oct-trees are represented associatively with structure codes. As a result, different regions having the same values can be identified using associative search in constant time.

```
block
link
code
```
