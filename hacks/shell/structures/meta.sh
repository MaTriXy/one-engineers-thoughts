
current_function_name() {
  # prints parent function name, since this is actually the current function
  echo ${FUNCNAME[1]}
}

parent_function_name() {
  # prints parent parent function name
  echo ${FUNCNAME[2]}
}

# http://stackoverflow.com/questions/3236871/how-to-return-a-string-value-from-a-bash-function?rq=1
pointer() {
  local _pointer=$1
  local _result # Use some naming convention to avoid OUTVARs to clash
  eval $_pointer=\$_result # Instead of just =$_result
}

parent_arity() {
  echo ${BASH_ARGC[1]}
}
