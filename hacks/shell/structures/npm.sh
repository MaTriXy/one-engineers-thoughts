# npm https://gist.github.com/coolaj86/1318304

npm_dependency_github_public() {
  "git://github.com/user/repo.git#ref"
}

npm_dependency_github_private() {
  "git+ssh://git@github.com:user/repo.git#ref"
}

npm_cache_clear() {
  npm cache clean
}

npm_clear() {
  npm_cache_clear
  rm -rf node_modules
}
