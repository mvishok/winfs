@echo off
REM get argument
set name=%1

REM create directory, if error echo 1

mkdir %name% 2> nul
if errorlevel 1 (
    echo 1
    exit /b 0
)

echo 0
exit /b 0