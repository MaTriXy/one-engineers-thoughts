
- Function vs. instruction.
- "operation" is the execution of the "instruction"
- http://en.wikipedia.org/wiki/Function_%28mathematics%29
- An algorithm is an effective method expressed as a finite list[1] of well-defined instructions[2] for calculating a function.
- An algorithm is a list of instructions used to implement a function.
- Starting from an initial state and initial input (perhaps empty),[4] the instructions describe a computation that, when executed, proceeds through a finite[5] number of well-defined successive states, eventually producing "output"[6] and terminating at a final ending state. http://en.wikipedia.org/wiki/Algorithm

```coffee
type function
  property algorithm, type algorithm

type algorithm
  property inputs, list input
  property output
  property instructions, list instruction
```

For a given function multiple algorithms may exist. This is true, even without expanding the available instruction set available to the programmer. Rogers observes that "It is . . . important to distinguish between the notion of algorithm, i.e. procedure and the notion of function computable by algorithm, i.e. mapping yielded by procedure. The same function may have several different algorithms".

```
transform body(function), algorithm
```

An algorithm is a sequence of instructions or a set of rules that are followed to complete a task.

Therefore, a program is a composition of algorithms!

- dead code elimination

- Block = sequence of instructions
- Set of blocks = nodes in the graph
- multiple output edges
- multiple input edges

```coffee
# Control enters only at beginning of sequence
# Control leaves only at end of sequence
type block
  property incoming, type control
  property outgoing, type control
```

CFG models all program executions.

- http://www.cs.cornell.edu/courses/cs412/2008sp/lectures/lec24.pdf

```
algorithm cfg
  input A sequence of program statements.
  output A list of basic blocks with each statement in exactly one basic block.
  method
    do a
    then b
    ...
```

An algorithm is a set of instructions, which can be optimized by transforming this set of instructions to a set of constraints.

Then, every algorithm can be transformed to a set of constraints, and so the whole program can be one big contraint system, solved in small chunks (functions at a time), and eventually as a whole program. Units of computation: blocks, procedures, program.

- Algorithms for constructing CFG: https://engineering.purdue.edu/~milind/ece573/2011spring/lecture-11.pdf
- Loop optimizations: loop fusion, loop interchange, loop tiling (http://www.cs.utexas.edu/users/mckinley/380C/lecs/24.pdf)
- http://web.stanford.edu/class/cs243/lectures/L15-Loop-Optimization.pdf
- http://www.eng.utah.edu/~cs5470/schedule/Lec33.pdf
