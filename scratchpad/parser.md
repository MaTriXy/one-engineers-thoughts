
task parser
  parse cli args
    transform argv into whatever is needed
  read file
    read file into string buffer
  construct lr parse table from a grammar
    add transform to ast for each rule
    add hook for checking other grammars and parsing context
