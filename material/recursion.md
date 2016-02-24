
source equivalence between recursion and stack-based
  http://stackoverflow.com/questions/2093618/can-all-iterative-algorithms-be-expressed-recursively
  http://cs.saddleback.edu/rwatkins/CS2B/Lab%20Exercises/Stacks%20and%20Recursion%20Lab.pdf
  http://stackoverflow.com/questions/159590/way-to-go-from-recursion-to-iteration
  http://stackoverflow.com/questions/531668/which-recursive-functions-cannot-be-rewritten-using-loops

source tail call
  http://en.wikipedia.org/wiki/Tail_call

  > A tail-recursive function is very easily converted to an iterative one. Just make the accumulator variable a local one, and iterate instead of recurse.

```coffee
# http://en.wikipedia.org/wiki/Quicksort
algorithm quicksort array
  input array
  input left, type integer
  input right, type integer
  instructions
    complete if gte left, right
    let index, partition array, left, right
    call quicksort array, left, index - 1
    call quicksort array, index + 1, right

algorithm partition array
  input A
  input start
  input end
  process
    let pivotIndex, choosePivot A, start, end
    let pivotValue, A[pivotIndex]
    # put the chosen pivot at A[end]
    swap A[pivotIndex], A[end]
    let storeIndex, start
    # compare remaining array elements against pivotValue = A[end]
    # for i from start to end−1, inclusive
    loop from start, to end-1, using i
      when less A[i], pivotValue # when more
        swap A[i], A[storeIndex]
        increment storeIndex
    swap A[storeIndex] and A[end] # move pivot to its final place
    return storeIndex

algorithm partition array
  input A
  input start
  input end
  procedure
    let pivotIndex, choosePivot A, start, end
    let pivotValue, A[pivotIndex]
    swap A[pivotIndex], A[end]
    let storeIndex, start
    let i, start
    loop
      assert something
      exit when equal i, end
      when less A[i], pivotValue # when more
        swap A[i], A[storeIndex]
        increment storeIndex
      increment i
    swap A[storeIndex] and A[end] # move pivot to its final place
    return storeIndex
```

```haskell
quicksort (x:xs) = quicksort [y | y <- xs, y <= x] ++ [x] ++ quicksort [y | y <- xs, y > x]
```

```c
example quicksort recursive
  void quicksort(int* array, int left, int right) {
    if (left >= right) return;
    int index = partition(array, left, right);
    quicksort(array, left, index - 1);
    quicksort(array, index + 1, right);
  }

example quicksort stack
  void quicksort(int *array, int left, int right) {
    int stack[1024];
    int i=0;
    stack[i++] = left;
    stack[i++] = right;

    while (i > 0) {
      right = stack[--i];
      left = stack[--i];
      if (left >= right) continue;
      int index = partition(array, left, right);
      stack[i++] = left;
      stack[i++] = index - 1;
      stack[i++] = index + 1;
      stack[i++] = right;
    }
  }
```

> Recursive programming is powerful because it maps so easily to proof by induction, making it easy to design algorithms and prove them correct.
http://blog.moertel.com/posts/2013-05-11-recursive-to-iterative.html
http://blog.moertel.com/tags/recursion-to-iteration%20series.html

In a nutshell:

- Study the function.
- Convert all recursive calls into tail calls. (If you can’t, stop. Try another method.)
- Introduce a one-shot loop around the function body.
- Convert tail calls into continue statements.
- Tidy up.
