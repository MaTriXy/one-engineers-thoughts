
## problem: how do you find stuff we've already done in the repos?

## problem: how to start working on a new feature

- figure out environment setup

## problem: figure out how to work on a specific code base

- find repo
- clone repo
- build
  - figure out build process
    - look for certain files
      - Makefile
- figure out if you need to run a server or have anything else running
  - look in makefile
  - look in readme for instructions
  - look in dependencies for known deps, which give you clues about what to do
- potentially read readme if you can't tell yet how it works
- configure dev environment
  - figure out how to debug code
  - figure out reasonably productive feature dev workflow, given
- figure out how to test
  - try running the tests
  - to validate the test system works and isn't lying, try changing an existing test, to see if it fails. then you know for sure that it will work when you make changes

## problem: how to start actually writing code?

- look at the folder structure
  - if it looks familiar, then look for the pattern that is being used to name the folders and structure them
    - follow the pattern, and create your folders and files
- copy/paste code from a similar looking file if you know there is supposed to be a structure to the code
  - remove the unrelated code to what you're doing
    - keep the generic stuff, the stuff that could be templated
  - if you don't already know the structure of the code, then read through the code and determine the structure

## problem: how do you build with makefile

- look for common commands (like `build`)
- look for comments to see that your intuitions about that command do what you'd expect (build the program)
- side problem:
  - understand the full structure of the specific repo's Makefile
