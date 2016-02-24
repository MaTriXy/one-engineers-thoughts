
process_get_current_id() {
  $$
}

process_get_id_by_name() {
  local pattern=$1
  ps aux | grep "$pattern" | awk '{print $2}'
}

process_kill() {
  local id=$1
  kill -9 "$id"
}

process_get_id() {
  local pattern=$1
  pid=$(ps aux | grep "$pattern" | grep -v grep | awk '{printf $2}')
}

process_bail() {
  exit 0
}

#
# Get current directory of whichever script calls this.
#

this_get_directory() {
  cd "$(dirname "${BASH_SOURCE[0]}")" && pwd
}

#
# Log a <message>.
#

log() {
  echo
  echo
  echo $@
  echo
}

#
# Check if a <bin> is already installed.
#
# check git-extras || install_github visionmedia git-extras
#

check() {
  command -v $1 > /dev/null 2>&1
}
