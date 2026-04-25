@echo off
chcp 65001 > nul

set "STARTUP=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\auto_host.vbs"

del /f /q "%STARTUP%"

set "TARGET=C:\uptm"

rmdir /s /q "%TARGET%"
