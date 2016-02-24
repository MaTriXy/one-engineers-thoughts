
## init

```coffee
let stack, list # set it to new list
let position, 0 # set to type integer
```

## get

```
let position, get position, from context
```

## loops

```coffee
let current, list
for rule, in rules
  push current, token(start(position), rule)

let current, token(start(position), rule), for rule, in rules

let transition, for transition, in transitions
  when satisfy context, transition
    transition
```

## switch

```coffee
case match
  when true
    increment position
    return current
  when false
    if satisfy context, transition
      reduce
      let next, get target, from transition
      return next
    else
      either
        recover
        error
```

## nesting

```coffee
texture button, on hover
  rect
    stroke solid
      color #FF00FF
    fill solid
      color 0xFF0562
  text color 0x0000FF

texture button, on hover
  rect stroke color #FF00FF
  rect fill color 0xFF0562
  text color 0x0000FF
```
