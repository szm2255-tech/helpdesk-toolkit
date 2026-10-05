# Outlook Profile Reset Guide

## Symptoms
- Outlook won't open, or crashes on startup
- Stuck on "Loading profile" or "Connecting"
- Repeated password prompts
- Mail not syncing, or the mailbox shows as disconnected

## First checks
1. Confirm the device has normal internet access.
2. Check the account works in Outlook on the web. If it doesn't, the problem is the account, not the profile.
3. Check for a locked account, expired password or MFA problem.
4. Check service status for the mail provider.

## Fixes, in order
1. Fully close Outlook (check Task Manager or Activity Monitor), then reopen.
2. Start in safe mode to rule out add-ins: hold `Ctrl` while opening Outlook (Windows).
3. Run Office Quick Repair from Settings > Apps > Microsoft 365 > Modify (Windows).
4. Create a new profile (Windows): Control Panel > Mail > Show Profiles > Add. Set it as the default, then test.
5. Remove and re-add the account (Mac): Outlook > Settings > Accounts, remove the account, then add it again.
6. Reinstall Office if the problem continues on a fresh profile.

## Before removing a profile
- Confirm mail is stored on the server (Exchange/Microsoft 365), so nothing is lost.
- Check for local-only data such as PST files or local rules and back them up.
- Note any shared mailboxes and delegate settings to re-add afterwards.

## Escalate if
- Outlook on the web also fails (account or mailbox issue).
- Several users report the same fault.
- A fresh profile fails in the same way.
- A mailbox appears corrupted or missing data.

## Information to collect
Device and OS version, Outlook version, exact error message, whether Outlook on the web works, whether safe mode helps, time the problem started.
