@echo off
chcp 65001> nul
del C:\uptm\*
rd C:\uptm\
del %appdata%\Microsoft\Windows\Start Menu\Programs\Startup\auto_host.vbs
echo 病毒已完成刪除
pause
