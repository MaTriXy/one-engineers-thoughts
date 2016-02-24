
source http://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard
source https://help.ubuntu.com/community/LinuxFilesystemTreeOverview

on ubuntu

directory /bin
  description
    is a place for most commonly used terminal commands, like ls, mount, rm, etc.

directory /boot
  description
    contains files needed to start up the system, including the Linux kernel, a RAM disk image and bootloader configuration files.

directory /dev
  source http://www.tldp.org/LDP/sag/html/dev-fs.html
  sub /dev/xvda1
    info http://askubuntu.com/questions/166083/what-is-the-dev-xvda1-device

directory /etc
  source http://www.tldp.org/LDP/sag/html/etc-fs.html
  source http://www.tldp.org/LDP/Linux-Filesystem-Hierarchy/html/etc.html
  source http://unix.stackexchange.com/questions/5665/what-does-etc-stand-for
  backronym Environment & Tool Configuration
  possible "et cetera"
  description
    contains system-global configuration files, which affect the system's behavior for all users.

directory /home
  description
    home sweet home, this is the place for users' home directories.

directory /lib
  description
    contains very important dynamic libraries and kernel modules

directory /media
  description
    is intended as a mount point for external devices, such as hard drives or removable media (floppies, CDs, DVDs).

directory /mnt
  description
    is also a place for mount points, but dedicated specifically to "temporarily mounted" devices, such as network filesystems.

directory /opt
  description
    can be used to store addition software for your system, which is not handled by the package manager.

directory /proc
  description
    is a virtual filesystem that provides a mechanism for kernel to send information to processes.

directory /root
  description
    is the superuser's home directory, not in /home/ to allow for booting the system even if /home/ is not available.

directory /sbin
  description
    contains important administrative commands that should generally only be employed by the superuser.

directory /srv
  source http://www.tldp.org/LDP/Linux-Filesystem-Hierarchy/html/srv.html
  description
    can contain data directories of services such as HTTP (/srv/www/) or FTP.

directory /sys
  description
    is a virtual filesystem that can be accessed to set or obtain information about the kernel's view of the system.

directory /tmp
  description
    is a place for temporary files used by applications. instance among others, /usr/bin/ and /usr/lib.

directory /var
  description
    is dedicated variable data that potentially changes rapidly; a notable directory it contains is /var/log where system log files
    are kept.
  common subdirectories
    backups  cache  crash  lib  local  lock  log  mail  opt  run  spool  tmp

examples

content /etc/nginx
  $ ubuntu@ip-10-0-0-35:~$ ll /etc/nginx
  total 88
  drwxr-xr-x   7 root root 4096 Feb 10 22:30 ./
  drwxr-xr-x 108 root root 4096 Feb 18 00:34 ../
  drwxr-xr-x   2 root root 4096 Sep 17 13:47 conf.d/
  -rw-r--r--   1 root root  911 Mar  4  2014 fastcgi_params
  -rw-rw-r--   1 root root 1943 Feb 10 22:24 History.md
  drwxrwxr-x   2 root root 4096 Feb 10 22:24 includes/
  -rw-r--r--   1 root root 2258 Mar  4  2014 koi-utf
  -rw-r--r--   1 root root 1805 Mar  4  2014 koi-win
  -rw-rw-r--   1 root root 3493 Feb 10 22:24 mime.types
  -rw-r--r--   1 root root 5287 Mar  4  2014 naxsi_core.rules
  -rw-r--r--   1 root root  287 Mar  4  2014 naxsi.rules
  -rw-r--r--   1 root root  222 Mar  4  2014 naxsi-ui.conf.1.4.1
  -rw-rw-r--   1 root root  835 Feb 10 22:24 nginx.conf
  drwxrwxr-x   2 root root 4096 Feb 10 22:24 pages/
  -rw-r--r--   1 root root  180 Mar  4  2014 proxy_params
  -rw-rw-r--   1 root root  241 Feb 10 22:24 Readme.md
  -rw-r--r--   1 root root  465 Mar  4  2014 scgi_params
  drwxr-xr-x   2 root root 4096 Sep 29 02:37 sites-available/
  drwxrwxr-x   2 root root 4096 Feb 18 18:15 sites-enabled/
  -rw-r--r--   1 root root  532 Mar  4  2014 uwsgi_params
  -rw-r--r--   1 root root 3071 Mar  4  2014 win-utf
  ubuntu@ip-10-0-0-35:~$ ll /etc/nginx
