
```coffee
# as you're typing this, you see it displayed in the sketch window
mockup button
  shape body, pattern rectangle
  text label
  space between body, and label
    value 8px, on top, bottom
    value 10px, on left, right

# then you move on to visual design

visuals button
  using mockup button # means you are working off of this "layer" so to speak, but aren't messing with it.
  color body
    fill red
    stroke black
  color label
```
