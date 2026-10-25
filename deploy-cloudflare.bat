@echo off
title Deploy to Cloudflare Workers
echo ========================================================
echo   Deploying Atman Devasya to Cloudflare Workers...
echo ========================================================
echo.

npx.cmd wrangler deploy

echo.
echo ========================================================
echo   Deployment completed!
echo   Visit: https://atman-devasya-site.atman-devasya2189.workers.dev/
echo ========================================================
pause
