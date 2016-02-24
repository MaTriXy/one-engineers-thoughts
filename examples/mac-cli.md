
example clear dns cache
  yosemite
    $ sudo discoveryutil mdnsflushcache

  lion
    $ sudo killall -HUP mDNSResponder

  10.6
    $ sudo dscacheutil -flushcache

