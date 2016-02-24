In order for something to exist, it must be created.

```coffee
goal project sheet exists
task create project sheet

goal component exists
task create component

goal componnent has beautiful visual design
task implement design from sketch

goal understands design structure
task study design features

goal has a clear plan, can visualize it
task plan implementation approach

goal short-interval deliverables exist
task divide implementation strategy into deliverable chunks

goal have a list of what to create
task identify artifacts to be created

goal product has a new feature (result)
task implement plan

goal a more accurate plan exists
task adapt plan during implementation
```

The goal of learning like this is to know enough to create a plan

K(p) = min amount of knowledge required to create a plan for action

K(P) \subset K(F) knowledge about a feature

```coffee
implement design from sketch
  process
    search
      open file
        locate file
        download sketch
      find relevant part of file
    learn
      study design features
        identify shapes
        identify groups of functionality (potential components)
    plan
      plan implementation approach/strategy
      identify possible paths
      divide into deliverable chunks
      identify artifacts to be created
      chose path
    implement
      implement plan (execute all actions. this is figured out in the plan stage)
      adapt Adjust plan during implementation
    evaluate
      get feedback on process and result (output)
```

In the ideal case, your implementation (external actions) doesn't have to be modified at runtime. This would be the fastest. But, it should still have the ability to adapt anyway. Plan == action.

```coffee
plan implementation
  visualize end result
  divide into potential deliverable chunks
    optimize for most deliverable chunks, given amount of time people spend evaluating. dont do too much or too little, just right
    use understanding of ideal deliverables
      minimize potential problems experienced when people evaluate
        limit scope
        limit expectations
      maximize usefulness given scope
    sequence deliverables
    identify first minimum viable deliverable, based on your knowledge/experience
    identify final set of deliveables

definition deliverable
  A deliverable is a piece of usable product by someone else.

definition deliver
  To deliver is to give to someone else.
```

Ideal deliverable is:

- complete
- coherent
- everything works
- can perform expected set of actions

So, might have to make things you don't need in the end, but it will _feel_ better to everyone evaluating. Feels complete. If some links work but others don't, then it feels broken and incomplete. So just hide/remove those links for now (limit/remove potential experienced problems).

Instead of this as the tasks:

```coffee
build section
  build page
    build sheet
```

Make it about deliverables at the top level:

```coffee
deliver product section
  deliver project nav
  deliver project settings sheet
  deliver invite sheet
  deliver remove project dialog
```

Include those sheets/dialogs in popup as they get delivered. This way the popup doesn't include broken links, so you don't experience unexpected problems.

```coffee
# final deliverables

deliver nav and tracking plan ui
  deliver functionality
deliver project settings sheet, so you can use it fully
  deliver ui
  deliver functionality
deliver invite sheet
  deliver ui
  deliver functionality
deliver remove project
  deliver ui
  deliver functionality
deliver debugger page
```

Whether you deliver ui or functionality in an order or in parallel depends on how hard they are to do with your given tools. UI might be quicker, and it's something people see, but if you have a framework like Rails, maybe functionality is easier first. Either way, make sure each deliver is complete and coherent, minimizing problems.

```coffee
action engineer
  process
    loop
      learn
      plan
      implement / make
      deliver
      evaluate
```

```
Plan = <D1, ..., Dn>
```

A plan should be a set of deliverables, sub end-states.

Deliverables are set of planned, usable pieces of product. A plan has a set of deliverables at the top level of organization. Then you must plan out how to implement each deliverable.

Planning occurs before every action to some degree.

```coffee
build feature
  build ui
  build functionality
```

Perhaps that is a general loop for building a feature. But it's different for each context and constraint, so there's a general "build feature", but specific algorithms for each decision you have to make. So it's like, there are a set of decisions and rules for building it.

```coffee
action create plan
  goal maximize productive feedback
```

By maximizing productive feedback, there's two types of levels:

- Others (via deliverables) where the feedback is from internal users or customers
- Yourself, where the feedback is the feeling that you're being productive and making progress (positive reinforcement), while also still getting closer to the goal of having the deliverable.

> Note: Reason not to use `goal` as word. You say "goal of creating a deliverable", when "creating" is a solution (action). So goals are too tightly associated with specific solutions.

Unproductive feedback is where you feel like your making progress toward the new world, but you're actually either doing nothing, or being productive on something else.

Constraints for good solution/task, to get to single deliverable:

```coffee
maximize flow
maximize motivation
minimize time / maximize speed
minimize revisiting things more than once
reach goal
```

```coffee
build project settings page
  copy code from project settings page
```

That's too big of a chunk, and won't provide rapid enough feedback.

```coffee
finish project settings sheet
  evaluate missing styles
    list ui styles / describe styles
  test functionality
    list functionality
```

That is, remember/learn what's working and what's left to do. That is, understand/remember features.

So then, you should have a picture of what the end state looks like, then you can say when each has been made, and check it off the list. So this is like what the end state would start looking like:

```coffee
list graphic elements
  back button
  title
  name field
    placeholder x
```

```coffee
create list elements
  loop refine
    create list
    compare with visual design
    interpret to determine simplicity of components
      imagine what others with no context would think
  output tree of elements

create list of actions
  loop refine
    visit components
      create list of actions for component
    interpret/organize across all components
    standardize action names so they are simple
  output set of actions for each element

create list of styles
  include geometry
  include texture
  loop
    visit components
      create styles
    interpret
    organize
    simplify
    standardize names/conventions
  output style for all components written down
```

Then, given the set of all elements + styles + actions, find a way to implement all that to maximize your flow and speed of creating deliverable. Could be many ways and depends on your knowledge, comfort in each area, technology, etc.

- do all css before any action?
- do all functionality before UI?

So, whatever gives most positive reinforcement for a specific situation.

So then it's like, the main problem is transform list of elements+actions+styles into a deliverable, or:

```
<E, A, S> -> D
```

where the deliverable D is native code (HTML/CSS/JS). This is the main part of our job, and it can be totally automated out!

```coffee
transform elements into native html/css
  loop until deliverable quality
    implement component
      check off list when complete
    implement styles
      check off list when complete
    implement actions
      check off list when complete
```

Now the next thing is about implementing the component, which is writing JavaScript, HTML, and CSS.
