#!/bin/bash

create_file_interactive() {
  local path="$1"
  cat >${path}
}

print_file_content() {
  local path="$1"
  cat ${path}
}

append_content_to_file_interactive() {
  local path="$1"
  cat >>${path}
}

join_files() {
  local a="$1"
  local b="$2"
  local c="$3"
  cat ${a} ${b} >${c}
}

count_lines_of_file() {
  local path="$1"
  wc -l < ${path} | bc
}

count_words_of_file() {
  local path="$1"
  wc -w < ${path} | bc
}

count_characters_of_file() {
  local path="$1"
  wc -c < ${path} | bc
}

list_files_in_directory() {
  local path="$1"
  ls -1 ${path}
}

search_pattern_in_file() {
  local path="$1"
  local pattern="$2"
  grep "${pattern}" ${path}
}

# todo
read_file_into_memory() {
  variable="$1"
  local path="$2"
  ${variable}=$(<${path})
}
