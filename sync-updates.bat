@echo off
title Atman Devasya Auto-Sync
echo ===================================================
echo   Syncing edits to GitHub & Cloudflare Pages...
echo ===================================================
echo.

git add .
set /p commit_msg="Enter update description (or press Enter for 'Update saga content'): "
if "%commit_msg%"=="" set commit_msg=Update saga content

git commit -m "%commit_msg%"
git push origin main

echo.
echo ===================================================
echo   Done! Cloudflare is now deploying your changes.
echo   Your live site will update in ~20 seconds!
echo ===================================================
pause
