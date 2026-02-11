@echo off
echo ===================================
echo  Setup ngrok Authentication
echo ===================================
echo.
echo Step 1: Get your authtoken
echo 1. Go to: https://dashboard.ngrok.com/signup
echo 2. Sign up (it's free!)
echo 3. Go to: https://dashboard.ngrok.com/get-started/your-authtoken
echo 4. Copy your authtoken
echo.
set /p token="Paste your authtoken here: "
echo.
echo Setting up ngrok...
ngrok authtoken %token%
echo.
echo ===================================
if %errorlevel% == 0 (
    echo ✅ Success! ngrok is now configured.
    echo.
    echo You can now run: start-public-server.bat
) else (
    echo ❌ Error setting up ngrok.
    echo Please check your authtoken and try again.
)
echo ===================================
pause
