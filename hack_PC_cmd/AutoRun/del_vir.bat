powershell
# 使用 UTF-8 編碼（對中文輸出較穩定）
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

Write-Host "刪除 C:\uptm..."

$targetPath = "C:\uptm"

if (Test-Path $targetPath) {
    Remove-Item -Path "$targetPath\*" -Recurse -Force -ErrorAction SilentlyContinue
    Remove-Item -Path $targetPath -Recurse -Force -ErrorAction SilentlyContinue
} else {
    Write-Host "目錄不存在: $targetPath"
}

Write-Host "刪除啟動項 VBS..."

$startupVbs = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\auto_host.vbs"

if (Test-Path $startupVbs) {
    Remove-Item -Path $startupVbs -Force -ErrorAction SilentlyContinue
} else {
    Write-Host "VBS 不存在"
}

Write-Host "完成"
Read-Host "按 Enter 結束"
