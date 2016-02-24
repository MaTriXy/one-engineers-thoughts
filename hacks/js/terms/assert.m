
# this will be translated into actions in js: asserts...call...asserts
action test, in js
  input action
  input assertions(before), pattern assert
  input assertions(after), pattern assert
  # this is where this action, test, needs to be implemented in js,
  # and the implementation is below, which can be translated into lower-level in js
  call assertion, for assertion, in assertions(before)
  call action # has no parameters
  call assertion, for assertion, in assertions(after)

# need to generate the test assertions from the problem before/after states
# assertion is a relation that must hold in a frame
# therefore, it is some kind of constraint
