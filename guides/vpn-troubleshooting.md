# VPN Troubleshooting Guide

## Symptoms
- VPN client won't connect or hangs on "Connecting"
- Connects, but internal sites or shared drives are unreachable
- Frequent disconnections

## First checks
1. Confirm the device has normal internet access (open a public website).
2. Check the username and password work elsewhere, in case the account is locked or expired.
3. Make sure the VPN client is up to date.

## Fixes, in order
1. Disconnect, fully quit the client, and reconnect.
2. Switch network (home Wi-Fi, mobile hotspot) to rule out a blocked port.
3. Restart the device.
4. Flush DNS: `sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder` (Mac).
5. Remove and re-add the VPN profile, or reinstall the client.

## Escalate if
- Multiple users report the same issue (likely a server or gateway problem).
- The account is locked or MFA is failing.
- Errors persist on more than one network.

## Information to collect
Device and OS version, VPN client version, exact error message, network used, time of failure.
