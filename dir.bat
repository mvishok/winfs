@echo off
REM Description: List all files and folders in the current directory
setlocal enabledelayedexpansion
set "files="
for %%I in (*) do set "files=!files!%%I "
set "folders="
for /d %%I in (*) do set "folders=!folders!%%I "
echo %folders:~0,-1% %files:~0,-1%