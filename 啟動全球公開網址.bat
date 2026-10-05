@echo off
chcp 65001 >nul
echo ========================================================
echo   JumpAI Raid Pro - 啟動全球公開 HTTPS 網址
echo   (免帳號、免登入、官方 Cloudflare 全球免費安全通道)
echo ========================================================
cd /d "%~dp0"
echo 1. 正在啟動本機服務 (Port 8080)...
start /b python -m http.server 8080
timeout /t 2 >nul
echo 2. 正在建立全球 HTTPS 通道，請稍候片刻...
echo.
"C:\Program Files (x86)\cloudflared\cloudflared.exe" tunnel --url http://127.0.0.1:8080
pause
