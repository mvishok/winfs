@echo off
REM Description: Copies a file to a directory

set "source=%~1"
set "destination=%~2"
if not exist "%source%" (
    echo 1
    exit /b 1
)
copy /Y "%source%" "%destination%" >nul
if errorlevel 1 (
    echo 1
    exit /b 1
)
echo 0
exit /b 0
