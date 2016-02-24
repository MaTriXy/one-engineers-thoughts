- write model grammar in javascript
- cst: write javascript grammar in model language
- cst: write rust grammar in model language
- ast: write javascript ast in model language
- ast: write rust ast in model language
- using js, parse javascript cst and ast from model language into js ast
- get js parser to compile back into js
  - by this point, am essentially generating a compiler

- the compiler needs to have all the code to:
  - parse the model grammar into cst
  - transform cst into ast
  - transform model ast into target language cst (js or rust)
    - needs js cst
    - js ast
    - transform js ast to cst
  - log output

- to transform model ast to js ast, needs to have idea of types and functions
  - transform model ast into set of types and set of functions

- model cst
- model ast
- js cst
- js ast
- parser
  - takes string, and parses with cst and ast ("source code")

- LR parser: http://en.wikipedia.org/wiki/LR_parser
- https://github.com/cgrand/parsley

```coffee
#
# Parser pushes tokens into queue.
#

stream token
```

- https://github.com/Eliah-Lakhin/papa-carlo/blob/master/src/main/scala/name.lakhin.eliah.projects/papacarlo/examples/Json.scala
- http://en.wikipedia.org/wiki/Control_flow_graph
