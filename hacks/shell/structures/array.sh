
# https://github.com/lululau/baby/blob/master/baby.sh
array=(one two three)

array_create() {
  ${()}
}

array_get_at_index() {
  local array=$1
  local index=$2
  ${array[$index]}
}

array_set_at_index() {
  local array=$1
  local index=$2
  local value=$3
  ${array[$index]}=$value
}

date_nanoseconds() {
  "$(date +%s%N)" # nanoseconds_since_epoch
}
