
command df
  stands for Disk-free
  source http://en.wikipedia.org/wiki/Df_%28Unix%29
  desc Used to display the amount of available disk space for filesystems on which the invoking user has appropriate read access. df is usually implemented by reading the mtab file or using statfs.

command du

example Show all folders sorted by size
  du -sk .[A-z]* *| sort -n

example Display screenful output at a time as du generate more output than can fit on the console / screen:
  du -h | less

example Find top 3 entries
  du -sk * | sort -nr | head -3

example
  $ du -sk /srv/* | sort -nr | head -3
  1923748  /srv/site-public
  365352  /srv/app
  328192  /srv/site-private

example List directories n levels deep
  find /srv -maxdepth 2 -type d

example Remove everything except specific folder
  $ find /srv/app/releases -maxdepth 1 -mindepth 1 -name $VERSION -prune -o -print0 | xargs -0 rm -rf --

example Remove all directories with certain name
  $ find . -name <name> -exec rm -R "{}" \;

example
  $ lsblk
  NAME    MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
  xvda    202:0    0     8G  0 disk 
  └─xvda1 202:1    0     8G  0 part /
  xvdf    202:80   0   100G  0 disk /srv

command namei
  desc Check for ownership permission path

example
  $ namei -l /var/www/vhosts/example.com

command top
  desc Provides real-time view of `ps` command.
  
command xargs
  desc xargs is a command on Unix and most Unix-like operating systems used to build and execute command lines from standard input.
  source http://en.wikipedia.org/wiki/Xargs

find
  files
    matching and not matching
      $ find . -type f -name '{{ start }}*' -a ! -name '*{{ end }}'

remove
  directory
    matching pattern
      $ for i in public/{stylesheet,image,javascript}s; do [ -d $i ] || rm -rfv $i; done
