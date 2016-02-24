
source tree
  radix tree
    http://en.wikipedia.org/wiki/Radix_tree
  btree
    http://en.wikipedia.org/wiki/B-tree
  trie
    http://en.wikipedia.org/wiki/Trie

source parsing
  earley parser
    http://en.wikipedia.org/wiki/Earley_parser

  cyk
    http://en.wikipedia.org/wiki/CYK_algorithm

  online
    http://en.wikipedia.org/wiki/Online_algorithm

  bitap
    http://en.wikipedia.org/wiki/Bitap_algorithm
    note The Bitap algorithm is the heart of the Unix searching utility agrep.

source all
  http://en.wikipedia.org/wiki/List_of_algorithms

source sort
  http://en.wikipedia.org/wiki/Timsort
  http://en.wikipedia.org/wiki/Smoothsort
  http://rosettacode.org/wiki/Sorting_algorithms/Bubble_sort
  http://en.wikipedia.org/wiki/Bucket_sort
  https://coq.inria.fr/cocorico/QuickSort

source invariants
  http://stackoverflow.com/questions/2935295/what-is-the-best-way-of-determining-a-loop-invariant
  > Finding a good loop invariant is similar to finding a mathematical proof of a theorem.
  http://math.stackexchange.com/questions/35112/tips-for-constructing-basic-loop-invariants
  http://en.wikipedia.org/wiki/Loop_invariant
  ```
  from
      x := 0
  invariant
      x <= 10
  until
      x >= 10
  loop
      x := x + 1
  end
  ```

http://stackoverflow.com/questions/3221577/what-is-a-loop-invariant
In simple words, a loop invariant is some predicate (condition) that holds for every iteration of the loop. For example, let's look at a simple for loop that looks like this:

int j = 9;
for(int i=0; i<10; i++)  
  j--;
In this example it is true (for every iteration) that i + j == 9. A weaker invariant that is also true is that
i >= 0 && i < 10 (because this is the termination condition!) or that j <= 9 && j >= 0.

As people point out, the loop invariant must be true

- before the loop starts
- before each iteration of the loop
- after the loop terminates

( although it can temporarily be false during the body of the loop ). On the other hand the loop conditional must be false after the loop terminates, otherwise the loop would never terminate.

Thus the loop invariant and the loop conditional must be different conditions.

A good example of a complex loop invariant is for binary search.

bsearch(type A[], type a) {
start = 1, end = length(A)

    while ( start <= end ) {
        mid = floor(start + end / 2)

        if ( A[mid] == a ) return mid
        if ( A[mid] > a ) end = mid - 1
        if ( A[mid] < a ) start = mid + 1

    }
    return -1

}
So the loop conditional seems pretty straight forward - when start > end the loop terminates. But why is the loop correct? What is the loop invariant which proves it's correctness?

The invariant is the logical statement:

if ( A[mid] == a ) then ( start <= mid <= end )
This statement is a logical tautology - it is always true in the context of the specific loop / algorithm we are trying to prove. And it provides useful information about the correctness of the loop after it terminates.

loop invariants are a formalization of your intuition

Transform recursive algorithm definitions to imperative.

http://stackoverflow.com/questions/10991546/which-algorithms-are-hard-to-implement-in-functional-languages

source graph transitive closure
  http://www.cs.hut.fi/~enu/thesis.html (GREAT)
