# Run this as Administrator to allow the game server through Windows Firewall

$port = 8080
$ruleName = "Dots and Boxes Game Server"

# Check if running as administrator
if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "⚠️  Please run this script as Administrator!" -ForegroundColor Red
    Write-Host "   Right-click on PowerShell and select 'Run as Administrator'" -ForegroundColor Yellow
    pause
    exit
}

# Remove existing rule if it exists
Remove-NetFirewallRule -DisplayName $ruleName -ErrorAction SilentlyContinue

# Create new inbound rule
New-NetFirewallRule -DisplayName $ruleName -Direction Inbound -LocalPort $port -Protocol TCP -Action Allow

Write-Host "✅ Firewall rule added successfully!" -ForegroundColor Green
Write-Host "   Port $port is now open for incoming connections." -ForegroundColor Green
Write-Host ""
Write-Host "🎮 You can now run start-server.bat and share your IP address with others!" -ForegroundColor Cyan
pause
