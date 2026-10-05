#!/bin/bash
# network_check.sh
# Quick first-line network diagnostics for macOS.
# Usage: ./network_check.sh [hostname]   (default github.com)

HOST="${1:-github.com}"

echo "Network Check - $(hostname) - $(date '+%Y-%m-%d %H:%M')"
echo "----------------------------------------------"

IP=$(ipconfig getifaddr en0 2>/dev/null)
echo "Local IP (en0): ${IP:-none - not connected on en0}"

GATEWAY=$(route -n get default 2>/dev/null | awk '/gateway/ {print $2}')
echo "Default gateway: ${GATEWAY:-none found}"

check() {
  if "${@:2}" >/dev/null 2>&1; then
    echo "[ OK ]   $1"
  else
    echo "[ FAIL ] $1"
  fi
}

[ -n "$GATEWAY" ] && check "Ping gateway ($GATEWAY)" ping -c 2 -t 3 "$GATEWAY"
check "Ping internet (1.1.1.1)" ping -c 2 -t 3 1.1.1.1
check "DNS lookup ($HOST)" host "$HOST"
check "Ping hostname ($HOST)" ping -c 2 -t 3 "$HOST"

echo "----------------------------------------------"
echo "If the gateway fails: check Wi-Fi/cable. If the internet fails: ISP or router."
echo "If only DNS fails: check DNS settings or try another network."
