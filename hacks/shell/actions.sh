
#
# Imports.
#

. ./actions/assert.sh
. ./actions/format.sh
. ./actions/test.sh

#
# Import.
#

import() {
  module_import $1
}

#
# Assert.
#

assert() {
  local relation=$1
  local expected=$2
  local returned=$3

  case $relation in
    equal)
      assert_equal "$expected" "$returned"
      ;;
  esac
}

#
# Create.
#

create() {
  local type=$1
  local item=$2

  case $type in
    file)
      file_create $item
      ;;

    directory)
      directory_create $item
      ;;
  esac
}

#
# Count.
#

count() {
  local items=$1
  local source=$2

  case $items in
    lines)
      file_count_lines $source
      ;;
  esac
}
