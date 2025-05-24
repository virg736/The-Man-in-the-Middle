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
