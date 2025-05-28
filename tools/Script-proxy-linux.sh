# ===============================================================
# SCRIPT D'AUDIT DE PROXY - Linux (Burp / Fiddler / MITMproxy)
# Auteur : Virginie
# Licence : MIT
#
# ⚠️ AVERTISSEMENT :
# Usage strictement pédagogique. L’auteure décline toute responsabilité
# en cas d’usage malveillant ou illégal.


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


## Avertissement légal

 Ce projet est exclusivement destiné à des fins éducatives, dans le cadre de la formation à la cybersécurité.
 L’auteure ne cautionne ni n’autorise l’utilisation de ces techniques en dehors d’un cadre légal strictement défini.
 Toute utilisation non autorisée est interdite et relève de la seule responsabilité de l’utilisateur.


## Auteur / Droits

© 2025 Virginie Lechene — Tous droits réservés.
Reproduction interdite sans autorisation.



