REM System Maintenance and Repair Script
REM This script performs comprehensive system maintenance tasks

REM Use DISM to scan and repair Windows system image
DISM.exe /Online /Cleanup-image /Restorehealth

REM Scan and repair protected system files
sfc /scannow

REM Upgrade all installed packages using Windows Package Manager
winget upgrade --all

REM Flush DNS resolver cache to clear stale entries
ipconfig /flushdns

REM Refresh DNS registration for network adapters
ipconfig /registerdns

REM Release current DHCP IP address configuration
ipconfig /release

REM Renew DHCP IP address configuration
ipconfig /renew

REM Check disk for errors and fix them (requires restart)
chkdsk /f
