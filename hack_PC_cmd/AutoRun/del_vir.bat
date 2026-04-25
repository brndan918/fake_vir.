@echo off
chcp 65001 > nul

set "STARTUP=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\auto_start.vbs"

if exist "%STARTUP%" (
    del /f /q "%STARTUP%"
    echo 已刪除：%STARTUP%
) else (
    echo 不存在：%STARTUP%
)

cd /d %TEMP%

set "TARGET=C:\uptm"

if exist "%TARGET%" (
    rmdir /s /q "%TARGET%"
    echo 已刪除：%TARGET%
) else (
    echo 不存在：%TARGET%
)
