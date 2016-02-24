
**Synthesis**: If realizabile finite state machine exists for a specification, construct it.

Reachability.

> The goal of program synthesis in general is to find an implementation of a program such that the behaviors of the implementation satisfy a given specification. http://i.stanford.edu/pub/cstr/reports/cs/tr/96/1567/CS-TR-96-1567.pdf

> Therefore, the computation of each module (including the one being synthesized), can be affected by other modules (which become the environment to the module being synthesized).

3.1 Transition system modules VERY GOOD

> The inputs to the algorithm consist of three parts: a specification , an environment model E, and an execution model X .

> Each word in LX is a representation of a \good" or \possible" scheduling sequence. In other words, we may assume a scheduling sequence that is not in LX may not or cannot happen. If X encodes fair computations, then each word in LX describes a fair scheduling sequence.

It seems like it's saying, when you write the actions, you are saying how to possibly "schedule" the change in state, or saying that this is "one way to execute it", and then it uses that information for reference to encode the actual state change execution.

The "scheduler" figures out the "scheduling sequence" of state changes. The result is an automaton that accepts a behavior and a scheduling sequence.

The "environment" is the surrounding, externally controlled context. The base constraints of the system. In this sense, a platform is a type of environment.
