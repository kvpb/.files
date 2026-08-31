@echo off
setlocal EnableExtensions DisableDelayedExpansion

set "PS1=%~dp0openfolders.ps1"

if not exist "%PS1%" set "PS1=%~dp0openfolders(3).ps1"

if not exist "%PS1%" (
    echo Script PowerShell introuvable.
    echo Place openfolders.ps1 dans le meme dossier que ce BAT.
    pause
    exit /b 1
)

start "" "%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" ^
    -NoLogo -NoProfile -ExecutionPolicy Bypass -STA -WindowStyle Hidden ^
    -File "%PS1%"

endlocal
exit /b 0
