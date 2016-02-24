
# https://github.com/lehmannro/assert.sh/blob/master/assert.sh
# used to get BASH_ARGC array, containing arguments in stack from functions.
shopt -s extdebug

assert_equal() {
  local expected=$1
  local returned=$2
  if [[ $returned == $expected ]]; then
    return
  elif [[ "$returned" != "$expected" ]]; then
    echo "${returned} != ${expected}"
    exit 1
  fi
}

assert_arity() {
  local arity=${parent_arity}
  local value=$1
  if [ "${arity}" != "${value}" ]; then
    error arity
  fi
}

usage_arity() {
  let caller=${parent_function_name}
  #
  # call the function <name> with args <arity> <value>
  #
}
