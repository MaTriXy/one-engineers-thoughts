
wifi_binary=/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport

wifi_get_sources() {
  command "$wifi_binary" -s
}

wifi_get_sniff() {
  local name=$1
  command "$wifi_binary" sniff "$name"
}
