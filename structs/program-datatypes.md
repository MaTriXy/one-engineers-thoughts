
Memory structures.

## [Low-level data structures](http://en.wikipedia.org/wiki/C_data_types)

```coffee
type character
  property signed, type boolean

type boolean

type integer
  property signed, type boolean
  property bits, accepted 4, 8, 16, 32, 64, 128, 256, n

type float

type bit
```

## Complex data structures

```coffee
type string
type record # struct Go’s structs are typed collections of fields
type set
type list
type tree
type graph
```
