
# http://stackoverflow.com/questions/806906/how-do-i-test-if-a-variable-is-a-number-in-bash/3951175#3951175
integer_check() {
  local value=$1
  case $value in
    ''|*[!0-9]*)
      echo false
      ;;
    *)
      echo true
      ;;
  esac
}
