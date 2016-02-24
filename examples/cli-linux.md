
task list
  example dns
    $ dig

  example dns, full path
    $ dig {{ root }} {{ leaf }} +trace

task remove
  example recursively
    $ rm -rf {{ folder }}

task change
  example directory
    $ cd {{ directory }}

task move

task log
  example network packets?
    $ sudo ethtool -K eth0 tso off

  example network packets
    $ dmesg for syslogs

task change
  example owner
    $ chown -R ubuntu:ubuntu /usr/local

task list
  example permissions, on parent directories
    $ namei -l {{ directory }}

chmod +x dir  # Set a directory to be listable
chmod +x file # Set a file to be executable

chown -R username           dir # Recursively set user
chown -R username:groupname dir # Recursively set user and group
find dir -type f -exec chmod 644 {} ';' # make all files       rw-r-r-

install
  example package
    $ sudo apt-get install {{ package }}

  example npm package
    $ npm install {{ package }}

alias
  example command
    alias killnpm='rm -rf ~/.npm node_modules && npm cache clean'

list
  syscalls
    $ ls /usr/share/man/man2 | sed -e s/.2.gz//g | xargs man -s 2 -k  | sort | grep -v 'unimplemented system calls'
