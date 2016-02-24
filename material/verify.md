
Need a way to be able to plug in a verification of some action to any language.

```
action read file
  input
  input
  output

problem...
```

Somehow it creates a structure that is the "specification" of that action. Then we have to convert these terms into the specific language. Then we implement the actions in that language, and can just `make test` and it will test the implementation against the spec.

- you implement the action in a language
- run the test against the implementation
- get all tests to pass, then it matches the specification

Therefore, given an action, generate a set of possible tests for that action. Then have a way of executing those tests (serialize assertions for a language).

```
action assert
  input relation
  input expected
  input returned
```

To implement the actions, need to verify the relations:

```
equal
more
less
more or equal
less or equal
not equal
match
...
```

Serialize these things into records, which can be written into form for specific language.

So how to come up with the spec?

1. Spec out relations
2. Spec out actions/problems/solutions

How to verify an implementation with a spec?
> Equivalence Checking

> The most common approach is to consider the problem of machine equivalence which defines two synchronous design specifications functionally equivalent if, clock by clock, they produce exactly the same sequence of output signals for any valid sequence of input signals.

So they should define the same actions, or at least solve the same problems.

https://en.wikipedia.org/wiki/Formal_equivalence_checking

---

```
problem
  current
    file not on disk
  desired
    file on disk
  solution
    action create file
```

Then it knows to check the spec for the file after it is on disk, that it matches the file spec:

```
file has name, matching file name spec
file has mode, matching mode spec, and matching default mode
etc.
```

So it generates all these assertions just from that problem definition. This means you don't have to write any tests manually for each language. You get to test against the full spec.

A problem's current/desired states are converted into a set of assertions before/after an action is called.

```
record file
  field name, pattern file name
  field mode

pattern file name
  either ...
```

Maybe records can be just collections of values from a state:

```
get name, from file
get mode, from file
set name, on file
set mode, on file
```

So then you can implement those "actions" directly in the target language.

https://en.wikipedia.org/wiki/File_system_permissions#Symbolic_notation

Somehow these assertions can be modular, so you only need to test that the pre/post file path/size exist, but not that the path is correctly transformed -- because there is another suite of tests just for the file path, and we know we are using that in the implementation internally somehow.

So first it will need to test the parts. And the parts of those parts. So it starts by testing bottom up, in a sort of tree. How could a decision tree be used to do this equivalence testing?

https://github.com/koalaman/shellcheck/tree/master/ShellCheck

---

Write spec and run it against a whole platform. For any pieces of the spec that are "missing" (no action is defined in target language for it, or action is defined but is incomplete), it lets you know. So you just literally "build to the spec". Every time you add, it runs against your platform and tells you what's next, so you can just chip away at it.

How to efficiently verify an implementation?

Complete verification of implementation?

---

> **Checking** is something that we do with the motivation of confirming existing beliefs. Checking is a process of confirmation, verification, and validation.
> **Testing** is something that we do with the motivation of finding new information. Testing is a process of exploration, discovery, investigation, and learning.
> Checks Are Machine-Decidable; Tests Require Sapience.
> To paraphrase Dkijstra, “checking can prove the presence of bugs, but not their absence.”
> Testing is, in part, the process of finding out whether our checks have been good enough. When we find a problem through testing, one reasonable response is to write one or more checks to make sure that that particular problem doesn’t crop up again.

https://github.com/mcandre/node-quickcheck/blob/master/lib/quickcheck.js

Combinator library randomly generating things to try to throw an error in the specification.

> If it requires a human, it’s a sapient process, and is far more likely to be testing.

> Testing, the search for new information, is not a quality assurance practice per se. Instead, testing informs quality assurance.

> As testers, it’s our job to discover information; often that information is in terms of inconsistencies between what people think and what’s true in reality.

Therefore, testing is about finding actions that would prove the implementation doesn't meet a specification. It has to be clever in how it does this. It has to use previous knowledge of potential problems in implementations, like knowing certain strings are considered security vulnerabilities.

http://www.developsense.com/blog/2009/08/testing-vs-checking/

> Testing techniques differ on how we choose the input (random, "interesting" problem domain values like corner cases etc.), and on how much knowledge about the system under test (SUT) and its execution environment we assume (black/grey/white box), which especially affects how we can define and check correct behavior.

> Simulation involves assumptions and compromises that may not match with the real world. Testing the programmed chip - either independently or integrated onto a circuit board - is a necessary step in verifying your design.

> During the pre-silicon process, engineers test devices in a virtual environment with sophisticated simulation, emulation, and formal verification tools. In contrast, post-silicon validation tests occur on actual devices running at-speed in commercial, real-world system boards using logic analyzer and assertion-based tools.

https://en.wikipedia.org/wiki/Post-silicon_validation

> Many complicated devices indicate their problems only after days or weeks of testing, and they produce a volume of data that would take centuries to reproduce on a simulator.

Functional testing bases it's test cases on a specification. That's exactlywhat I'm doing.

> Functional testing differs from system testing in that functional testing "verifies a program by checking it against ... design document(s) or specification(s)", while system testing "validate[s] a program by checking it against the published user or system requirements" (Kaner, Falk, Nguyen 1999, p. 52).

Functional testing is used to test implementation of specification.

> Functional testing typically involves six steps[citation needed]
>
- The identification of functions that the software is expected to perform
- The creation of input data based on the function's specifications
- The determination of output based on the function's specifications
- The execution of the test case
- The comparison of actual and expected outputs
- To check whether the application works as per the customer need.

Interesting, data specifications! http://deeplearning.net/software/pylearn2/internal/data_specs.html

- How to generate data to use in functional testing.

Data specifications are used to specify how to create input data for functional specification.

Functional testing is exactly what I'm doing haha. Verifying an implementation.

Functional testing is used for verifying an implementation.

IDEA: Whenever an error occurs in your program, it saves it to a database, and learns how to generate a test case for it automatically, or how to modify the specification.

> But properties can also be used for testing programs when you don't want to invest the effort to do a formal proof. QuickCheck is an excelent Haskell library that allows expressing properties about programs and testing them with randomly-generated values.

https://www.fpcomplete.com/user/pbv/an-introduction-to-quickcheck-testing

Define "data specifications" to be human readable examples, as well as a broad class of "example values" that are a "representative set". These include script-injection values, common values, uncommon values, names from other cultures, "randomly generated" values, etc. Therefore, at least for strings, you can have all kinds of values, but instead of using every possible one, you have a specification that selects a "representative sample". How do you know if it is a representative sample?

Sort-of, define "data spaces", basically "data templates". Then specify how many combinations to try.

```
data file name
  {{ repeat 15, character unicode }}

data file name
  {{ select random script injection string }}

data file name
  {{ repeat 15, character letter lower }}
```

So now you have these "data specifications" for generating random output. So if a "pattern" defines all possible patterns that can be generated -- but to generate all of them is computational infeasible -- then these "data specifications" tell you which patterns to actually generate that are good enough. The system must learn which patterns are best. It's sorta similar to how a human only needs to do 3-5 possible paths, while a computer does 200 million in chess. https://twitter.com/lancejpollard/status/642925471722704897

**So data specifications tell you the subsets of patterns to generate based on it's knowledge of reality.**

Essentially, you are defining a **pattern-generation space**. A pattern-generation space that is a good enough sample.

Therefore, level of specificity:

1. Randomly generated inputs (good given time constraints / rapid development)
2. Data specifications (good for implementation)
3. Model checking when it's computationally feasible (complete check, good for spec, not for implementation, unless spec language is implementation)

Say you were modeling file names, and verifying implementation on operating system. Say the operating system had this strange case where it didn't allow `//` double slashes, but that was not in the spec and nobody typically does that anyway. The spec would seem fine for years, until someone tried doing that and an error occured. The only way to discover that in advance would be to test every possible combination of characters on every implementation. Which is computationally infeasible. If a certain random combination of characters (like an easter egg) threw an error on a specific version of an operating system (like if you named a file "easter.egg", and it said "you can name your file anything except that"), you wouldn't know that in advance unless you tried every combination of characters. So we have to discover it by chance. To get better confidence, we can slowly learn clever things to try out in our tests (like checking for common easter eggs). But that won't _guarantee_ correctness. To do that we have to actually test every possible combination on the implementation.

So the problem is, how do you generate a representative sample of patterns that will give high-confidence of correctness of implementation? You have to have a knowledge of the types of things that go wrong with a system, and the types of input the system can receive. And then generate that data. But how do you know if you've _covered_ everything? How can you know what you _haven't covered_?

- You haven't covered every possible combination, which is computationally infeasible for your use case
- You've covered script-injection
- You've covered common foreign names
- You've covered all 16million utf-8 symbols
  + You've created file names with only 1 utf-8 symbol, repeated 8 times
  + You've created file names with a utf-8 symbol, mixed with regular letters and numbers
  + You haven't covered every possible combination of utf-8 symbols.
- You've covered leading/trailing spaces.
- etc.

Try to simulate implementation in "natural environment", so at least normal users don't experience any errors. Hackers might still be able to find vulnerabilities though.

So maybe over time, we have a set of all possible things you can test for a string, and it says the subset of those things you used to test (for example) file names. And this information would get saved into a database so we know we actually ran it.

---

Eventually, maybe, you will end up with a detailed specification of the operating system as a result of these "data specification" tests. It tells you the exact implementation of the hardware. Sorta like reverse engineering I guess, maybe from the results, you can figure out how to reverse-engineer it, and thus automatically create a specification. Then once you have this detailed spec, you don't need to run the manual tests anymore, you just formally prove somehow the relation between the "implementation spec" and the "model spec".

---

> Testing is always a search for information

https://github.com/ligurio/free-software-testing-books/blob/master/free-software-testing-books.md

> A data_specs is a (space, source) pair, where source is an identifier or the data source or sources required (for instance, inputs and targets), and space is an instance of space.Space representing the format of these data (for instance, a vector, a 3D tensor representing an RGB image, or a one-hot vector).

> Random testing of digital circuits : theory and applications / René David.

Combinatorial test generation

> IN 1966, Roth presented the D-algorithm [1] for combinational
test generation which he proved complete,1 meaning that if
a test for a fault exists, the D-algorithm will find it if run to
completion. Since practical test generation algorithms are incomplete, we
call an algorithm more robust if it empirically completes on
more faults using a suitable set of examples.

> A **vulnerability** is a
bug that could potentially be used by an adversary to violate the security policy of a
victim’s computer system. An **exploit**, in contrast, refers to the actual code that uses the
vulnerability to violate the security policy.

>  Therefore, the work of this thesis focuses on the find and on the report
stages of the bug cycle. http://www.eecs.berkeley.edu/Pubs/TechRpts/2009/EECS-2009-157.pdf

https://en.wikipedia.org/wiki/Fuzz_testing

> Fuzz testing or fuzzing is a software testing technique, often automated or semi-automated, that involves providing invalid, unexpected, or random data to the inputs of a computer program.

Fuzz testing and functional testing.

https://en.wikipedia.org/wiki/Random_testing

> File formats and network protocols are the most common targets of fuzz testing.

"interesting inputs"

> Interesting inputs include environment variables, keyboard and mouse events, and sequences of API calls.

https://en.wikipedia.org/wiki/Trust_boundary

Prioritizing things to test.

> For instance, the then branch of the conditional statement “if (x==10) then” has only one in 232 chances of being exercised if x is a randomly chosen 32-bit input value. This intuitively explains why random testing usually provides low code coverage.

> We propose a conceptually simple but different approach of whitebox fuzz testing. This work is inspired by recent advances in systematic dynamic test generation [40, 17]. Starting with a fixed input, our algorithm symbolically executes the program, gathering input constraints from conditional statements encountered along the way. The collected constraints are then systematically negated and solved with a constraint solver, yielding new inputs that exercise different execution paths in the program.

> In theory, systematic dynamic test generation can lead to full program path coverage, giving us program verification [40]. In practice, however, the search is incomplete.

"dynamic test generation"

"active property checking"

> whitebox fuzz testing with active property checking

> Search Based Software Testing (SBST) formulates
testing as an optimisation problem, which can be attacked using
computational search techniques from the field of Search Based
Software Engineering (SBSE).

---

http://cstheory.stackexchange.com/questions/32524/practical-example-how-to-formally-verify-file-name-implementation-from-a-spec/32550#32550
> In general, the technique used is known as "fuzzing". Not all errors are equally likely. Let's consider two hypothetical errors:
>
> System A incorrectly rejects a filename if it contains an | anywhere.
System A incorrectly rejects a filename if it contains a prime number of b characters.
Errors of the second type are much, much rarer, but this is not explained by Computer Science. It's a result from how humans construct software. Fuzzing tries to focus on typical human bugs. In this case, we can predict the following types of errors are more likely:
>
> Very short paths and very long paths may have boundary errors.
Errors near the begin or end of the path are more common than errors at the end
Many characters can be organized into classes which are treated identically, such as lowercase characters. All characters in this class are treated equally, so whether a filename is valid does not depend on a substitution within the class.
Some characters are a priori known to be problematic and each should be treated as a class on its own. (Examples: <>/\&:")
Duplicating characters is more likely to cause bugs the closer they're together.
Fuzzing aims to generate a smaller set of strings by omitting irrelevant variations. We obviously generate an initial set of testcases of all possible lengths (1-200). This checks rule 1. We then expand this set by varying a few characters near both ends. We might try varying the 150th character of the 170 character testcase, but we won't bother with all 254 variations. Nor will we add a variation in the 151th character.

https://www.owasp.org/index.php/Fuzzing
https://en.wikipedia.org/wiki/Fuzz_testing

https://www.screenbeacon.com/signup/product-hunt?ref=producthunt

Black-box model.

> An event-flow model of GUI-based applications for testing http://www.cs.umd.edu/~atif/pubs/MemonSTVR2007.pdf
> GUI Ripping: Reverse Engineering of Graphical User Interfaces for Testing

https://en.wikipedia.org/wiki/Boundary-value_analysis
https://en.wikipedia.org/wiki/Equivalence_partitioning

https://en.wikipedia.org/wiki/Myhill%E2%80%93Nerode_theorem

> Thus, the existence of a finite automaton recognizing L implies that the Myhill–Nerode relation has a finite number of equivalence classes, at most equal to the number of states of the automaton, and the existence of a finite number of equivalence classes implies the existence of an automaton with that many states.

https://en.wikipedia.org/wiki/Equivalence_relation

> Determining the desired correct behaviour for a given input is called the “oracle problem”.

> Oracle automation.

> The satisfiability problem for string con- straints is PSPACE-complete.

> Given a set of constraints, Hampi outputs a string that satisfies all the constraints, or reports that the constraints are unsatisfiable.

> string solvers
