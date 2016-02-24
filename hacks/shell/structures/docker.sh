
docker_get_processes() {
  docker ps
}

docker_build() {
  docker build
}

docker_install_on_mac() {
  local current=$(docker_get_version)
  local desired="1.7.0"

  ROOT_DIR=$(git rev-parse --show-toplevel)

  if [[ $current != $desired ]]; then
      cp "${ROOT_DIR}/init/docker/formula-${desired}" "$(brew_get_root_directory)/Library/Formula/docker.rb"
      brew unlink docker 2>&1 >/dev/null || true
      brew install docker 2>&1 >/dev/null
      brew switch docker $desired 2>&1 >/dev/null
      brew install docker-compose 2>&1 >/dev/null || true
      brew upgrade docker-compose 2>&1 >/dev/null || true
      (cd $(brew_get_root_directory) && git_reset_hard)
  fi
}

docker_get_version() {
  docker version 2>/dev/null | grep -e "^Client version:" | awk '{printf $3"\n"}' | xargs
}
