
```coffee
definition interpretation
  An interpretation is a relation between two information structures.
```

An interpretation is information encoded in a store.
An interpretation is information encoded by a store.

```coffee
algorithm interpret
```

Identify features of information structure. Compare it with stored information structure features. Find closest match, now those are activated (part of the interpretation context). Those are features of higher level abstract structures, so the higher level interprets those features. If it doesn't have anything, or finds something weird, it notifies the lower structure so that it changes what features it identifies.
