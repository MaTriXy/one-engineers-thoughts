
git_get_name_of_branch() {
  git rev-parse --symbolic-full-name --abbrev-ref HEAD
}
