
git_reset_hard() {
  git reset --hard HEAD
}

# http://stackoverflow.com/questions/927358/how-do-you-undo-the-last-commit
undo_last_commit() {
  git reset --soft HEAD~
}
