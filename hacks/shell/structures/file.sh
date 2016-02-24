#!/bin/bash

file_create() {
  local path=$1
  touch "$path"
}

file_update() {
  local path=$1
  local content=$2
  file_create "$path"
  file_write "$path" "$content"
}

file_remove() {
  local path=$1
  rm "$path"
}

file_copy() {
  local source=$1
  local target=$2
  cp "$source" "$target"
}

file_copy_to_clipboard() {
  local path=$1
  pbcopy < "$path"
}

file_exists() {
  local path=$1
  if [ ! -f "$path" ]; then
    return 0
  else
    return 1
  fi
}

file_get_path_absolute() {
  local path=$1
  local directory=$(directory_get_path "$path")
  local name=$(file_get_name "$path")
  local directory_absolute=$(cd "$directory" && pwd)
  local path_absolute="$directory_absolute/$name"
  echo "$path_absolute"
}

file_get_name() {
  local path=$1
  echo $(basename "$path")
}

file_get_name_without_extension() {
  local path=$1
  local name=$(file_get_name "$path")
  name="${name%.*}"
  echo $name
}

file_set_name() {
  local source_path=$1
  local target_name=$2
  local directory=$(directory_get_path "$source_path")
  local target_path="$directory/$target_name"
  file_move "$source_path" "$target_path"
}

file_get_mode() {
  local path=$1
  # linux
  # stat -c "%a %n" $path
  # mac
  stat -f '0%A %a %N' "$path"
}

file_set_mode() {
  local path=$1
  local mode=$2
  chmod "$mode" "$path"
}

file_move() {
  local source_path=$1
  local target_path=$2
  mv "$source_path" "$target_path"
}

file_get_size() {
  local path=$1
  file_count_characters "$path"
}

# http://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash/965072#965072
file_get_extension() {
  local path=$1
  local name=$(file_get_name ${path})
  local extension="${name##*.}"
  echo $extension
}

file_append_content() {
  local path=$1
  local content="$2"
  echo "$content" >> "$path"
}

file_prepend_content() {
  local path=$1
  local content="$2"
  sed -i.old "1s;^;${content};" "$path"
}

file_print_content() {
  local path=$1
  cat "$path"
}

file_join() {
  local a="$1"
  local b="$2"
  local c="$3"
  cat ${a} ${b} > ${c}
}

file_count_lines() {
  local path=$1
  wc -l < "$path" | bc
}

file_count_words() {
  local path=$1
  wc -w < "$path" | bc
}

file_count_characters() {
  local path=$1
  wc -c < "$path" | bc
}

file_select_in_directory() {
  local path=$1
  ls -1 "$path"
}

file_search_pattern() {
  local path=$1
  local pattern="$2"
  grep -E "$pattern" "$path"
}

file_write() {
  local path=$1
  local content=$2
  local something=$(string_check_something ${path})
  if $something; then
    echo "$content" > "$path"
  fi
}

# todo
file_read_into_memory() {
  variable="$1"
  local path="$2"
  ${variable}=$(<${path})
}

#
# Interactive.
#

file_create_interactive() {
  local path=$1
  cat > "$path"
}

file_append_content_interactive() {
  local path=$1
  cat >> "$path"
}

file_get_path_executable() {
  local path=$1
  which "$path"
}

#
# Insert line before another line.
#
#   file_insert_before billing.js \
#     "let res = yield\* stripeRetry(find, 'stripe_list_charges'" \
#     "console.log('find all charges', query);"
#

file_insert_before() {
  local file=$1
  local pattern=$2
  local before=$3

  # put replacement before
  local replacement="$before\n  $pattern"

  sed -e "s/$pattern/$replacement/g" $file > $file.tmp && mv $file.tmp $file
}

#
# file_insert_at_line billing.js 193 "console.log(query)"
#

file_insert_at_line() {
  local file=$1
  local line_number=$2
  local pattern=$3
  sed -e "${line_number}i$pattern" $file > $file.tmp && mv $file.tmp $file
}
