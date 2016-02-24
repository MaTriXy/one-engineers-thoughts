
The meaning and problems associated with different characters.

```
character classes
  group lowercase
  group uppercase
  group separator
    ;
    _
    -
    character dot
    character space
  group problematic # commonly have problems
    <>/\&:"
  group duplicates in sequence
    example aa
    example qq
  # test characters from certain common character sets
  group language character set
  group quotes
  group whitespace
    character tab
    character space
    character line
  group math
  group html
  group easter egg
  group null
    null characters
  group programming keywords
  group common formatting strings
    %s
    %n
  group semicolons
  group url escape code
  group ansi escape sequences
  group template strings
    {{}}
  group for each programming language expressions
    if you know what the backend is, then limit to only those expressions
  group xss attacks
  group sql injection
    finishing template strings on underlying server
  group javascript
  group git >>>>
  group backticks
  group currency
  group date

test different encodings
  which characters are encoded
  which characters are not encoded

errors more common
  at beginning
  at end
  very long (max)
  very short (min)
```

Therefore, need a model of the different programming languages to make robust examples.

So you want to try examples from every "group" or "class" of characters. You want to try these characters at the boundaries.

All of those groups can be extracted from the set of grammars used to describe common programs. Until the grammars are created, we could instead manually define them.
