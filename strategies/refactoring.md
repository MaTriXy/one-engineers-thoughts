
```
refactoring patterns
automated refactoring

function refactoring

- keep the input output for "anything you can think of" the same before/after change
- try to simplify/standardize common expressions

source http://refactoring.com/catalog/
source http://www.cs.usfca.edu/~parrt/course/601/lectures/refactoring/refactoring.html

---

how do i actually refactor?

definition refactoring
  A sequence of program transformations that result in an isomorphism for all "public" features.
  A process of iterative refinement

ideal state
  simple
  readable
  extendable
  logical
  reusable

prerequisite have an ideal model of each structure of code in your head

task refactor
  task normalize code syntax
    constraint isomorphic
    comment Helps a lot in finding patterns, you have less to iterate through. Fewer patterns.

  task figure out the code's api

  task find code entry points
    prereq know what your goals are with the program

    task follow *each* entry point and explore where it goes
      task identify objects
      task identify actions

task refactor
  task refactor internal functionality
    constraint keep external functionality the same
    task identify logical pieces, make them most logical
  task refactor presentation (visuals)

task don't change any functionality, only organization
  task get a sense of the flow of the initial code

task identify the main objects being passed around
  task reduce the number of objects
  task create clear relationships between objects

task make each file have one main purpose (solve one main problem)
  assertion not many similar structures in a single file

task aggregate files into parent file

task simplify user api

task identify the changes to the objects being passed around

task identify the different tasks that are being done in the code

task generalize the tasks
  task find a general pattern to the tasks
  task find a simpler pattern to the tasks

task normalize implementations
  task normalize for loops
  task normalize string construction
  task normalize function argument organization

goal changes should not require editing multiple places, only one

constraint keep the code dry
constraint keep functions small
constraint make functions single-purpose

task refactor function
  task group variables into chunks
    task sort them by line length
    task name them so they have similar names
```
