
# http://stackoverflow.com/questions/688849/associative-arrays-in-shell-scripts
construct() {
  prefix=$(basename $0)
  mapdir=$(mktemp -dt ${prefix})
  trap 'rm -r ${mapdir}' EXIT
}

map_put() {
  assert_arity 3
  local map=$1
  local key=$2
  local value=$3
  local directory="${mapdir}/${map}"
  local file="${directory}/${key}"
  directory_create_unless_exists $directory
  file_append $file, $value
}

map_get() {
  assert_arity 2
  local map=$1
  local key=$2
  local file="${mapdir}/${map}/${key}"
  file_read $file
}
