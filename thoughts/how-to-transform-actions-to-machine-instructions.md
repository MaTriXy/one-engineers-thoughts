
### How to transform high-level instructions to low-level ones?

1. Need list of all low-level instructions.
  - add
  - multiply
2. Need list of all high-level instructions.
  - render
  - print
  - compile
  - ...
3. Write algorithms for high-level instructions.
4. Transform algorithms into low-level instructions.
5. Need mapping of low-level instructions (like LLVM IR) to each architecture's assembly.
6. Would be helpful to have list of all computer objects these instructions act on.

```
main print hello world
main 'hello world'
```

Maybe `main` is an execution context. So it is a process, or program, a set of instructions. Main is the top-level program or set of instructions. So it gets high-level actions, each of which are instructions, and somehow transforms them into machine instructions.

```
type main, is program

type program
  property instructions, list instruction
```

So the question is, how to transform high-level instructions to low-level ones? It's sort of like, how to take a general task and create a micro-task tree out of it perhaps.

```
instruction print
  input string
  instruction write, stdout, string
```

Then in the end, you transform `main` into a set of "program instructions". There is a final set of program instructions. From here, you can then create the control-flow graph.
