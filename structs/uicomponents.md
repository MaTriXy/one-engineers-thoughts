
```coffee
component button
  property label

component form
  property submit

component section
  property title

component tabs
  property tabs, list tab

component tab
  property selected
  property label
```

```coffee
font title
  family helvetica
  case caps

font input
```

```coffee
element sheet
  element background, type rect
    geometry
      height full
      width full

  element header, type rect # this just groups layout calculations
    geometry
      space right 60
      space left 60
      width full

    texture
      stroke solid
        color medium
        thickness 1

    element title, type text
      geometry
        align center horizontal
        align center vertical
        space bottom 30
        space top 30
      texture
        color medium
        font title

  element body
    geometry
      space right 60
      space left 60
      space top 30

    element tabs
      geometry
        width 200
        space right 30

      element tab
        property label
        property icon
        
        element icon, type icon, value icon
          geometry
            align center vertical
            space right 10
            space left 10
        
        element label, type text, value label
          geometry
            align center vertical
            space left 10

        when selected
          element arrow, type arrow
            geometry
              align center vertical
              space right 10
              space left 10

    element list
      geometry
        space left 30

      element input, type input
        element icon
          property prompt

          value lens, when searching
          value plus, when creating

          geometry
            align center vertical, equal to element tab icon
            space bottom 10

          texture
            font input

      element row
        geometry
          width full
          height 80

        element rect
          height full
          width full
          texture
            stroke bottom
              thickness 1
              color medium

        element text
          space left 30
          align center vertical
```

```coffee
element button
  element rectangle
    geometry
      min height 40
      min width 100
      right 0
      left 0
      top 0

    texture
      stroke color hsl 120, 89, 90
      fill color white

  element text
    assign value, label

    geometry
      align horizontal center
      align vertical center
      bottom 2
      right 10
      left 10
      top 4

    texture
      font family arial
      font size 12
      color 0xFF0000
```
