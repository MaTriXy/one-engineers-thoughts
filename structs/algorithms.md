
### insertion sort

- http://rosettacode.org/wiki/Sorting_algorithms/Insertion_sort#Haskell
- http://en.literateprograms.org/Insertion_sort_%28Haskell%29

```
for i = 2:n,
    for (k = i; k > 1 and a[k] < a[k-1]; k--) 
        swap a[k,k-1]
    → invariant: a[1..i] is sorted
end
```
```coffee
function sort insertion
  input array
  output array
```
```coffee
algorithm sort insertion
  input array
  output array
  instructions
    let i, 2
    let n, length array
    loop
      loop
        # invariant: a[1..i] is sorted
        assert array, is(sorted), from 1, to i
        let k, i
        let previous, get item, from array, at subtract(i, 1)
        let current, get item, from array, at i
        exit when either lte(k, 1), gt(current, previous)
        swap current, previous
        decrement k
      increment i
      exit when equal i, n # exit condition
```
```ocaml
let rec insert lst x = 
  match lst with
    [] -> [x]
  | y :: ys  when x <= y -> x :: y :: ys
  | y :: ys -> y :: insert ys x
```

### bubble sort

```
for i = 1:n,
    swapped = false
    for j = n:i+1, 
        if a[j] < a[j-1], 
            swap a[j,j-1]
            swapped = true
    → invariant: a[1..i] in final position
    break if not swapped
end
```
```coffee
algorithm sort bubble
  input array
  output array
  instructions
    # invariant: a[1..i] in final position
    let i, 1
    let i(end), length array
    loop
      let complete, true
      let j, i(end)
      let j(end), sum(i, 1)
      loop
        let previous, get item, from array, at difference(j, 1)
        let current, get item, from array, at j
        when less current, previous
          swap current, previous
          let complete, false
        increment j
        exit when equal j, j(end)
      increment i
      exit when either complete, equal i, i(end) # never entered the nested loop
```
