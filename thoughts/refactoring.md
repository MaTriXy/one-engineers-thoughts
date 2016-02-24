
When refactoring javascript code, I first start looking for, how can i only use 1 module for a set of actions in this code? Where would I place the module code, so I can cut the code out of the large file, and put it into a new module, naming it that same action, and cleaning up passing in parameters and renaming variables when I'm done.

1. figure out all the actions that are being performed in the code
2. group the actions into sets of similar actions, that *could* be grouped under a module (modal logic)
3. think about how you would use those modules (simpler than writing it down and visualizing, basically a first "simulation" of the final thing). Fix any obvious errors, rename stuff so it makes more sense, normalize what you name things. Ask, do the concepts make sense for a newcomer learning to code.
4. create the modules
5. cut the code out and paste into a module
  - create a wrapping function for it in the module
    - name it the action
    - go back to previous file
      - "use" that method to make sure it is easy to understand in practice
        - analyze it's visual simplicity
        - ask "does this make sense"
        - if it doesn't, then try renaming for a while, see if you can still "get it to work", given the lack of an ideal solution in the moment.
        - if it does
          - go back to the module, and create the parameters
    - use the parameters in the previous files
    - repeat, for each chunk of code.
    - execute after each chunk, so you can verify that your changes maintain the previous behavior.
      - this is why having tests is important.
        - if you have a complete suite of tests, then you can test do this "refactoring" copy-paste, and verify that the original behavior is maintained.

That is how you refactor code automatically, so it is easier to understand and more modular.
