
- program != process
– Program:  staVc code  + staVc data  
– Process:  dynamic instanVaVon of  code  + data  + more 

A program is just a set of instructions.

---

```coffee
transform literal, variable(global)
  # %1 = load i32* @variable
  # ret i32 %1

transform literal, variable(local)
transform literal, constant
transform function(record), function(program)
  # for local, in locals, `load` or `allocate`
  # for element, in flow, create blocks
  assign return(output), return(input)

transform 
```

There are two kinds of local variables in LLVM:

- Register-allocated local variables (temporaries).
- Stack-allocated local variables.

The former is created by introducing a new symbol for the variable:

```llvm
%1 = some computation
```

The latter is created by allocating the variable on the stack:

```llvm
%2 = alloca i32
```

- http://llvm.lyngvig.org/Articles/Mapping-High-Level-Constructs-to-LLVM-IR

Data structures define how values being computed are stored and accessed within programs.

- http://en.wikipedia.org/wiki/Code_generation_(compiler)
- http://en.wikipedia.org/wiki/Register_allocation
- http://en.wikipedia.org/wiki/Reaching_definition
- http://en.wikipedia.org/wiki/Live_variable_analysis

Problem:
• IR contains an unbounded number of temporaries
• machine has bounded number of registers
• temporaries with disjoint live ranges can map to same register

Gathering liveness information is a form of data flow analysis operating over the CFG.

Build interference graph G: for each program point

- register allocation: http://www.diku.dk/hjemmesider/ansatte/torbenm/ICD/Register.pdf

Register allocation via graph coloring.
http://www.cs.colostate.edu/~mstrout/CS553/slides/lecture03.pdf

http://www.seas.gwu.edu/~narahari/cs339/compile2.pdf
- register transfer language: http://en.wikipedia.org/wiki/Register_transfer_language
