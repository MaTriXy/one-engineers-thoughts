
## system

source http://en.wikipedia.org/wiki/Init
source http://upstart.ubuntu.com/cookbook/upstart_cookbook.pdf

/etc/init => upstart scripts

## shell

source http://superuser.com/questions/789448/choosing-between-bashrc-profile-bash-profile-etc
source http://en.wikipedia.org/wiki/Bash_(Unix_shell)
source http://unix.stackexchange.com/questions/38175/difference-between-login-shell-and-non-login-shell

script /etc/profile
script /etc/bash.bashrc
script ~/.bash_profile
script ~/.bash_login
script ~/.profile
script ~/.bash_logout
script ~/.bashrc

shell interactive
shell login

shell bourne
  released in 1977
  source http://en.wikipedia.org/wiki/Bourne_shell
  execute ~/.profile, on login
  subprocesses inherit environment variables

shell ksh
  name Korn shell

shell csh
  name C shell

shell bash
  replacement for shell(bourne)
  note Bash incorporates features from the Bourne shell, csh, and ksh
  source http://en.wikipedia.org/wiki/Bash_(Unix_shell)
