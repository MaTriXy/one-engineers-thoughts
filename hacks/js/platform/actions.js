
import assert from 'assert'
import test from 'tape'

export function assert(relation, expected, returned) {
  assert[relation](expected, returned)
}

export function test(name, fn) {
  test(name, fn)
}
