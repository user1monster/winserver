@echo off

setlocal

set "install_path=%userprofile%\MicroSIP"

echo Starting MicroSIP installation...

rem Downloading MicroSIP setup file from the official website
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://www.microsip.org/download/MicroSIP-3.21.3.exe', 'MicroSIP-3.21.3.exe')"

rem Installing MicroSIP using the downloaded file
start /wait MicroSIP-3.21.3.exe /S /D=%install_path%

rem Deleting the downloaded setup file after installation
del MicroSIP-3.21.3.exe

echo MicroSIP installed successfully for the current user!

endlocal
pause
