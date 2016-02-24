
list_connections() {
  lsof -i
}

list_connections_established() {
  lsof -i | grep -E "(LISTEN|ESTABLISHED)"
}

list_sockets() {
  netstat -a
}

list_udp_connections() {
  netstat -anp --udp
}

list_tcp_connections() {
  netstat -anp --tcp
}
