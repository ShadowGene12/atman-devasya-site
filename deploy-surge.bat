@echo off
title Deploy Atman Devasya to Live Web (Free)
echo ============================================================
echo   Publishing Atman Devasya to https://atman-devasya.surge.sh
echo ============================================================
echo.
echo If this is your first time, type your email and choose any password.
echo Surge will create your free account and deploy your site immediately!
echo.
npx.cmd --yes surge "%~dp0" atman-devasya.surge.sh
echo.
echo ============================================================
echo Your site is now live at: https://atman-devasya.surge.sh
echo ============================================================
pause
