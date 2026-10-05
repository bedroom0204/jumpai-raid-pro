@echo off
chcp 65001 >nul
echo ========================================================
echo   JumpAI Raid Pro - 一鍵建立 GitHub 儲存庫並推送
echo ========================================================
cd /d "%~dp0"
echo 1. 檢查 GitHub CLI 登入狀態...
call gh auth status
if %errorlevel% neq 0 (
    echo.
    echo 尚未登入 GitHub，即將開啟瀏覽器登入授權...
    call gh auth login -h github.com -p https -w
)
echo.
echo 2. 正在建立 GitHub 遠端儲存庫 jumpai-raid-pro 並推送...
call gh repo create jumpai-raid-pro --public --source=. --remote=origin --push
if %errorlevel% equ 0 (
    echo.
    echo ========================================================
    echo 🎉 成功！已在 GitHub 建立儲存庫並推送完畢！
    echo 接下來前往 https://vercel.com/new 即可 1 鍵 Import 該專案！
    echo ========================================================
) else (
    echo.
    echo 若儲存庫已存在，嘗試直接推送 main 分支...
    call git push -u origin main
)
pause
