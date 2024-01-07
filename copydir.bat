@echo off
REM Description: Copies a directory to another directory

if "%~1"=="" (
    echo 1
    exit /b 0
)

set "source=%~1"
set "destination=%~2"

if not exist "%source%" (
    echo 1
    exit /b 0
)

xcopy /E /I "%source%" "%destination%"
if errorlevel 1 (
    echo 1
    exit /b 0
)

echo 0
exit /b 0
