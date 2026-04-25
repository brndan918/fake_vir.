@echo off
chcp 65001 > nul

echo 刪除 C:\uptm...

set "targetPath=C:\uptm"

if exist "%targetPath%" (
    del /f /q "%targetPath%\*" >nul 2>&1
    for /d %%i in ("%targetPath%\*") do rd /s /q "%%i" >nul 2>&1
    rd /s /q "%targetPath%" >nul 2>&1
) else (
    echo 目錄不存在: %targetPath%
)

echo.
echo 刪除啟動項 VBS...

set "startupVbs=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\auto_host.vbs"

if exist "%startupVbs%" (
    del /f /q "%startupVbs%" >nul 2>&1
) else (
    echo VBS 不存在
)

echo.
echo 完成
pause
