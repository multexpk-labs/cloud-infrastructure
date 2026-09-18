#!/usr/bin/env bash
set -u

echo "=== Infrastructure Summary ==="
echo "Hostname: $(hostname)"
echo "Kernel: $(uname -r)"
echo "Uptime: $(uptime -p 2>/dev/null || uptime)"
echo
echo "=== CPU / Memory ==="
printf 'CPU: '; nproc
echo
a=$(free -h | awk '/^Mem:/ {print $3 "/" $2}')
echo "Memory: $a"
echo
echo "=== Storage ==="
df -hT /
echo
echo "=== Network listeners ==="
ss -lnt 2>/dev/null || true
