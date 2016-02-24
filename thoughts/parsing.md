
eliminating left recursion
- right recursion is incremental, which is why it is more intuitive
- seems like a grammar should read as stepping through a string character by character. Left-recursion doesn't work like this, but right-recursion does. Left-recursion works on a one-off basis, sort of like showing examples of what you can write. But you don't have a sense of how it relates with the rest of the grammar. You have to imagine how it recurses.

```coffee
math = expression
# expression "can be"
expression = number
# from a definition standpoint, this is simplest.
# from thinking how this is operating, this is very difficult to understand
expression = expression product expression
expression = expression division expression
expression = expression plus expression
expression = expression minus expression
```

http://stackoverflow.com/questions/26198078/parsing-an-expression-grammar-having-function-application-with-parser-combinator
http://gallium.inria.fr/~fpottier/publis/fpottier-regis-gianas-typed-lr.pdf

It seems people are just saying left-recursion creates "simpler grammars" because of the way grammars are written. It has less lines, but it is definitely not simpler from an api perspective.
