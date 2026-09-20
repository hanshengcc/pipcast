@echo off
rem PipCast Local Studio Launcher for Windows
cd /d "%~dp0\.."

echo ==================================================
echo   PipCast Local Studio Server (Windows)
echo   Local URL: http://localhost:8000
echo ==================================================

start "" "http://localhost:8000"

python -m http.server 8000
if %ERRORLEVEL% NEQ 0 (
    echo Python not found, trying py...
    py -m http.server 8000
)
pause
