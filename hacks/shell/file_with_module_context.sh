#!/bin/bash

create() {
  local path="$1"
  touch ${path}
}

remove() {
  local path="$1"
  rm ${path}
}

append_content() {
  local path="$1"
  local content="$2"
  echo ${content} >> ${path}
}

prepend_content() {
  local path="$1"
  local content="$2"
  sed -i.old "1s;^;${content};" ${path}
}

print_content() {
  local path="$1"
  cat ${path}
}

join() {
  local a="$1"
  local b="$2"
  local c="$3"
  cat ${a} ${b} >${c}
}

count_lines() {
  local path="$1"
  wc -l < ${path} | bc
}

count_words() {
  local path="$1"
  wc -w < ${path} | bc
}

count_characters() {
  local path="$1"
  wc -c < ${path} | bc
}

select_in_directory() {
  local path="$1"
  ls -1 ${path}
}

search_pattern() {
  local path="$1"
  local pattern="$2"
  grep "${pattern}" ${path}
}

# todo
read_into_memory() {
  variable="$1"
  local path="$2"
  ${variable}=$(<${path})
}

#
# Interactive.
#

create_interactive() {
  local path="$1"
  cat >${path}
}

append_content_interactive() {
  local path="$1"
  cat >>${path}
}
