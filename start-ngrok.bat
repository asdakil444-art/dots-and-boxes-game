@echo off
echo ===================================
echo  Starting ngrok tunnel...
echo ===================================
echo.
echo Make sure your server is running first!
echo If not, run: start-server.bat
echo.
echo Your public URL will appear below:
echo (Copy the https:// URL and share it!)
echo ===================================
echo.

ngrok http 8080

pause
