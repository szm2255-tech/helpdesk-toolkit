#!/bin/bash
# disk_space_report.sh
# Reports disk usage and flags volumes above a threshold.
# Usage: ./disk_space_report.sh [threshold_percent]   (default 80)

THRESHOLD="${1:-80}"

echo "Disk Space Report - $(hostname) - $(date '+%Y-%m-%d %H:%M')"
echo "Warning threshold: ${THRESHOLD}%"
echo "----------------------------------------------"

df -h | awk -v t="$THRESHOLD" 'NR==1 {print; next}
  $1 ~ /^\/dev\// {
    use=$5; gsub("%","",use)
    flag = (use+0 >= t) ? "  <-- WARNING" : ""
    print $0 flag
  }'

echo "----------------------------------------------"
echo "Largest folders in your home directory:"
du -sh ~/* 2>/dev/null | sort -rh | head -5
