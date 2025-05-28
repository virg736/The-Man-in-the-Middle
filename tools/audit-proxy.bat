# ===============================================================
# SCRIPT D'AUDIT DE PROXY - Windows (Burp / Fiddler / MITMproxy)
# Auteur : Virginie
# Licence : MIT
#
# ⚠️ AVERTISSEMENT :
# Usage strictement pédagogique. L’auteure décline toute responsabilité
# en cas d’usage malveillant ou illégal.


@echo off
title Audit Proxy - The Man in the Middle
color 0A

echo.
echo [1] Installed programs (Burp, Fiddler, etc.) :
wmic product get name | findstr /i "burp portswigger fiddler charles mitm java"

echo.
echo [2] Suspicious running processes :
tasklist | findstr /i "java burp fiddler mitm"

echo.
echo [3] WinHTTP Proxy configuration :
netsh winhttp show proxy

echo.
echo [4] Listening ports (proxy detection) :
netstat -abno | findstr LISTENING | findstr ":8080 :8888 :8000"

echo.
echo [5] Opening certificate manager...
start certmgr.msc

pause

Add audit-proxy.bat in tools/


##  Avertissement légal

> Ce projet est exclusivement destiné à des fins éducatives, dans le cadre de la formation à la cybersécurité.
> L’auteure ne cautionne ni n’autorise l’utilisation de ces techniques en dehors d’un cadre légal strictement défini.
> Toute utilisation non autorisée est interdite et relève de la seule responsabilité de l’utilisateur.

##  Auteur / Droits

© 2025 Virginie Lechene — Tous droits réservés.
Reproduction interdite sans autorisation.
