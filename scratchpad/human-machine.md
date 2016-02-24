With llvm, you are literally just transforming the AST of one language directly into LLVM IR. So blocks, comparisons, adds, and other basic instructions. But since you are translating existing programming languages to LLVM IR, it makes sense. A function becomes a block etc.

But with modellang, you have to somehow figure out what functions are at the lowest level. So functions are just actions, implemented with algorithms. A tree of actions. Then somehow you make the micro tasks/actions in pure machine language.

It's like you have a "machine" model, which is different from the "human" or "conceptual" model:

- human vs. machine
- conceptual vs. programmatic

```
machine parse
machine render
```

But maybe you can call `machine parse` as `algorithm parse`.

And any algorithms must, at the leaf nodes, be made of machine instructions. This way you can prove that an algorithm can be executed on a machine automatically. It also means you can have tasks that may be fuzzy, and can be executed by humans, and instead of "algorithm" you can maybe call them "workflows" or something. But really they are sorta the same thing.

```
import github.com/model/machine

algorithm read string

import github.com/model/human

workflow read book
```

```
algorithm read string
algorithm write string
algorithm allocate memory
algorithm deallocate memory
algorithm render html
algorithm parse string, given grammar
```

Algorithms must resolve to a set of program instructions, which there's a specific defined set of machine instructions.

Algorithms themselves are then just complex instructions, and so algorithms can use other algorithms. So then it just becomes an algorithm network.

Then the job is to figure out how to get the program/machine instructions from the algorithm tree. Once you can do that, then you have the equivalent of the LLVM IR, and can transform it into architecture-specific assembly or opcodes.

The last remaining question is, how to transform non-machine "algorithms/programs" to machine ones? If you want the machine to actually _do_ that algorithm, then it will have to be machine instructions at the end. But if it's like:

```
algorithm eat dinner
  step sit
  step hold fork
  step shovel food, into mouth
```

Then, until we get computers to actually implement eating dinner, this is just a set of statements. Then we take those statements, and transform those into a list perhaps:

```
transform eat(dinner), list
```

And it takes the set of steps, and converts it into some simple string set or something. Then from there, you can pass that to the `render string` algorithm, and now you're at the point of the machine.

Go from a set of types and a set of algorithms, to a program, which is a set of blocks of instructions.

types + algorithms -> program
model -> program

So basically:

```
machinize algorithm read string
transform algorithm(read(string)), program
```

And if it fails type checking, it tells you.
