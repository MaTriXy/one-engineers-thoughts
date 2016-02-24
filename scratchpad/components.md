
## Experiments

> This should start unselected like the two on the right

```
page setup warehouse, step one
  assume this, element in set component tile
  should start, this, as unselected
    like the(two), on(the(right))
```

> Only show this button if one of them is selected

```
component button, on page setup warehouse, step one
  assume this, button
  assume them
  only show, this, if is selected, one of them
```

There needs to be a language of all the knowledge. This is the model language.
It allows us to start at a new level of abstraction.

> This should link to the contact page

```
assume this, component link
should link, this, to the contact page
```

> Should take you back to the warehouses page

```
component button cancel
  should take you, back, to the warehouses page
```

That's talking about it like it's a process, so we can experience it as a process. Rather than stating the facts, which makes it harder for us to interpret efficiently. So really these are said as processes, which is better for human understanding than the raw facts, because we already have the models in our head.

```
component button cancel
  should take you, to the warehouses page

component button cancel
  should transition to warehouses page

component button cancel
  should transition to page warehouse

# should is assuming the button click implicitly.

# definition
component button cancel
  action click

# usage
button cancel
  on click, transition to page warehouse
```

> This should link to the guides Vince made about setting up permissions for Redshift.

This is assuming default functionality of a link is on click, and that I know that.

```
setup content
  title What type of warehouse do you want to add?
  description You can learn how to setup your own warehouse using our guides. [learn]
    graphics
      geometry
        space below, 20
        space above, 5
  link learn, Learn more # an action
    /docs/learn
  tiles
    tile redshift # starting to get into data
      label Amazon Redshift # creates a generic record for it, for dummy testing purposes
      icon red containers
    tile postgres
      icon blue elephant
      label Postgres
    tile s3
      icon 6 yellow cubes
      label S3
  help Can’t see the warehouse you’re using? [request].
  link request, Request it
    /databases/request
  button connect
    only visible, when is selected, tile
    space above, 30
  graphics
    texture
      stroke inside, width 1, color CCBEAD
      fill white
    geometry
      width 580
      space 40
```

I should be able to know the fonts specifically too.

- data
- texture
- geometry
- text

So that above code example is not the actual definition of the components, it's just the layout and usage.
This means, the layering is not necessarily done here. That is part of a different phase maybe.

Then you can refactor it to make it even more conceptually easy for the next person.
Ultimately, there is a continuous refinement process to make code easier for new people to understand.

```
setup content
  title What type of warehouse do you want to add?
  description You can learn how to setup your own warehouse using our guides. [learn]
    geometry
      space below, 20
      space above, 5
  choices
    choice redshift # starting to get into data
      label Amazon Redshift # creates a generic record for it, for dummy testing purposes
      icon red containers
    choice postgres
      icon blue elephant
      label Postgres
    choice s3
      icon 6 yellow cubes
      label S3
  button connect
    only visible, when is selected, tile
  help Can’t see the warehouse you’re using? [request].
  link learn, Learn more # an action
    /docs/learn
  link request, Request it
    /databases/request
  texture
    stroke inside, width 1, color CCBEAD
    fill white
  geometry
    width 580
    space 40
```

No but when you start doing that, it starts losing it's relation to the design. You want the text to somewhat mimic the structure of the design, at first. So you can directly transcribe it.

```
component setup
  component title, font size, x # here you can generically define styles
  component description, font 2
  component tiles, pattern set tile
    space 5 # definition of 3 item-per-row grid?
      when first, on right
      when last, on left
      when middle
        on left
        on right
  component help
  component button connect

component tile
  component icon
  component label
  texture stroke
    width 1
  texture fill
    color white

# for a specific action
# here is a specific thing, where the data is given at the class level,
# but it's still a class. so the spectrum of transformations, not class -> instance.
component button connect
  label Connect
  icon arrow right
  action click # doesn't have a specific action implementation, because it can be many.

# this is in relation to usage by a specific intelligent agent.
# whereas component button connect is a more general model, independent of agents.
# this is sort of what is meant by "instance" vs. "class"
button connect, on click, go to home page
```

This is the problem with subclassing. You create a subclass for each new piece of data. That limits you in how you can model things.

---


# definition
component setup
  component timeline
  component content
  component button cancel

# usage
setup
  button cancel
    on click, transition to warehouses page
  timeline step 1
  content step 1

element setup
  texture
    use 10px, for padding
  structure

setup
  button cancel
    space 20 # 20px space both sides
    font weight, booksc
    font size, 18
    font color, light brown # color picker should come, so I can quickly assign the right color, based on name, or example usage, like clicking the one from a screen that matches

# but since we have button components, we don't have to go so low level:

setup
  button cancel
    space 20
    modifier secondary

page
  background #FCFAF7

---

A component is without specific data. An element is with specific data. This is the relation between component and element.

```
relation component, element
  not has data
  has data
```

But it's like, there is a gradual containing of data, sorta thing. There is a spectrum. Whereas class -> instance, there is no spectrum. There is a slow transformation into, which is over a spectrum. And you want to be able to quickly see this transformation, so it logically makes sense.

An instance is used in solving a problem. A solution to a problem may be purely a model in memory, never used however. Only when it is used is it an "instance", or an "element".

```
component steps, pattern list step
  data steps # says the first empty argument maybe?
  space 250
    between middle, and first
    between middle, and last
  component line from(step this), to(step next), starting(from first)
    texture color, light brown

component step, pattern circle
  data current
  texture fill, color(green), when current

# generate steps components, from data
steps from(data)
```

```
component step, pattern circle
  data current
  view fill
    when current, color green
    when otherwise, color light brown
```

Components are visual things. Resources are visible and invisible things. They are the data used to generate the environment from the components.

Resources + Components -> Environment.
