# Helpdesk Toolkit

A small collection of scripts and troubleshooting guides for common IT support tasks, written from a service desk perspective. All examples are generic and contain no employer-specific information.

## Contents

| Path | Description |
|------|-------------|
| `scripts/disk_space_report.sh` | Reports disk usage and flags volumes above a set threshold |
| `scripts/network_check.sh` | First-line connectivity check: gateway, internet and DNS |
| `guides/vpn-troubleshooting.md` | Step-by-step VPN fault diagnosis with escalation criteria |
| `guides/user-offboarding-checklist.md` | Leaver checklist covering accounts, licences, data and equipment |
| `guides/outlook-profile-reset.md` | Outlook fault diagnosis and profile rebuild steps |
| `guides/printer-troubleshooting.md` | Printer fault diagnosis from queue clears to driver reinstall |

## Usage

### Disk space report (macOS/Linux)

    chmod +x scripts/disk_space_report.sh
    ./scripts/disk_space_report.sh        # default warning at 80%
    ./scripts/disk_space_report.sh 70     # custom threshold



## Author

Shah Malik - IT Support Analyst
