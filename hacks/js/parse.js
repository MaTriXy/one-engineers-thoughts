
/**
 * Expose `parse`.
 */

module.exports = parse;

/**
 * Parse `.m` file into javascript string.
 */

function parse(string) {
  var result = []
  var indent = 0
  var prev = 'space'
  var characters = string.split('')
  var n = characters.length - 1
  var i = 0

  while (i++ < n) {
    var character = characters[i]
    if (character.match(/[a-z0-9]/)) {
      switch (prev) {
        case 'space':
          down()
          quote()
          break
      }
      current()
      prev = 'character'
    }
    else if (character.match(/\n/)) {
      switch (prev) {
        case 'character':
          quote()
          break
      }
      while (indent) up()
      comma()
      line()
      var j = 0
      // find indentation
      while (characters[j + i + 1] === ' ') {
        j++
      }
      var level = j / 2
      while (level--) down()
      prev = 'space'
    } else if (character == ',') {
      switch (prev) {
        case 'character':
          quote()
          up()
          comma()
          break
      }
      prev = 'comma'
    } else if (' ' == character) {
      switch (prev) {
        case 'character':
          quote()
          comma()
          space()
          break
      }
      prev = 'space'
    }

    function current() {
      push(character)
    }

    function down() {
      indent++
      push('[ ')
    }

    function up() {
      indent--
      push(' ]')
    }

    function quote() {
      push("'")
    }

    function comma() {
      push(',')
    }

    function space() {
      push(' ')
    }

    function line() {
      push('\n  ')
    }

    function push(value) {
      result.push(value)
    }
  }

  var lines = result.join('').trim().replace(/,$/, '') // cleanup
  return "[\n  " + lines + "\n  ]"
}

