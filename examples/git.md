
remove
  tag local
    $ git tag -d {{ tag }}

  tag remote
    $ git push origin :refs/tags/{{ tag }}

fix
  conflict merge
    $ git commit -v
