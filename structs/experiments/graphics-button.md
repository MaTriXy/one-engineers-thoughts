
```coffee
texture button
  property label
  rect left(0), right(0), top(0)
    min height, 40
    min width, 100
    stroke solid
      color hsl 120, 89, 90
    fill solid
      color white
  text value(label)
    font
      family arial
      size 12
    color 0xFF0000
    align vertical center
    align horizontal center
    left 10
    right 10
    bottom 2
    top 4

# applies the diff
texture button, on hover
  rect stroke color #FF00FF
  rect fill color 0xFF0562
  text color 0x0000FF

texture button, on down
  text color 0x00FF00

texture button, on disabled
  text color 0xC0C0C0
```

## cleaner

```coffee
texture button
  property label
  use rect
    stroke color hsl 120, 89, 90
    fill color white
    min height 40
    min width 100
    right 0
    left 0
    top 0
  use text
    align horizontal center
    align vertical center
    font family arial
    font size 12
    value label
    color 0xFF0000
    bottom 2
    right 10
    left 10
    top 4
```

```css
/** assuming total reset */
.button {
  border: 1px solid hsl(120, 89, 90);
  display: inline-block; /* how to figure this out? */
  background: white;
  min-height: 40px;
  max-height: 100px;
  text-align: center;
  display: table-cell;
}
```

```html
<button class="button">label</button>
```

## just text

```coffee
component button
  property label
  state disabled
  state down
  state over
  state up
  action click
    action press
    action release

texture button
  property label
  use text
    align horizontal center
    align vertical center
    font family helvetica
    font size 12
    value label
    color black
```
```css
/** assuming total reset */
.button {
  font-family: helvetica;
  display: table-cell;
  text-align: center;
  font-size: 12px;
  color: black;
}
```

## separated

```coffee
element button
  geometry
    rect
      min height 40
      min width 100
      right 0
      left 0
      top 0
    text
      align horizontal center
      align vertical center
      bottom 2
      right 10
      left 10
      top 4
  texture
    rect
      stroke color hsl 120, 89, 90
      fill color white
    text
      font family arial
      font size 12
      value label
      color 0xFF0000
```

```css
/** assuming total reset */
.button {
  border: 1px solid hsl(120, 89, 90);
  display: inline-block; /* how to figure this out? */
  background: white;
  min-height: 40px;
  max-height: 100px;
  text-align: center;
  display: table-cell;
}
```

```html
<button class="button">label</button>
```

## favorite

```coffee
element button
  property label
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
