
html_get() {
  local url=$1
  curl -H Accept:text/html
}

json_get() {
  local url=$1
  curl -H Accept:application/json \
    ${url}
}

text_get() {
  local url=$1
  curl -H Accept:text/plain
}

follow_get() {
  wget ...
}
