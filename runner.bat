@echo off

COLOR 0A
cd /d "%~dp0"
echo (1) Running System...
call npm run run-all

COLOR 0B
echo Done!

pause
