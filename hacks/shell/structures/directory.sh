
directory_create() {
  local path=$1
  mkdir "$path"
}

directory_remove() {
  local path=$1
  rm -r "$path"
}

directory_exists() {
  local directory=$1
  [ -d "${directory}" ]
}

directory_create_unless_exists() {
  local directory=$1
  directory_exists "$directory" || directory_create "$directory"
}

directory_change() {
  local path=$1
  cd "$path"
}

directory_current() {
  pwd -P
}

# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
directory_this() {
  local directory=$(dirname "${BASH_SOURCE[0]}")
  directory=$(cd "directory" && pwd -P)
  echo "$directory"
}

directory_parent() {
  local path=$1
  local directory=$(dirname "${path}")
  echo "$directory"
}

directory_get_path() {
  local path=$1
  local directory=$(dirname "${path}")
  echo "$directory"
}

directory_search_pattern_in_content() {
  local path=$1
  local pattern="$2"
  grep -E -I -R "$pattern" "$path"
}

directory_search_pattern_in_name() {
  local path=$1
  local pattern="$2"
  # find "$path" -regex "$pattern"
  find "$path" -name "*$pattern*"
}

directory_search_pattern_in_date() {
  local path=$1
  local pattern="$2"
  # find "$path" -mtime and -mmin
}
