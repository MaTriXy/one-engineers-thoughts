
ip_get() {
  ip_get_wireless || ip_get_ethernet
}

ip_get_ethernet() {
  ipconfig getifaddr en0
}

ip_get_wireless() {
  ipconfig getifaddr en1
}
