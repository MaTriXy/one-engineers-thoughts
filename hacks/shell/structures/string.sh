
string_check() {
  local string=$1
  string_check_something "$string"
}

string_check_nothing() {
  local string=$1
  [[ -z "$string" ]] && return 1 || return 0
}

string_check_something() {
  local string=$1
  [[ -z "$string" ]] && return 0 || return 1
}

# http://unix.stackexchange.com/questions/105569/bash-replace-space-with-new-line
string_replace_space_with_line() {
  local input=$1
  echo "$1" | tr " " "\n"
}

# http://stackoverflow.com/questions/407523/escape-a-string-for-a-sed-replace-pattern
# sed -e 'script script' index.html > index.html.tmp && mv index.html.tmp index.html

string_replace() {
  local string=$1
  local pattern=$2
  local replacement=$3
  echo "${string}" | sed -E "s/${pattern}/${replacement}/g"
}

string_remove() {
  local string=$1
  local pattern=$2
  string_replace "$string" "$pattern" ""
}

string_join() {
  local a=$1
  local b=$2
  local c="$a$b"
  echo "$c"
}

# http://stackoverflow.com/questions/407523/escape-a-string-for-a-sed-replace-pattern
sed_escape() {
  sed -i "s/$(echo $1 | sed -e 's/\([[\/.*]\|\]\)/\\&/g')/$(echo $2 | sed -e 's/[\/&]/\\&/g')/g" $3
}

# http://askubuntu.com/questions/383352/command-to-convert-an-upper-case-string-to-lower-case
string_upper() {
  local string="${1}"
  tr [:lower:] [:upper:] <<< "$string"
}

string_lower() {
  local string="${1}"
  awk '{ print tolower($0) }' <<< "$string"
}

string_strip_first_characters() {
  local n=$1
  cut -c 1-$n
}

string_strip_whitespace_trailing() {
  sed -e 's/  *$//'
}
