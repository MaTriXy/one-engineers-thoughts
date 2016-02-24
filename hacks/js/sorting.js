
algorithm sort collection string
  input a
  input b
  input direction # sortingMultiplier * (a.name.toLowerCase() < b.name.toLowerCase() ? -1 : 1);
  javascript
    a.toLowerCase() < b.toLowerCase()
      ? -1
      : 1

algorithm sort collection boolean
  input a
  input b
  javascript
    a - b

algorithm sort collection date
  input a
  input b
  javascript
    a - b

algorithm sort collection any
  input a
  input b
  javascript
    a < b
      ? -1
      : 1
