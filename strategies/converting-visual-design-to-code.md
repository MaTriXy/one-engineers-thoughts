
```coffee
observations
  i see a sheet
    justification the before/after screenshot show the sheet and overlay as the difference
  i see
    "Sign up" text
  next, i see
    a highlighted box
    look up and see a label
    next see a cursor (validate hypothesis that it's a textarea)
    read description below (assume it's a description)
    see save button (seems like a button b/c it's visual qualities)
      quality boxy
      quality horiztonal
      quality short label
    see cancel button (assume it's a button since it's visual structure is similar to save)
  next, i see
    another "Notes" label, the same as the other one
    see "click to edit" next to it. so seems like this is _not_ an edit screen
    can imagine that the text below is the rendered version of what you write in text area
    so, see a very plausible relation between the two visual elements
  next, i see
    "details" label that looks sort of like a tab
      justification green bar below commonly means it's selected, so he's probably using that pattern
      justification details text is darker than text on same horizontal plane
      justification there are other labels in the same font on horizontal plane
      justification other labels are lighter font, so they look unselected in comparison
      summary comparing details with other 2 labels, qualities distinguish them to "selected" and "unselected"
      prereq i have experienced many tabs before
  next, i see
    graph section has a different background
    conclusion sheet is divided vertically into sections
    analyze each visual section (based on different backgrounds)
      how did the designer try to logically separate them?
        part header
        part graph
        unsure tabs in between, visually they don't fit nicely, so skipping
        decision maybe tabs change everything except header
        part notes
          except from previous observation/reasoning, that 2 screens of the notes are shown,
            assume just 1 screen at a time is shown
        conclude
          tabs change everything below the headers

functionality
  reasoning
    i know about tabs already, so assume you click the tabs and the selected item is highlighted (or visually separated from the other tabs)
  reasoning
    when you click the "click to edit" link, it takes you to the edit textarea
    it copies text in there from the data

componentize
  reasoning principle Think about how different groupings could be used in different contexts
  principle Think about, if you wanted to hide/show a feature, what would that component notes section
    includes label
      reason This is the title for the group.
    includes text
      reason This is the content.
    includes hint
      reason This is the content hint.
    includes buttons
      reason This is how you take action on the content.
  component header
    # something i just think "this might be a grouping", and try to fit things into that grouping, see if it fits into an existing model
    include label
      reason It's the sheet title
    include toggle
      reason It controls the whole sheet
    include dot and text
      reason Phrasing suggests it's related to whole event
      reason Imagine changing tabs below, would it make sense for that thing to still be there? If yes, then it is reasonable to include it in the header
    include trashcan
      reason It acts globally on the sheet
      reason It's in the header section
        but padding doesn't fit into scheme, even still it makes sense
        but it could also be a separate thing

round 1
  task identify visual pieces
    note By this point, i don't clearly have in my mind an idea of the hierarchical structure, or grouping, just pieces, and relations
round 2
  task imagine how each piece may be used
    note Still don't know logical structure, but getting a sense of the functionality by imagining how i would use it
round 3
  task determine functionality
    note By this point, i have a basic map of the functionality, and a general sense of the relations between the components
  still don't have a clear model of the structure
round 4
  task classify initial component structure / grouping.
    note Hypothesize a component that fits the parts, then see if each part can be placed into one of the "property slots" for that component. At the end, you have a basic model, but not sure if it's the best model.
    output set of components with name/type
round 5
  task create model components
    task name each component clearly
  note Vertically organize initial model statements similar to vertical organization of ui design
  note Skip modeling children if you don't want to handle that part yet.
  example output
    component editor event

    component header, in editor event

    component tabs, in editor event

    component tab details, in tabs editor event
    component tab properties, in tabs editor event
    component tab filters, in tabs editor event

    component graph, in event

    component notes, in editor event, in mode edit
      component title
      component text
      component hint
      component button save
      component button cancel

    component notes, in editor event, in mode view
      component title
      component link edit
      component text
round 6
  task analyze component model you just came up with
    method Find ways to simplify it.
    method Imagine if you never saw the visual UI, just the model, could you create a similar UI from it? Or, if you saw these two things together for the first time, would you come to the same conclusion?
    method Name parts of different components that have similar purpose, the same thing (or find a new name that can be shared == concept refining). For example, if one component used `header` while the other `title`, maybe just change them both to `title`.
  task refine hierarchical relations between components
round 7
  task identify visual properties of components
    task identify relative font colors
  task note things that seem like you need to measure later, not sure about

other tasks
  task identify subtle different visual states (focus colors, selected colors, etc.) these are basically other "properties" of the components
    note Not sure when to do this one.
  task identify pieces of data that will be rendered in each component/property slot.
  task identify underlying data model representation that is most simple
    description Set of properties to be used in the component tree
    task Identify lowest-level form of data in programming language (like ISOdate)
    task Identify transformation from low-level to high-level format
      example "Last seen 2 hours ago" is transformation from now and date.
      example "Details" label can be titlecased (accessibility, or how you would want to see it without any styles), and through CSS transform to all uppercase.
      note All these sorts of things are generic "formatting" transformations


thoughts
  x if you can't tell what something is immediately, the it's unintuitive. like design elements, you can't easily tell
  idea of "property slots"
```
