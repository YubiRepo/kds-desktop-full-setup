@echo off

color 0A

echo Menginstall Dependencies checker dan KDS (Windows ...)
echo Pastikan anda terhubung ke internet
echo Pastikan anda sudah menginstall git

:: Check if Node.js is available
IF EXIST "%ProgramFiles%\nodejs\node.exe" (
    color 0A
    echo Node.js is  installed.
) ELSE (
    color 0C
    echo Node.js is not installed. Please install Node.js.
    pause
 
)


COLOR 0A
echo (1) Menginstall Dependencies System...
call npm install

COLOR 0A
echo (2) Menginstall Dependencies KDS dan Checker...
call npm run install-deps

COLOR 0A
echo (3) Building Apps Systems...
call npm run build-all

COLOR 0A
echo (4) Running System...
call npm run run-all

COLOR 0B
echo Done!

pause
