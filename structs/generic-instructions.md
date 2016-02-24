
function main
instruction load # get
instruction store # set
instruction end

example
  function main
    load 65
    load $A000 # video memory upper left corner
    store x
