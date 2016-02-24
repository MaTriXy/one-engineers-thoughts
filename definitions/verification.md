
Verification: Does the implementation match the specification?

> Verification: to check if all possible behaviors of the implementation
are compatible with the specification.

1. specification (behavior?)
2. design / model
3. implementation
4. verification (implementation matches specification)

While testing can only find errors, verification can also prove
their absence (=exhaustive testing).

> Model checking provides an automated method for verifying
concurrent systems. Correctness specifications are given in temporal
logic. The method hinges on an efficient and flexible graph-theoretic
reachability algorithm.

A formal proof guarantees that no simulation of the system will violate the specification. Simulation can be symbolic, so it doesn't necessarily account for unknown real-world errors.

Techniques:

- theorem proving
- model checking
  - equivalence checking. Would be automatic with m because specification is transformed directly into implementation. https://en.wikipedia.org/wiki/Formal_equivalence_checking
    + The most common approach is to consider the problem of machine equivalence which defines two synchronous design specifications functionally equivalent if, clock by clock, they produce exactly the same sequence of output signals for any valid sequence of input signals.
  - Symbolic Trajectory Evaluation
    - https://en.wikipedia.org/wiki/Symbolic_trajectory_evaluation
    - https://en.wikipedia.org/wiki/Symbolic_simulation
    - > Models for computer programs or VLSI logic designs can be very easily simulated, as they often have an operational semantics which can be used directly for simulation.
    - https://en.wikipedia.org/wiki/Logic_synthesis

http://www.cerc.utexas.edu/~jaa/360r/lectures/22-1.pdf

---

Laws of deduction:

1. The next state is derivable from the current state.
2. The current state is recognizable.

So axioms are based on recognition, which means they are derivable too. Down to the simplest recognition, self-recognition, the origin of the universe.

---

So the starting state for a program is the environment of the computer:

- the cpu architecture and instruction set
- the operating system
- the amount of memory available
- the experimental number of cycles each instruction takes
- etc.

So the process starts with reading the first bit from the input file (well even before that, it interprets command line arguments, and finds the path to the file, then executes the operating-system command for reading the file). But let's assume for now it starts at reading the bit.

So, first state is 4GB memory, and instruction set architecture, and registers are full with x values, and program exists in memory, and pointer is at specific memory address. The difference between the current state and the next state after reading the byte, then, is there is now 1 byte in memory. This is _valid_ because we have 4GB memory assumed, and this brings us down to 4GB - 1B which is greater than 0. We also validate that the memory address the byte can be read into is a valid memory address. So we can at least validate that we can read the whole file into memory, and that every byte from the file gets associated to a valid address.

Then we can assume we are in a valid state with the full file in memory. That is, this state of having the file in memory can be derived from the initial computer state of having 4GB memory on a certain instruction set.

From here we then transform the current state into a new desired state, one where we have recognized the statement structures. This process is "solving a problem", transforming current state to desired state. The interpreter (ugh I hate that name), the agent sets a goal, that the future state is where statement structures exist. It does this because it's part of a larger goal, of compiling the program, etc.

Instead of moving in sequences of valid states (memory -> file in memory -> statements), we can do all of it at the same time, in parallel. We can go from a valid initial memory, to the first few bytes in the file, to recognizing that it represents a structure. So take an example. Let's say the word is `register`, that means we have 8 bytes in memory. And assume we also have the machine for recognizing the statement grammar, recognizing the "pattern". So the current state is 8 bytes of memory matching `register`, but no recognition that this is the name of a statement. So the next state is 8 bytes of memory matching `register`, also having recognized that it is the name of a statement. You can imagine this like a rule of logic.

```coffee
given "register" is sequence of bytes
conclude "register" is the name of a statement
```

This is equivalent to the simplest typing rule http://math.stackexchange.com/questions/1390226/why-is-the-rule-if-x-has-type-%CF%83-in-the-context-we-know-that-x-has-type-%CF%83-need .

Maybe it is not in parallel, but is is _mixed_. Mixed is more complicated to model, but it can automatically be done. So instead you model them separately in simple ways, then there are generic models mixing two simple or pure forms into more complex but more optimized forms. The reason this is possible is because every statement is transformed into structural normal form. Every statement is transformed into a structure, which is a list of relations of other structures, recursively.

Mixed provides more rapid feedback.

So, the difference between each state in a machine is very small. Maybe it is only 1 thing that changes at a time. Though the instruction set sometimes allows more than 1 thing to happen at the same time. The only time there is more than one change to the state is if there is parallel computation. This also means that proofs must proceed only 1 change at a time, unless there is parallel processing. Parallel processing is defined by the number of computational units that exist.

---

Mechanical (reactive) vs. intelligent. Same number of syllables, on is inanimate, the other is animate.

http://security.stackexchange.com/questions/21441/how-does-formal-verification-guarantee-secure-error-free-code

https://github.com/johnyf/tool_lists/blob/master/verification_synthesis.md

source docs
  http://formalmethods.wikia.com/wiki/Formal_methods
