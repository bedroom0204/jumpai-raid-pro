@echo off
chcp 65001 >nul
echo ========================================================
echo   JumpAI Raid Pro - 正在啟動本機預覽伺服器
echo   開啟網址：http://localhost:8080
echo ========================================================
cd /d "%~dp0"
start http://localhost:8080
python -m http.server 8080
pause
