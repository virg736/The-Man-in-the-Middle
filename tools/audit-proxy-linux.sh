#!/bin/bash

echo "=== The Man in the Middle – Linux Audit Script ==="

echo -e "\n[1] Installed tools (Burp, Fiddler, MITMProxy)..."
dpkg -l 2>/dev/null | grep -Ei "burp|fiddler|mitmproxy|charles"

echo -e "\n[2] Running processes..."
ps aux | grep -Ei "burp|fiddler|mitm" | grep -v grep

echo -e "\n[3] Proxy environment variables:"
echo "HTTP_PROXY=$HTTP_PROXY"
echo "HTTPS_PROXY=$HTTPS_PROXY"

echo -e "\n[4] Listening ports (proxy detection)..."
sudo netstat -tulnp 2>/dev/null | grep -E ":8080|:8888|:8000"

echo -e "\n[5] Looking for suspicious certificates..."
sudo find /etc/ssl/certs -type f -iname "*.crt" | grep -Ei "burp|swigger|proxy"

echo -e "\n=== Audit complete ==="
