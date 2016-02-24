
```coffee
section 2d
  type object 2d
    property area(interaction), type geometry
    # for optimization, you convert this geometry to a rectangle so it's easier to test against.
    property area(bounds), type geometry
    property transform, type matrix
    property visible, type boolean
    property rotation, type number
    property position, type point
    property scale, type number
    property pivot, type point
    property dimensions
    property height, type number
    property width, type number

  type texture 2d
    property width
    property height
    property frame

  type geometry 2d
    desc A polygon.

  type rectangle 2d
    desc A set of 4 2d points.

  type point 2d
    desc A set of 2 integers.

  type matrix 2d

  # http://en.wikipedia.org/wiki/Graphical_control_element
  # http://en.wikipedia.org/wiki/Graphical_user_interface_elements
  type element 2d
    property properties, set property
    property actions, set action
    property geometry, type geometry
    property texture, type texture
    # layout occurs from the parent to the children. how should it be specified?

section 3d
  type object 3d

  type point 3d
    desc A set of 3 integers

alias skin, texture
```
