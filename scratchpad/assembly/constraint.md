
- In mathematics, a constraint is a condition of an optimization problem that the solution must satisfy.
- http://en.wikipedia.org/wiki/Constraint_satisfaction

```coffee
type system constraint
  property constraints, set constraint
```

- http://en.wikipedia.org/wiki/Peephole_optimization
- https://engineering.purdue.edu/~milind/ece573/2011spring/lecture-11.pdf
- http://www.cis.upenn.edu/~cis570/slides/lecture04.pdf

```coffee

#
# Transform Abstract Syntax Tree into Control Flow Graph
#

transform ast, cfg
```

- https://code.google.com/p/mcfromc/wiki/SyntaxToCFG
- http://llvm.org/docs/Passes.html

It performs control flow analysis, data flow analysis, various optimizations, instruction scheduling, register allocation and then finally generates machine code in the back-end.

```
language ESSENCE’ 1 .b . a
$ −−−−−−−−−−−−−−−−−−− PARAMETERS and CONSTANTS −−−−−−−−−−−−−−−−−−−−−−−−
given vertices : int ( 1 . . )
given colours : int ( 1 . . )
letting VERTICES be domain int ( 1 . . vertices)
letting COLOURS be domain int ( 1 . . colours)
given edges : matrix indexed by [VERTICES , VERTICES] of int ( 0 , 1 )
$ −−−−−−−−−−−−−−−−−−− VARIABLES −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
find colouring : matrix indexed by [VERTICES] of COLOURS
find usedColours : matrix indexed by [COLOURS] of int ( 0 . . 1 )
$ −−−−−−−−−−−−−−−−−−− OBJECTIVE −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
minimising sum c : COLOURS . usedColours[c]
$ −−−−−−−−−−−−−−−−−−− CONSTRAINTS −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
such that
  forall a , b : VERTICES .
    (edges[a , b] = 1 ) => (colouring[a] != colouring[b ] ) ,
  forall v : VERTICES . forall c : COLOURS .
    (colouring[v] = c) => (usedColours[c] = 1 )
```

```
constraint something
  this and this
  or this and this...
```
