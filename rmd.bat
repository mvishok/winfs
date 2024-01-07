@echo off
REM remove directory from argument, if error echo 1
rmdir %1 2> nul
if errorlevel 1 (
    echo 1
    exit /b 0
)

echo 0
exit /b 0
