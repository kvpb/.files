@echo off
setlocal EnableExtensions

set "SOURCE=%USERPROFILE%\GitHub\.files\ConsoleHost_history.txt"
set "DESTDIR=%APPDATA%\Microsoft\Windows\PowerShell\PSReadLine"
set "DEST=%DESTDIR%\ConsoleHost_history.txt"

if not exist "%SOURCE%" (
    echo Source file not found:
    echo %SOURCE%
    pause
    exit /b 1
)

if not exist "%DESTDIR%\" (
    mkdir "%DESTDIR%" || (
        echo Could not create %DESTDIR%.
        pause
        exit /b 2
    )
)

copy /b /y "%SOURCE%" "%DEST%" >nul
if errorlevel 1 (
    echo Failed to copy.
    pause
    exit /b 3
)

echo Replaced %DEST%.
exit /b 0
