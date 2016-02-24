
```coffee
# all tasks broken into assembly line for optimization

task write ui tests
  task identify pages
  task identify actions for each page
  task identify tasks to complete for each action
  task identify tasks to get to initial state
  task identify observations for each action
  task identify initial data for each action

# generic task to complete a single test

task write ui test
  task identify page
  task identify actions
    task identify tasks to complete
    task identify task to get to initial state
    task identify observations
    task identify initial data
    task identify real values for initial data
    task plug in changed values
  task transform to natural language
  task determine order of tests

The question is, how do you go about efficiently modeling these things? Divide them into separate tasks.
```
