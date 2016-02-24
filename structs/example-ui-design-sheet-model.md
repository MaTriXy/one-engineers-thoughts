
```coffee
component editor event

component header, in editor event
  property title, for title
    case title
  property enabled, for toggle
  property date(last), for status
    tense relative past
  component title
  component toggle
  component icon remove
  component status
    note Can tell it's should be called status based on previous discussions, and the fact that it says "Last seen 2 hours ago". Could also be called "last seen"

component tabs, in editor event

component tab details, in tabs editor event
  property title
    case caps
  property active

component tab properties, in tabs editor event
component tab filters, in tabs editor event

component graph, in event editor

component notes, in editor event, in mode edit
  property title, for title
    case caps
  property text, for text
    case normal
  component title
  component text
    border
      color green
      blur about 5px
    font
      color darker
  component hint
    font
      color lighter
  component button save
    padding todo
    background  
      color green
    border
      radius todo # need to measure
    font
      color lightest
    text
      align vertical center
      align horizontal center

  component button cancel
    padding todo
    border
      radius todo # need to measure
    background
      color white
    font
      color green
    text
      align vertical center
      align horizontal center

component notes, in editor event, in mode view
  component title
  component link edit
  component text
```
