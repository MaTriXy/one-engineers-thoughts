
A platform has an api (a set of actions), and a set of resources you take as assumptions and build upon. You assume their existence in verification. You can model their properties.

When you compile some code, you have to specify for which platform. This tells it what resources and actions are already defined, so it doesn't have to resort to more primitive forms. (Like assuming `print` exists, vs. modeling it again from scratch).

This means, all computational models assume a platform. Some questions are:

- What do you model of a platform?
- How do you pick a platform automatically?
- If you define some action that is lower level than something a platform defines, what do you do?
  - Does it error?
  - Does it somehow replace your lower-level constructs with higher level ones?
- How do you write "platform independent" code, if on some platforms you manually manage memory, while on others you dont?
