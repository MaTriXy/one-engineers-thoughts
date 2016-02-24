
```coffee
topic cli

part colors
part ansi
part mouse
part arguments

type command
  property arguments, list argument

type argument # argv + argc

# transform command into a program
type program

transform command, program
```
