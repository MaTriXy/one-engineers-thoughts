
```coffee
# this creates both sidebar and main area
line vertical, left 200px
  fill left
    color dark
  fill right
    color light
```

# i think you might want to start it like this, but then change it into a more logical form.
# or, is there a way to leave it like this, and say it in logical form from this?

```coffee
# this creates both sidebar and main area
# this is just like defining the mockups or wireframes
rectangle page
  rectangle sidebar
    height 100%
    width 200px
    fill
      color dark
  rectangle content
    fill
      color light

rectangle run history
  text heading
    space left, 20px
    space top, 30px
    space bottom, 20px
```

```coffee
example rectangle run history
  rectangle run history
    heading Run History
```

```coffee
rectangle run history table
  input columns, pattern set column
  input rows, pattern set row
  rectangle head
    space left, 10px
    space right, 10px
    rectangle column, for column, in columns
      fill none
      min space(between), 10px
      text label, from column
        font caps small
        space bottom, 10px
        space top, 10px
  rectangle body
    rectangle row, for row, in rows
      rectangle cell, for cell, in row
        width cell, width column, matching position, of cell

example
  rectangle run history table
    with columns, 1, 2, 3
    with rows, a, b, c
```

```coffee
# assume components are rectangles?
component page
  component sidebar
    component header workspace
    component links menu
    component links docs
    component links account
  component content

# this defines a row component, since you have to have many subclasses of rows for your specific cases
# this is independent of the look, though it assumes basic row logical structure
# use this to create the data specification
# the `rectangle` then defines how the row looks
row run history table
  cell run, from run_id # these define the fields of data given to the row.
  cell source, from project_name
  cell started, from created_at
    format time ago
  cell duration
    format 00:00
  cell status, from status
    format title

component row, for table
  input data # used to construct the row cells
  input cells
```

```coffee
component run history
  text Run History
    space left, 20px
    space top, 30px
    space bottom, 20px
```

```coffee
style page
  fill
    color green
```

```coffee
# pattern generator for graphics
# essentially this is just a grammar for generating graphics
# this is just the layout/geometry/shape/form of the graphics, not the texture/color/finish/paint
rectangle table
  input columns, pattern set column
  input rows, pattern set row
  rectangle head
    space left, 10px
    space right, 10px
    rectangle column, for column, in columns
      min space(between), 10px
      text label, from column
        space bottom, 10px
        space top, 10px
  rectangle body
    rectangle row, for row, in rows
      rectangle cell, for cell, in row
        width cell, width column, matching position, of cell

component run history table
  shape rectangle table

row run history table
  cell run, from run_id # these define the fields of data given to the row.
  cell source, from project_name
  cell started, from created_at
    format time ago
  cell duration
    format 00:00
  cell status, from status
    format title

example
  let columns
    column run_id
    column source
    column started
  let rows
    record
      value run_id, 123
      value source, 'asdf'
      value started, 3 weeks ago # temporal expression
  let history, rectangle run history table

  draw
    history with rows, columns
```

---

```coffee
wireframe table
  # data or structure inputs
  variable columns, pattern set column
  variable rows, pattern set row
  wireframe head
    space left, 10px
    space right, 10px
    wireframe column, for column, in columns
      min space(between), 10px
      text label, from column
        space bottom, 10px
        space top, 10px
  wireframe body
    wireframe row, for row, in rows
      wireframe cell, for cell, in row
        width cell, width column, matching position, of cell

mockup table
  # visuals data/input json
  using wireframe table
  mockup head
    mockup column
      mockup label
        font caps small
        size 14px
  mockup body
    mockup row
      mockup cell

# this is the actual prototype, with the actions
component table
  using mockup table

component run history
  variable runs, pattern set run
  table run history
    with rows, from runs

row run history table
  cell run, from run_id
  cell source, from project_name
  cell started, from created_at
    format time ago
  cell duration
    format 00:00
  cell status, from status
    format title
  action click
    show run

example
  let columns
    column run_id
    column source
    column started
  let rows
    record
      value run_id, 123
      value source, 'asdf'
      value started, 3 weeks ago # temporal expression
  let history, rectangle run history table

  draw
    history with rows, columns
```
