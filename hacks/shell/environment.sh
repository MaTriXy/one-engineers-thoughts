
# strict error messages
# set -e
set -o errexit

environment_get_user() {
  echo $(whoami)
}

environment_get_lookup() {
  echo "$PATH"
}

environment_get_home() {
  echo "$HOME"
}

environment_get_root() {
  echo "/"
}

environment_get_all() {
  env
}

environment_get_editor() {
  echo "$EDITOR"
}

environment_get_shell() {
  echo "$SHELL"
}

environment_get_prompt() {
  echo "$PS1"
}

# http://apple.stackexchange.com/questions/4286/is-there-a-mac-os-x-terminal-version-of-the-free-command-in-linux-systems

memory() {
  echo
}

# http://stackoverflow.com/questions/394230/detect-the-os-from-a-bash-script
environment_get_operating_system() {
  local os="`uname`"
  case $os in
    'Linux')
      os='linux'
      ;;
    'FreeBSD')
      os='freebsd'
      ;;
    'WindowsNT')
      os='windows'
      ;;
    'Darwin')
      os='mac'
      ;;
    'SunOS')
      os='solaris'
      ;;
    'AIX') ;;
    *) ;;
  esac
  echo $os
}

# http://superuser.com/questions/75166/how-to-find-out-mac-os-x-version-from-terminal
mac_version() {
  sw_vers -productVersion
}

mac_architecture() {
  uname -m
}

mac_cpu_name() {
  echo "`sysctl -n machdep.cpu.brand_string`"
}

mac_cpu_features() {
  echo "`sysctl -n machdep.cpu.features`"
}
