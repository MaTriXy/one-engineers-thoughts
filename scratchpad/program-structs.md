
## Structs

The goal with structs is to find the optimal transformation of the "model records" into "program structs", placing them in efficient memory positions.

So an algorithm acts on program structs, strings, integers, and floats. So given a set of algorithms, you can transform all their structs into optimal structs for storing in memory.

Struct fields are stored adjacent in memory. So `sizeof struct` just sums all of their properties.

### Algorithms and Functions

So in your code you might have high-level functions acting on some high-level records.

Then you have an "algorithm selector" algorithm, that takes your functions, and the records being passed to them, and figures out the optimal algorithm to use given the constraints. So maybe one algorithm deals with memory chunks of 16 bytes, while another deals with 64 bytes, and they are totally different. Your function doesn't care about that, but when it is transformed to a program, it dynamically selects the right algorithm to use.

Because functions can be implemented using many different algorithms.
