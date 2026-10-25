@echo off
title Atman Devasya Local Server
echo Starting Atman Devasya site on http://localhost:8000...
start http://localhost:8000
node "%~dp0server.js"
pause
