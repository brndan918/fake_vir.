@echo off
chcp 65001> nul
del /s /q C:\uptm\*
rd /q C:\uptm\
del /s /q %appdata%\Microsoft\Windows\Start Menu\Programs\Startup\auto_host.vbs
echo 病毒已完成刪除
pause
