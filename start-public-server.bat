@echo off
echo ===================================
echo  Dots and Boxes - Public Server
echo ===================================
echo.
echo Starting local server...
cd /d "C:\Users\Asdak\OneDrive\Desktop\Agent AI Project\my game"

start "Game Server" cmd /k "node server.js"

echo.
echo Waiting for server to start...
timeout /t 3 /nobreak >nul

echo.
echo Starting ngrok tunnel...
echo.
echo Your public URL will appear below:
echo ===================================

ngrok http 8080

pause
