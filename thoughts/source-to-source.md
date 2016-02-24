
Problem: Reimplement functionality written in one language, in another language. Using the best practices, or maybe new best practices so the code is simple to read and understand. Visual simplicity, clean and organized, using the right abstractions.

So have to figure out what the functionality is of the code, versus the exact details of the execution. Just need to reimplement the functionality/features, not the specific state changes.

- Need a mental map of the functionality
- Need to figure out how to implement that functionality in another language, using patterns that are easy to read. If a library doesn't exist for something, then implement a module for it.
- How does this work?

1. Understand what the code is doing _at a high-level_. What does that mean exactly?
2. Reimplement that functionality in another language. Know how to implement certain features in the language, so it is easy to understand. Need to create a system for each type of thing you will do. So how to handle strings in that system in a standard way. How to handle files. Etc. So it needs to figure out a simple way to solve certain problems. Build libraries, have pre-solved common cases, so you already know how to do it.

So it's like, it doesn't need to go down the change-pattern level. That is only if you want to compile it in the most optimal way possible, that is not human readable, but is most optimal. It compiles it to maximally optimized, minimally readable structure, that almost requires its own hardward. The other way to compile it is to "figure out" the behavior of the code you're trying to reimplement, then finding standard (easy to understand and reason about for a human) patterns for implementing specific pieces of behavior in the code, then implementing the behavior in the target language using those patterns.

So first step is figuring out a high-level description of the functionality. A specification so-to-speak. Separating performance from functionality. Two things can do the same thing, but have different performance or implementation. How do you decide then that the two features are similar? How do you decide what you want?
