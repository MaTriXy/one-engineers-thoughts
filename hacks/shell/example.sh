
#
# Import platform.
#

. platform.sh

echo

describe "file" && {
  it "should count lines" && {
    expected="16"
    returned=$(count lines structures.sh)
    assert equal $expected $returned
  }

  it "should print file name" && {
    expected="example.sh"
    returned=$(file_get_name example.sh)
    assert equal $expected $returned
  }

  it "should set the name of a file" && {
    file_create tmp.hack
    file_set_name tmp.hack tmp2.hack
    file_remove tmp2.hack
  }

  it "should get the file mode" && {
    expected="0755"
    returned=$(file_get_mode example.sh)
    assert equal $expected $returned
  }

  it "should set the file mode" && {
    expected="0644"
    returned=$(file_get_mode file.m)
    assert equal $expected $returned

    file_set_mode file.m 0755

    expected="0755"
    returned=$(file_get_mode file.m)
    assert equal $expected $returned

    file_set_mode file.m 0644
  }

  it "should get file size in bytes" && {
    expected=24
    returned=$(file_get_size sketchfile.sh)
    assert equal $expected $returned
  }

  it "should get file extension" && {
    expected="sh"
    returned=$(file_get_extension sketchfile.sh)
    assert equal $expected $returned
  }

  it "should write the file" && {
    file_update something "foo bar baz"
  }

  it "should find executable" && {
    expected="/bin/cat"
    returned=$(file_get_path_executable cat)
    assert equal $expected $returned
  }
}

describe "directory" && {
  it "should find files matching name" && {
    expected="$(file_get_path_absolute environment.sh)"
    returned=$(directory_search_pattern_in_name $(pwd) envir)
    assert equal $expected $returned
  }
}

describe "environment" && {
  it "should print current user" && {
    expected="viatropos"
    returned=$(environment_get_user)
    assert equal $expected $returned
  }

  it "should print operating system info" && {
    expected="mac"
    returned="$(environment_get_operating_system)"
    assert equal $expected $returned

    expected="x86_64"
    returned="$(mac_architecture)"
    assert equal $expected $returned

    expected="Intel(R) Core(TM) i7-4750HQ CPU @ 2.00GHz"
    returned="$(mac_cpu_name)"
    assert equal "$expected" "$returned"
  }
}

describe "string" && {
  it "should uppercase" && {
    expected="HELLO WORLD"
    returned=$(string_upper "hello world")
    assert equal "$expected" "$returned"
  }

  it "should lowercase" && {
    expected="hello world"
    returned=$(string_lower "HELLO WORLD")
    assert equal "$expected" "$returned"
  }

  it "should replace pattern" && {
    expected="hello earth"
    returned=$(string_replace "hello world" "world" "earth")
    assert equal "$expected" "$returned"
  }
}

describe "integer" && {
  it "should check if value is number" && {
    returned=$(integer_check 15)
    assert equal true $returned

    returned=$(integer_check foo)
    assert equal false $returned
  }
}

echo
