
get_version_of_virtual_box() {
  VBoxManage --version
}

show_version_of_virtual_box() {
  get_version_of_virtual_box
}

get_version_of_vagrant() {
  vagrant --version
  expect Vagrant 1.7.2
}
